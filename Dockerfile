# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install dependencies
RUN apt-get update && \
    apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Start and enable Apache at container startup
RUN service apache2 start && update-rc.d apache2 enable

# Secure MySQL installation (configure a password for root)
RUN echo "mysql-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD" | debconf-set-selections && \
    echo "mysql-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" | debconf-set-selections && \
    apt-get install -y mysql-server && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Install PHP and its dependencies
RUN apt-get install -y php libapache2-mod-php php-mysql && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Copy your script into the container
COPY LAMP-automation.sh /LAMP-automation.sh

# Make your script executable
RUN chmod +x /LAMP-automation.sh

# Start Apache and run your script
CMD ["/bin/bash", "/LAMP-automation.sh"]
