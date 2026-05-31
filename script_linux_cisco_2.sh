cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing access to files and subdirectories stored there.

mv people.csv Work
# Moves the file people.csv from the current directory to the Work directory without changing its contents.

ls Work
# Displays all files and directories contained in the Work directory so the user can verify that people.csv was moved successfully.

##people.csv

mv numbers.txt letters.txt alpha.txt School
# Moves the files numbers.txt, letters.txt, and alpha.txt from the current directory into the School directory.

ls School
# Lists the contents of the School directory, showing both files and subdirectories currently stored there.

##Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt

ls
# Displays all visible files and directories in the current working directory.

##Work             alpha-third.txt   hidden.txt    os.csv
##adjectives.txt   animals.txt       linux.txt     profile.txt
##alpha-first.txt  food.txt          longfile.txt  red.txt

mv animals.txt zoo.txt
# Renames the file animals.txt to zoo.txt while keeping it in the same directory.

ls
# Displays the contents of the current directory again to confirm that the file has been successfully renamed.

##School           alpha-second.txt  hidden.txt    os.csv
##Work             alpha-third.txt   linux.txt     profile.txt
##adjectives.txt   food.txt          longfile.txt  red.txt
##alpha-first.txt  hello.sh          newhome.txt   zoo.txt

cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing the user to work with files and directories stored there.

rm linux.txt
# Permanently removes the file linux.txt from the current directory.

ls linux.txt
# Attempts to display information about linux.txt to verify whether the file still exists.
##ls: cannot access linux.txt: No such file or directory

rm Work
# Attempts to remove the directory named Work using the rm command without recursive options.
##rm: cannot remove 'Work': Is a directory

rm -r Work
# Recursively removes the Work directory and all files and subdirectories contained within it.

ls Work
# Checks whether the Work directory still exists after the deletion process.
##ls: cannot access Work: No such file or directory

cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing access to files stored in that location.

cp /etc/passwd .
# Copies the passwd file from the /etc directory to the current directory. The dot (.) represents the current working directory.

grep sysadmin passwd
# Searches the passwd file for lines containing the word "sysadmin" and displays any matching entries.
##sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash

cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing access to files stored in that location.

grep sysadmin passwd
# Searches the file passwd for lines containing the word "sysadmin" and displays any matching results.

##sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash

grep 'root' passwd
# Searches the passwd file for all occurrences of the word "root" and displays the matching lines.

##root:x:0:0:root:/root:/bin/bash
##operator:x:1000:37::/root:

grep '^root' /etc/passwd
# Searches the /etc/passwd file for lines that begin with the word "root" using the ^ anchor character.

##root:x:0:0:root:/root:/bin/bash

cat alpha-first.txt
# Displays the contents of the alpha-first.txt file on the terminal.

##A is for Animal
##B is for Bear
##C is for Cat
##D is for Dog
##E is for Elephant
##F is for Flower

grep 'r$' alpha-first.txt
# Searches for lines that end with the letter "r" using the $ anchor character.

##B is for Bear
##F is for Flower

cat red.txt
# Displays the contents of the red.txt file.

##Red
##Reef
##Rot
##Reeed
##Rd
##Rod
##Roof
##Reed
##Root
##reel
##read

grep 'r..f' red.txt
# Searches for lines containing the letter "r" followed by any two characters and ending with the letter "f".

##reef
##roof

grep 'r..d' red.txt
# Searches for four-letter words that start with "r", contain any two characters, and end with "d".

##reed
##read

grep '....' red.txt
# Searches for lines containing at least four consecutive characters of any type.

##reef
##reeed
##roof
##reed
##root
##reel
##read

grep 'r..t' /etc/passwd
# Searches the /etc/passwd file for patterns that start with "r", contain any two characters, and end with "t".

##root:x:0:0:root:/root:/bin/bash
##operator:x:1000:37::/root:

cat profile.txt
# Displays the contents of the profile.txt file.

##Hello my name is Joe.
##I am 37 years old.
##3121991
##My favorite food is avocados.
##I have 2 dogs.
##123456789101112

grep '[0-9]' profile.txt
# Searches for lines containing at least one numeric digit from 0 to 9.

##I am 37 years old.
##3121991
##I have 2 dogs.
##123456789101112

grep '[^0-9]' profile.txt
# Searches for lines containing at least one character that is not a numeric digit.

