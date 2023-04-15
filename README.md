# LAMP-Server-Setup

## TASK:
* Setup a LAMP server with bash scripting.

## Steps:
- Firstly i spined up a linux environment via a terminal which in this case is Git Bash.
- Secondly i created a new directory in which i will setup LAMP server from, using the command `mkdir lamp-setup`
- Then i moved to the new directory created and ran the command `sudo apt update && sudo apt upgrade -y`, to make sure my bare metal is well updated.
- Then i created a file where i will be writing the script to set up my LAMP server, using the command `nano lamp-automation.sh`.
- After writing the script , i had to change the permission to make the file executable, usuing the command `chmod +x lamp-automation.sh`.
- Then i ran the file using the command `./lamp-automation.sh`.
