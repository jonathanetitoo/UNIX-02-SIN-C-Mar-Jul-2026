sysadmin@localhost:~/Documents$ cd ~ #We changed to directory home                                        
sysadmin@localhost:~$ dd if=/dev/zero of=/tmp/swapex bs=1M count=50  #dd creates a file using specific arguments and outputs the process statistics        
50+0 records in                                                                 
50+0 records out                                                                
52428800 bytes (52 MB) copied, 0.0274415 s, 1.9 GB/s 

sysadmin@localhost:~$ cd ~/Documents  #We changed to out directory Documents                                          
sysadmin@localhost:~/Documents$ mv people.csv Work #With mv we changed the peoples.csv file to Work                          
sysadmin@localhost:~/Documents$ ls Work  #With ls it give us details of out directory and we can see that peoples files was moved                                     
people.csv                                                                      
sysadmin@localhost:~/Documents$ mv numbers.txt letters.txt alpha.txt School #We can see with that command we moved three files  
                                                                                
sysadmin@localhost:~/Documents$ ls School  #We list our files                            
Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt                     
sysadmin@localhost:~/Documents$ ls  #Just we list our files                                          
School           alpha-second.txt  hello.sh      newhome.txt                    
Work             alpha-third.txt   hidden.txt    os.csv                         
adjectives.txt   animals.txt       linux.txt     profile.txt                    
alpha-first.txt  food.txt          longfile.txt  red.txt                        
sysadmin@localhost:~/Documents$ mv animals.txt zoo.txt #We move a file                          
sysadmin@localhost:~/Documents$ ls                                              
School           alpha-second.txt  hidden.txt    os.csv                         
Work             alpha-third.txt   linux.txt     profile.txt                    
adjectives.txt   food.txt          longfile.txt  red.txt                        
alpha-first.txt  hello.sh          newhome.txt   zoo.txt   

sysadmin@localhost:~/Documents$ rm linux.txt   #With the command rm we remove a file                              
sysadmin@localhost:~/Documents$ ls linux.txt     #How can i see we used the ls command and said us that the file doesnt exits                                
ls: cannot access linux.txt: No such file or directory                          
sysadmin@localhost:~/Documents$ rm Work    #We wanted to remove a directory                                    
rm: cannot remove 'Work': Is a directory   #but it doesnt run                                     
sysadmin@localhost:~/Documents$ rm -r Work   #If we wanted to remove a directory we have to use a recursive with -r                                   
sysadmin@localhost:~/Documents$ ls Work     #We used ls                                     
ls: cannot access Work: No such file or directory    #An we can see that we remove a directory

sysadmin@localhost:~/Documents$  cp /etc/passwd .    #With the command cp we copy the passwd file to Documents directory                           
sysadmin@localhost:~/Documents$ grep sysadmin passwd #With grep command we can get detail information about an user specific     
sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash  #We have detail information of sysadmin and passwd we use like an argument

#Regular expressions
#Regular expressions have two types Basic regex is like a standard search tool for finding simple word patterns anywhere.
#Extended regex is an advanced version with extra powers to do smarter searches, like looking for "this or that"

sysadmin@localhost:~/Documents$ grep sysadmin passwd    ##With grep command we can get detail information about an user specific
sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash
sysadmin@localhost:~/Documents$ grep 'root' passwd  #Anchor characters limit search results to specific positions
root:x:0:0:root:/root:/bin/bash
operator:x:1000:37::/root:
sysadmin@localhost:~/Documents$ grep '^root' /etc/passwd
root:x:0:0:root:/root:/bin/bash
sysadmin@localhost:~/Documents$ cat alpha-first.txt   #We can see the file content
A is for Animal
B is for Bear
C is for Cat
D is for Dog
E is for Elephant
F is for Flower
sysadmin@localhost:~/Documents$ grep 'r$' alpha-first.txt  #The letter "r" must appear at the end of the line
B is for Bear
F is for Flower
sysadmin@localhost:~/Documents$ cat red.txt #We can see the content file
red
reef
rot
reeed
rd
rod
roof
reed
root
reel
read
sysadmin@localhost:~/Documents$ grep 'r..f' red.txt #The dot character acts as a wildcard
reef
roof
sysadmin@localhost:~/Documents$ grep 'r..d' red.txt #Matches any four-letter word that starts with r and ends with d
reed
read
sysadmin@localhost:~/Documents$ grep '....' red.txt  #Using four dots matches any four characters in a row
reef
reeed
roof
reed
root
reel
read
sysadmin@localhost:~/Documents$ grep 'r..t' /etc/passwd #Matches the word root anywhere on the line
root:x:0:0:root:/root:/bin/bash
operator:x:1000:37::/root:
sysadmin@localhost:~/Documents$ cat profile.txt #We can see content file
Hello my name is Joe.
I am 37 years old.
3121991
My favorite food is avocados.
I have 2 dogs.
123456789101112
sysadmin@localhost:~/Documents$ grep '[0-9]' profile.txt #To find any line with a number
I am 37 years old.
3121991
I have 2 dogs.
123456789101112
sysadmin@localhost:~/Documents$ grep '[^0-9]' profile.txt #Matches any character that is not a number
Hello my name is Joe.
I am 37 years old.
My favorite food is avocados.
I have 2 dogs.
sysadmin@localhost:~/Documents$ grep '[.]' profile.txt #Inside square brackets, special symbols lose their power
Hello my name is Joe.
I am 37 years old.
My favorite food is avocados.
I have 2 dogs.
sysadmin@localhost:~/Documents$ grep 're*d' red.txt #The * character matches the previous letter zero or more times
red
reeed
rd
reed
sysadmin@localhost:~/Documents$ grep 'r[oe]*d' red.txt #Match any number of o's or e's in any order
red
reeed
rd
rod
reed
sysadmin@localhost:~/Documents$ grep 'ee*' red.txt #Match a literal e, followed by zero or more e's
red
reef
reeed
reed
reel
read