##Hello my name is Joe.
##I am 37 years old.
##My favorite food is avocados.
##I have 2 dogs.

grep '[.]' profile.txt
# Searches for lines containing the literal period character (.).

##Hello my name is Joe.
##I am 37 years old.
##My favorite food is avocados.
##I have 2 dogs.

cat red.txt
# Displays the contents of the red.txt file.

grep 're*d' red.txt
# Searches for patterns where the letter "e" may appear zero or more times between "r" and "d".

##red
##reeed
##rd
##reed

grep 'r[oe]*d' red.txt
# Searches for patterns where the letters "o" or "e" may appear zero or more times between "r" and "d".

##red
##reeed
##rd
##rod
##reed

grep 'z*' red.txt
# Searches using a pattern where the letter "z" can appear zero or more times, causing every line to match.

##red
##reef
##rot
##reeed
##rd
##rod
##roof
##reed
##root
##reel
##read

grep 'e*' red.txt
# Searches using a pattern where the letter "e" can appear zero or more times, resulting in all lines being matched.

##red
##reef
##rot
##reeed
##rd
##rod
##roof
##reed
##root
##reel
##read

grep 'ee*' red.txt
# Searches for lines containing at least one "e" followed by zero or more additional "e" characters.

##red
##reef
##reeed
##reed
##reel
##read

su -
# Switches to the root user account and loads the root user's login environment, providing full administrative privileges.

##Password:
##root@localhost:~#

shutdown now
# Initiates an immediate system shutdown process and notifies all logged-in users that the system is going down for maintenance.

Broadcast message from sysadmin@localhost
##The system is going down for maintenance NOW!

date
# Displays the current system date and time, including the day of the week, month, time, time zone, and year.

##Sun May 31 21:48:43 UTC 2026

shutdown 01:51
# Schedules the system to shut down at the specified time (01:51) and broadcasts a warning message to all users.

Broadcast message from sysadmin@localhost
##The system is going down for maintenance in 1 minute!

Broadcast message from sysadmin@localhost
##The system is going down for maintenance NOW!

shutdown +1 "Goodbye World!"
# Schedules a shutdown one minute from now and sends a custom message to all logged-in users.

Broadcast message from sysadmin@localhost
##The system is going down for maintenance in 1 minute!
##Goodbye World!

##shutdown: Unable to shutdown system

Broadcast message from sysadmin@localhost
##The system is going down for maintenance NOW!
##Goodbye World!

ifconfig
# Displays the current network configuration of all available network interfaces, including IP addresses, subnet masks, hardware addresses, and interface status.

##eth0      Link encap:Ethernet  HWaddr 02:42:c0:a8:01:02
##inet addr:192.168.1.2  Bcast:192.168.1.255  Mask:255.255.255.0
##UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
##RX packets:56 errors:0 dropped:0 overruns:0 frame:0
##TX packets:59 errors:0 dropped:0 overruns:0 carrier:0
##...

ping -c 4 192.168.1.2
# Sends four ICMP echo requests to the local network interface to verify connectivity and measure network response times.

##PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.
##64 bytes from 192.168.1.2: icmp_seq=1 ttl=64 time=0.115 ms
##64 bytes from 192.168.1.2: icmp_seq=2 ttl=64 time=0.090 ms
##64 bytes from 192.168.1.2: icmp_seq=3 ttl=64 time=0.094 ms
##64 bytes from 192.168.1.2: icmp_seq=4 ttl=64 time=0.121 ms
##4 packets transmitted, 4 received, 0% packet loss

ping -c 4 192.168.1.3
# Sends four ICMP echo requests to the host with IP address 192.168.1.3 to test whether it is reachable on the network.

##PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.
##From 192.168.1.2 icmp_seq=1 Destination Host Unreachable
##From 192.168.1.2 icmp_seq=2 Destination Host Unreachable
##From 192.168.1.2 icmp_seq=3 Destination Host Unreachable
##From 192.168.1.2 icmp_seq=4 Destination Host Unreachable
##4 packets transmitted, 0 received, +4 errors, 100% packet loss
##pipe 4

exit
# Terminates the current root session and returns to the previous user account.

##logout

ps
# Displays the processes currently running in the active terminal session, including their process IDs and execution times.

##PID TTY          TIME CMD
##87 pts/0    00:00:00 bash
##142 pts/0   00:00:00 ps

ps -e
# Displays all running processes on the system, regardless of which user or terminal started them.

