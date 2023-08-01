# Setting up LAMP (Linux, Apache, MySQL, PHP) Stack on Ubuntu

This script automates the process of setting up a LAMP (Linux, Apache, MySQL, PHP) stack on an Ubuntu system. It installs the necessary components and configurations to run a web server with PHP support and a MySQL database.

## Prerequisites

Before running the script, ensure you have the following:

- An Ubuntu-based system (tested on Ubuntu 18.04 and later versions).
- Administrative privileges (sudo access) to install packages and configure services.

## How to Use

1. Copy the entire content of the script into a new file (e.g., `setup-lamp.sh`) on your Ubuntu system.

2. Open a terminal and navigate to the directory where the script file is located.

3. Make the script executable using the following command:

   ```bash
   chmod +x setup-lamp.sh
   ```

4. Execute the script with administrative privileges:

   ```bash
   sudo ./setup-lamp.sh
   ```

## What the Script Does

1. **Update Package Lists**:
   It updates the package lists from the Ubuntu repositories to ensure the latest versions are available for installation.

2. **Install Apache Web Server**:
   The script installs Apache web server, a popular open-source web server that serves HTTP content.

3. **Start and Enable Apache to Run at Boot**:
   The script starts Apache and enables it to automatically start at system boot time.

4. **Install MySQL Server**:
   It installs MySQL server, a widely-used relational database management system, which will be used to store and manage data for web applications.

5. **Secure MySQL Installation**:
   Note: The secure installation prompt is commented out in the script (with a # prefix). If you want to secure your MySQL installation by setting a root password and other security options, you can uncomment the relevant lines and follow the interactive prompt.

6. **Install PHP and Its Dependencies**:
   The script installs PHP and its required modules, along with the PHP module for Apache, allowing PHP code to be executed by the web server.

7. **Restart Apache**:
   It restarts the Apache web server to apply the changes made by the PHP installation.

8. **Display Installed Versions**:
   The script shows the versions of Apache, MySQL, and PHP that have been installed on the system.

9. **Display MySQL Root Password** (commented out):
   The script includes a command to display the MySQL root password, which is commented out by default. Uncomment it if you want to see the root password for MySQL.

10. **Display PHP Info Page** (commented out):
    An info.php file is created, which contains PHP configuration details. The script includes a command to display the URL where you can access this page on your local web server. This line is commented out by default, but you can uncomment it to access the PHP info page.

## Note

- The script is intended for use on Ubuntu-based systems and may not work on other Linux distributions without modification.

- It's advisable to uncomment and run the `sudo mysql_secure_installation` command to secure your MySQL installation by setting the root password and other security options.

- The script does not handle all possible configuration scenarios. If you have specific requirements, additional configurations may be needed.

- Make sure to review and understand the script content before running it, especially when uncommenting lines that could potentially modify or expose sensitive information.
