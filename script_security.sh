[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id In Linux, the system doesn't actually care about the name "root" or "nobody." It identifies everyone by a number called the User ID (UID)
uid=0(root) gid=0(root) grupos=0(root)

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groups In Linux, the groups command is my way of seeing which "clubs" my user belongs to. It tells me what permissions I have across the system by showing my Group IDs (GID)
root

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # cat /etc/passwd In my Linux journey, running cat /etc/passwd is like opening the master directory of the system. It’s the first place I go to understand how users and service accounts are structured.
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:997:997:systemd Network Management:/:/usr/sbin/nologin
debian-tor:x:100:101::/var/lib/tor:/bin/false
tcpdump:x:996:996:tcpdump:/nonexistent:/usr/sbin/nologin

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # touch test.txt Since test.txt didn't exist before, the system did two things: It created a new, empty file named test.txt. It assigned me (root, UID 0) as the owner and my primary group (root, GID 0) as the group owner

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la When I run ls -la, I am asking the system for the "Full Disclosure" of the current directory. This is where I can truly see the results of my previous actions—like the touch test.txt command—and verify the security structure of my environment.
total 68
drwxrwxrwx+ 4 root root  4096 may  8 14:40 .
drwxr-xrwx+ 4 root root  4096 may  8 14:36 ..
drwxrwxrwx+ 2 root root  4096 may  8 14:36 .devcontainer
drwxrwxrwx+ 7 root root  4096 may  8 14:38 .git
-rw-rw-rw-  1 root root  4688 may  8 14:36 .gitignore
-rw-rw-rw-  1 root root 34523 may  8 14:36 LICENSE
-rw-rw-rw-  1 root root    53 may  8 14:36 README.md
-rw-rw-rw-  1 root root  1207 may  8 14:40 script_security.sh
-rw-rw-rw-  1 root root     0 may  8 14:40 test.txt

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # cat /etc/group | head -10 By running cat /etc/group | head -10, I’m looking at the counterpart to the /etc/passwd file. While /etc/passwd tells me who the users are, this file defines the Groups (the "clubs") that exist in the system. Using head -10 allows me to focus on the first ten entries, which are usually the most important system-defined groups.
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groups $USER By running groups $USER, I am performing a specific query to see exactly which privileges are attached to my current session identity. In Linux, $USER is an environment variable that automatically holds the name of the user I am currently logged in as. By passing it to the groups command, I’m asking the system: "Show me every single access level granted to me right now."
root

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # id -u By running id -u, I am stripping away all the fluff and asking the system for the one thing that truly matters to the Linux kernel: my numerical User ID.
0
[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # id -g group ID principal 
0
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id -G By running id -G, I am asking the system to show me the complete list of all Group IDs (both primary and secondary) that I belong to, but in their raw numerical form.
0

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # mkdir ~/proyecto_unix/ By running mkdir ~/proyecto_unix/, I have officially moved from inspecting the system to building my own workspace.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la ~/proyecto_unix/ By running ls -la ~/proyecto_unix/, I am taking a look inside my newly created folder to verify its contents and hidden properties. Even though I just created the folder and haven't put any files in it yet, the output tells a very interesting story about how Linux manages directories.
total 8
drwxr-xr-x 2 root root 4096 may  8 15:06 .
drwx------ 1 root root 4096 may  8 15:06 ..
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groupadd desarrolladores By running groupadd desarrolladores, I am taking the first step toward access management. Instead of just operating as a solo user, I am creating a structured environment where multiple people could eventually work together.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groupadd -g 2000 operaciones By running groupadd -g 2000 operaciones, I am demonstrating advanced control over the system's group management. Instead of letting Linux pick a random number, I am manually assigning a specific GID.

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # groupadd --system servicios_web By running groupadd --system servicios_web, I am making a clear distinction between human roles and system processes. This isn't just a group for people; it’s a "backstage" group for the services that keep my project running.

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # grep -E "desarroladores|operaiones|servicios_web" /etc/group Instead of reading the entire /etc/group file (which may have 50 or 100 boring lines), we use this command to extract only the information we are interested in at once.
servicios_web:x:995:

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # grep -E "GIG_MIN|GID_MAX|SYS_GID" /etc/login.defs While `/etc/group` shows us the groups that already exist, the `/etc/login.defs` file dictates the rules for future groups. Looking up these variables is like consulting the instruction manual the system uses to assign numbers to new groups.
GID_MAX                 60000
#SYS_GID_MIN              101
#SYS_GID_MAX              999
SUB_GID_MAX             600100000              

#Create groups with addgroup
[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # addgroup diseno
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # addgroup --gid 2100 marketing
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # addgroup --system cache_web
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # grep -E "diseno|marketing|cache_web" /etc/group
diseno:x:1001:
marketing:x:2100:
cache_web:x:102:

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # usermod -aG desarrolladores root With this command, you've just performed a strategic self-promotion. Although as root you already have absolute power, technically you're now also an official member of the "development team".

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # usermod -aG diseno root This is used to modify an existing user (in this case, the root superuser) to give them a new "identity" or group membership. The key is the combination of the -a (for append) and -G (for groups) flags, which together allow you to add the user to a new subgroup called design without removing them from the groups they already belonged to (such as developers or operations).

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # adduser root marketing This command adds the user 'root' to the 'marketing' group. By doing this, the root user will inherit any file permissions or access rights specifically assigned to the marketing group.

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id root When you run the command id root, the system displays the identity information for the root user. This includes the User ID (UID), the primary Group ID (GID), and any supplementary groups the user belongs to.
uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores),1001(diseno),2100(marketing)

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # grep root /etc/group Running grep root /etc/group searches the /etc/group file for any line containing the word "root". This file is the system's database for defining which users belong to which groups.
root:x:0:
desarrolladores:x:1000:root
diseno:x:1001:root
marketing:x:2100:root

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groupadd grupo_temporal The command groupadd grupo_temporal creates a new group on your Linux system.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # usermod -aG grupo_temporal root This command appends the root user to the 'grupo_temporal' group. Using the -a flag ensures that the user stays in all their current groups while gaining membership in the new one.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id root
uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores),1001(diseno),2100(marketing),2101(grupo_temporal)

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # usermod -G desarrolladores root This removes all child groups except developers.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id root
uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores)

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # usermod -aG diseno,marketing,grupo_temporal root This command adds the root user to multiple groups simultaneously (diseno, marketing, and grupo_temporal). By using the -aG flags, you are ensuring that root's existing group memberships are preserved while adding these three new ones.
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id root
uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores),1001(diseno),2100(marketing),2101(grupo_temporal)

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # ls -la ~/lab_chgrp/proyectos/      
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:58 app.py
-rw-r--r-- 1 root root    0 may 11 14:58 config.json

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # ls -la ~/lab_chgrp/reportes/ 
total 8
drwxr-xr-x 2 root root 4096 may 11 14:58 .
drwxr-xr-x 5 root root 4096 may 11 14:57 ..
-rw-r--r-- 1 root root    0 may 11 14:58 informe.txt

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # chgrp desarrolladores ~/lab_chgrp/proyectos/app.py
                                                                                                                                                                           
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la ~/lab_chgrp/proyectos/                     
total 8
drwxr-xr-x 2 root root            4096 may 11 14:58 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root root               0 may 11 14:58 config.json

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # chgrp diseno ~/lab_chgrp/proyectos/config.json ~/lab_chgrp/reportes/informe.txt This command changes the group ownership of the specified files to the 'diseno' group. It allows users who are members of the 'diseno' group to interact with these files based on the group permissions (read, write, or execute) defined for those files.
                                                                                                                                                                                                                           
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la ~/lab_chgrp/proyectos/
total 8
drwxr-xr-x 2 root root            4096 may 11 14:58 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:58 app.py
-rw-r--r-- 1 root diseno             0 may 11 14:58 config.json
                                                                                                                                                                                                                           
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la ~/lab_chgrp/reportes/ 
total 8
drwxr-xr-x 2 root root   4096 may 11 14:58 .
drwxr-xr-x 5 root root   4096 may 11 14:57 ..
-rw-r--r-- 1 root diseno    0 may 11 14:58 informe.txt

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # chgrp -R desarrolladores ~/lab_chgrp/scripts/ recursively changes the entire directory
                                                                                                                                                                                                                                                                      
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -laR ~/lab_chgrp/scripts/
/root/lab_chgrp/scripts/:
total 8
drwxr-xr-x 2 root desarrolladores 4096 may 11 14:58 .
drwxr-xr-x 5 root root            4096 may 11 14:57 ..
-rw-r--r-- 1 root desarrolladores    0 may 11 14:58 deploy.sh

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # chgrp -Rv diseno ~/lab_chgrp/scripts/ I executed a recursive group ownership change on the scripts directory. By using the verbose flag (-v), the system confirmed that the group was successfully updated from 'desarrolladores' to 'diseno' for both the parent directory and the deploy.sh script.                  

cambiado el grupo de '/root/lab_chgrp/scripts/deploy.sh' de desarrolladores a diseno
cambiado el grupo de '/root/lab_chgrp/scripts/' de desarrolladores a diseno