sysadmin@localhost:~$ su -   #We enter like super admin "root"                                                
Password:                                                                       
root@localhost:~#
root@localhost:~# shutdown now  #The shutdown now command initiates an immediate system power-off or halt    
                                                                                
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 11:34 ...         
The system is going down for maintenance NOW! 
                                                                                
root@localhost:~# date   #Displays the current system date and time                                                
Sun May 31 11:34:23 UTC 2026                                                    
root@localhost:~# shutdown 11:35 #shutdown 11:35  #Schedules a system shutdown for a specific time (11:35)                                      
                                                                                
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 11:34 ...                                               
                                                                                
The system is going down for maintenance in 1 minute!                           
shutdown: Unable to shutdown system     
root@localhost:~# shutdown +1 "Goodbye World!"  #Schedules a shutdown in 1 minute and sends a custom broadcast message

Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 11:45 ...                                               
                                                                                
The system is going down for maintenance in 1 minute!                           
Goodbye World!

root@localhost:~# ifconfig  #Displays network interface configuration parameters and current settings
eth0          Link encap:Ethernet  HWaddr 02:42:c0:a8:01:02 
              inet addr:192.168.1.2  Bcast:192.168.1.255  Mask:255.255.255.0
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
              RX packets:19 errors:0 dropped:1 overruns:0 frame:0
              TX packets:2 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:1000 
              RX bytes:1446 (1.4 KB)  TX bytes:176 (176.0 B) 
                                                                                
lo            Link encap:Local Loopback 
              inet addr:127.0.0.1  Mask:255.0.0.0
              inet6 addr: ::1/128 Scope:Host
              UP LOOPBACK RUNNING  MTU:65536  Metric:1
              RX packets:0 errors:0 dropped:0 overruns:0 frame:0
              TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:1000 
              RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
root@localhost:~# ping -c 4 192.168.1.2         #Sends 4 ICMP echo requests to verify network connectivity to the specified IP
PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.                            
64 bytes from 192.168.1.2: icmp_seq=1 ttl=64 time=0.050 ms                      
64 bytes from 192.168.1.2: icmp_seq=2 ttl=64 time=0.031 ms                      
64 bytes from 192.168.1.2: icmp_seq=3 ttl=64 time=0.035 ms                      
64 bytes from 192.168.1.2: icmp_seq=4 ttl=64 time=0.030 ms                      
                                                                                
--- 192.168.1.2 ping statistics ---                                             
4 packets transmitted, 4 received, 0% packet loss, time 3066ms                  
rtt min/avg/max/mdev = 0.030/0.036/0.050/0.010 ms
root@localhost:~# ping -c 4 192.168.1.3         #Attempts to ping an unreachable host to test network error handling
PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.                            
From 192.168.1.2 icmp_seq=1 Destination Host Unreachable                        
From 192.168.1.2 icmp_seq=2 Destination Host Unreachable                        
From 192.168.1.2 icmp_seq=3 Destination Host Unreachable                        
From 192.168.1.2 icmp_seq=4 Destination Host Unreachable                        
                                                                                
--- 192.168.1.3 ping statistics ---                                             
4 packets transmitted, 0 received, +4 errors, 100% packet loss, time 3079ms     
pipe 4                                                                          
root@localhost:~# exit  #Exits the root superuser session and returns to the normal user
logout

sysadmin@localhost:~$ ps        #Displays information about a selection of the active processes in the current terminal
    PID TTY          TIME CMD                                                   
     83 pts/0    00:00:00 bash                                                  
    121 pts/0    00:00:00 ps
sysadmin@localhost:~$ ps -e      #Lists every active process running on the entire system, including system daemons
    PID TTY          TIME CMD                                                   
      1 pts/0    00:00:00 init                                                  
     13 ?        00:00:00 rsyslogd                                              
     17 ?        00:00:00 cron                                                  
     19 ?        00:00:00 sshd                                                  
     36 ?        00:00:00 named                                                 
     73 pts/0    00:00:00 login                                                 
     83 pts/0    00:00:00 bash                                                  
    122 pts/0    00:00:00 ps
