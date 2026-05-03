cd calculadora 
# Change directory using a relative path
cd /workspace/Unix-02-SIN-C-Mar-Jul-2026/calculadora
#Change directory using an absolute path
ls -lai
# Lists files including hidden ones, with inode and detailed information
ls -l -a -i
# Shows detailed metadata of the current directory (permissions, size, timestamps)
stat .
# Shows detailed metadata of the current directory (permissions, size, timestamps)
cd 
# change directory  to home directory from any location of operative
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
# change directory to home directory using obsoluty route
cd ~
# Go to home directory using ~ shortcut
cd $HOME
# change directory to home using enviroment variable
pwd
#Prints the current working directory
whoami
# Displays the current logged-in user
ls -lt
#Lists files sorted by last modification time (newest first)
man ls
#Opens the manual page for the 'ls' command
ls /dev | head -5
#Lists the first 5 entries inside /dev directory (useful for large outputs)
ls /etc | tail -5
#Lists the last 5 entries inside /etc directory