##PID TTY          TIME CMD
##1 pts/0     00:00:00 init
##33 ?        00:00:00 rsyslogd
##37 ?        00:00:00 cron
##39 ?        00:00:00 sshd
##56 ?        00:00:00 named
##77 pts/0    00:00:00 login
##87 pts/0    00:00:00 bash
##143 pts/0   00:00:00 ps

ps -ef
# Displays a detailed list of all running processes, including the user, process ID, parent process ID, start time, and command used to launch each process.

##UID          PID    PPID  C STIME TTY          TIME CMD
##root           1       0  0 20:11 pts/0    00:00:00 /sbin??? /init
##syslog        33       1  0 20:11 ?        00:00:00 /usr/sbin/rsyslogd
##root          37       1  0 20:11 ?        00:00:00 /usr/sbin/cron
##root          39       1  0 20:11 ?        00:00:00 /usr/sbin/sshd
##bind          56       1  0 20:11 ?        00:00:00 /usr/sbin/named -u bind
##root          77       1  0 20:11 pts/0    00:00:00 /bin/login -f
##sysadmin      87      77  0 20:11 pts/0    00:00:00 -bash
##sysadmin     144      87  0 21:59 pts/0    00:00:00 ps -ef

sudo apt-get update
# Updates the local package index by downloading the latest information about available software packages from configured repositories.

##Reading package lists... Done

apt-cache search cow
# Searches the package database for software packages whose names or descriptions contain the word "cow".

##cowsay - configurable talking cow

sudo apt-get install cowsay
# Downloads and installs the cowsay package along with any required dependencies on the system.

##The following NEW packages will be installed:
##cowsay
##Setting up cowsay (3.03+dfsg1-6) ...

cowsay 'NDG Linux Unhatched'
# Runs the cowsay program and displays the specified text inside a speech bubble generated by an ASCII-art cow.

## _____________________
##< NDG Linux Unhatched >
## ---------------------
##        \   ^__^
##         \  (oo)\_______
##            (__)\       )\/\
##                ||----w |
##                ||     ||

sudo apt-get update
# Refreshes the package index to ensure the system has the latest information about available software and updates.

##Reading package lists... Done

sudo apt-get upgrade
# Upgrades all installed packages to their latest available versions without removing existing packages.

##0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

sudo apt-get purge cowsay
# Completely removes the cowsay package from the system, including its configuration files.

##The following packages will be REMOVED:
##cowsay*
##Removing cowsay (3.03+dfsg1-6) ...

passwd
# Attempts to change the password of the currently logged-in user by prompting for the current and new passwords.

##Changing password for sysadmin.
##passwd: Authentication token manipulation error
##passwd: password unchanged

passwd -S sysadmin
# Displays the password status information for the user sysadmin, including password status and aging details.

##sysadmin P 12/20/2017 0 99999 7 -1

su root
# Switches to the root user account after successful authentication, providing administrative privileges.

##Password:

passwd sysadmin
# Changes the password for the user sysadmin while logged in as the root user.

##Enter new UNIX password:
##Retype new UNIX password:
##passwd: password updated successfully

exit
# Terminates the current root session and returns to the previous user session.

##exit

cd ~/Documents
# Changes the current working directory to the user's Documents folder.

cat food.txt
# Displays the contents of the file food.txt on the terminal.

##Food is good.

cat food.txt > newfile1.txt
# Copies the contents of food.txt into newfile1.txt, creating the file if it does not already exist.

cat newfile1.txt
# Displays the contents of the file newfile1.txt.

##Food is good.

echo "Hello"
# Prints the specified text to the terminal.

##Hello

cat newfile1.txt
# Displays the current contents of the file newfile1.txt.

##Food is good.

echo "I like food." > newfile1.txt
# Writes the specified text to newfile1.txt, replacing any existing content in the file.

cat newfile1.txt
# Displays the updated contents of the file newfile1.txt.

##I like food.

echo "This food is good." >> newfile1.txt
# Appends the specified text to the end of newfile1.txt without overwriting the existing content.

cat newfile1.txt
# Displays the final contents of the file after the new text has been appended.

##I like food.
##This food is good.

vi newfile.txt
# Opens the file newfile.txt in the Vi text editor, allowing the user to create, view, or modify its contents.

Everything is already done.
/workspaces/UNIX-02-SIN-C-Mar-Jul-2026/image.png