sysadmin@localhost:~$ ps -ef     #Displays every active process with a full-format listing, showing ownership and parent-child hierarchies
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 11:22 pts/0    00:00:00 /sbin??? /init
syslog        13       1  0 11:22 ?        00:00:00 /usr/sbin/rsyslogd
root          17       1  0 11:22 ?        00:00:00 /usr/sbin/cron
root          19       1  0 11:22 ?        00:00:00 /usr/sbin/sshd
bind          36       1  0 11:22 ?        00:00:00 /usr/sbin/named -u bind
root          73       1  0 11:22 pts/0    00:00:00 /bin/login -f
sysadmin      83      73  0 11:22 pts/0    00:00:00 -bash
sysadmin     123      83  0 11:57 pts/0    00:00:00 ps -ef

sysadmin@localhost:~$ sudo apt-get update       #Resynchronizes the package index files from their sources via the internet or local repositories
[sudo] password for sysadmin:                                                   
Ign file: amd64/ InRelease                                                      
Ign file: amd64/ Release.gpg                                                    
Ign file: amd64/ Release                                                        
Reading package lists... Done
sysadmin@localhost:~$ sudo apt-get install cowsay       #Installs the cowsay utility using the APT package manager
Reading package lists... Done                                                   
Building dependency tree                                                        
Reading state information... Done                                               
Suggested packages:                                                             
  filters                                                                       
The following NEW packages will be installed:                                   
  cowsay                                                                        
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.                  
Need to get 0 B/18.5 kB of archives.                                            
After this operation, 90.1 kB of additional disk space will be used.            
Selecting previously unselected package cowsay.                                 
(Reading database ... 24300 files and directories currently installed.)         
Preparing to unpack .../cowsay_3.03+dfsg1-6_all.deb ...                         
Unpacking cowsay (3.03+dfsg1-6) ...                                             
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...                           
Setting up cowsay (3.03+dfsg1-6) ...
sysadmin@localhost:~$ cowsay 'NDG Linux Unhatched'   #We just run the command
 _____________________                                                          
< NDG Linux Unhatched >                                                         
 ---------------------                                                          
        \   ^__^                                                                
         \  (oo)\_______                                                        
            (__)\       )\/\                                                    
                ||----w |                                                       
                ||     ||

sysadmin@localhost:~$ sudo apt-get update       #Updates the local package index to fetch the latest software lists
Ign file: amd64/ InRelease                                                      
Ign file: amd64/ Release.gpg                                                    
Ign file: amd64/ Release                                                        
Reading package lists... Done                                                   
sysadmin@localhost:~$  sudo apt-get upgrade     #Upgrades all currently installed packages to their latest available versions
Reading package lists... Done                                                   
Building dependency tree                                                        
Reading state information... Done                                               
Calculating upgrade... Done                                                     
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
sysadmin@localhost:~$ sudo apt-get purge cowsay       #Removes the package along with all its configuration files
Reading package lists... Done                                                   
Building dependency tree                                                        
Reading state information... Done                                               
The following packages will be REMOVED:                                         
  cowsay* 0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.                  
After this operation, 90.1 kB disk space will be freed.                         
Do you want to continue? [Y/n] y                                                
(Reading database ... 24364 files and directories currently installed.)         
Removing cowsay (3.03+dfsg1-6) ...                                              
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...


sysadmin@localhost:~$ passwd        #Changes the password for the current user safely by validating old and new credentials
Changing password for sysadmin.                                                 
(current) UNIX password:                                                       
Enter new UNIX password:                                                       
Retype new UNIX password:                                                       
passwd: password updated successfully
sysadmin@localhost:~$ passwd -S sysadmin        #Displays password status information for the specified user account
sysadmin P 12/20/2017 0 99999 7 -1
sysadmin@localhost:~$ su root        #Switches to the root user account while preserving the current environment variables
Password:
root@localhost:~# passwd sysadmin        #Changes the password for another user without requiring their current password
Enter new UNIX password:                                                        
Retype new UNIX password:                                                       
passwd: password updated successfully                                           
root@localhost:~# exit  #Exits the root session and returns to the normal user shell
exit

sysadmin@localhost:~/Documents$ cat food.txt                                    
Food is good.                                                                   
sysadmin@localhost:~/Documents$  cat food.txt > newfile1.txt     #Redirects the output of cat to create or overwrite newfile1.txt
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
Food is good.                                                                   
sysadmin@localhost:~/Documents$  echo "Hello"     #Prints text directly to the standard output
Hello                                                                           
sysadmin@localhost:~/Documents$  cat newfile1.txt                               
Food is good.                                                                   
sysadmin@localhost:~/Documents$ echo "I like food." > newfile1.txt      #Overwrites the existing content of newfile1.txt with new text
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
I like food.                                                                   
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
I like food.                                                                   
sysadmin@localhost:~/Documents$  echo "This food is good." >> newfile1.txt      #Appends new text to the end of newfile1.txt without overwriting
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
I like food.                                                                    
This food is good.

#vi Editor
It is the universal text editor in Linux. It does not use a mouse and operates through 3 modes (always use Esc to return to the main mode).
sysadmin@localhost:~/Documents$ cd ..           #Moves up one directory level to the user's home folder
sysadmin@localhost:~$ vi newfile.txt   #Opens or creates a file named newfile.txt using the vi text editor

