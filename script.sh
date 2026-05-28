ls -a
#This is the short option form of the command. It tells ls to list all files, including hidden ones
.  ..  .git  .gitignore  LICENSE  README.md  script.sh
ls --all
#This is the long option form. It does exactly the same thing as ls -a.
.  ..  .git  .gitignore  LICENSE  README.md  script.sh
ls -h
#Human‑readable sizes. By itself, it has no visible effect because it only works with -l.
LICENSE  README.md  script.sh
ls -l -ah
# Lists all files (including hidden) in long format with details (permissions, owner, size, date). The -h makes sizes human‑readable.
total 64K
drwxrwxrwx+ 3 codespace root      4.0K Apr 17 14:18 .
drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:17 ..
drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:21 .git
-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:17 .gitignore
-rw-rw-rw-  1 codespace root       34K Apr 17 14:17 LICENSE
-rw-rw-rw-  1 codespace root        53 Apr 17 14:17 README.md
-rw-rw-rw-  1 codespace codespace  315 Apr 17 14:25 script.sh

ls -lah
# Same as ls -l -ah. The order of options doesn’t matter.
total 64K
drwxrwxrwx+ 3 codespace root      4.0K Apr 17 14:18 .
drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:17 ..
drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:21 .git
-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:17 .gitignore
-rw-rw-rw-  1 codespace root       34K Apr 17 14:17 LICENSE
-rw-rw-rw-  1 codespace root        53 Apr 17 14:17 README.md
-rw-rw-rw-  1 codespace codespace  740 Apr 17 14:26 script.sh

mkdir -- -rf
#Creates a directory literally named -rf. The -- tells mkdir to stop interpreting options, so -rf is treated as a directory name, not as flags.


ls --help
#Displays the help manual for ls, listing all available options and their descriptions.
List information about the FILEs (the current directory by default).
Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

Mandatory arguments to long options are mandatory for short options too.
  -a, --all                  do not ignore entries starting with .
  -A, --almost-all           do not list implied . and ..
      --author               with -l, print the author of each file
  -b, --escape               print C-style escapes for nongraphic characters
      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;
                             e.g., '--block-size=M'; see SIZE format below

  -B, --ignore-backups       do not list implied entries ending with ~
  -c                         with -lt: sort by, and show, ctime (time of last
                             change of file status information);
                             with -l: show ctime and sort by name;
                             otherwise: sort by ctime, newest first

  -C                         list entries by columns
      --color[=WHEN]         color the output WHEN; more info below
  -d, --directory            list directories themselves, not their contents
  -D, --dired                generate output designed for Emacs' dired mode
  -f                         list all entries in directory order
  -F, --classify[=WHEN]      append indicator (one of */=>@|) to entries WHEN
      --file-type            likewise, except do not append '*'
      --format=WORD          across -x, commas -m, horizontal -x, long -l,
                             single-column -1, verbose -l, vertical -C

      --full-time            like -l --time-style=full-iso
  -g                         like -l, but do not list owner
      --group-directories-first
                             group directories before files;
                             can be augmented with a --sort option, but any
                             use of --sort=none (-U) disables grouping

  -G, --no-group             in a long listing, don't print group names
  -h, --human-readable       with -l and -s, print sizes like 1K 234M 2G etc.
      --si                   likewise, but use powers of 1000 not 1024
  -H, --dereference-command-line
                             follow symbolic links listed on the command line
      --dereference-command-line-symlink-to-dir
                             follow each command line symbolic link
                             that points to a directory

      --hide=PATTERN         do not list implied entries matching shell PATTERN
                             (overridden by -a or -A)

      --hyperlink[=WHEN]     hyperlink file names WHEN
      --indicator-style=WORD
                             append indicator with style WORD to entry names:
                             none (default), slash (-p),
                             file-type (--file-type), classify (-F)

  -i, --inode                print the index number of each file
  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN
  -k, --kibibytes            default to 1024-byte blocks for file system usage;
                             used only with -s and per directory totals

  -l                         use a long listing format
  -L, --dereference          when showing file information for a symbolic
                             link, show information for the file the link
                             references rather than for the link itself

  -m                         fill width with a comma separated list of entries
  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs
  -N, --literal              print entry names without quoting
  -o                         like -l, but do not list group information
  -p, --indicator-style=slash
                             append / indicator to directories
  -q, --hide-control-chars   print ? instead of nongraphic characters
      --show-control-chars   show nongraphic characters as-is (the default,
                             unless program is 'ls' and output is a terminal)

  -Q, --quote-name           enclose entry names in double quotes
      --quoting-style=WORD   use quoting style WORD for entry names:
                             literal, locale, shell, shell-always,
                             shell-escape, shell-escape-always, c, escape
                             (overrides QUOTING_STYLE environment variable)

  -r, --reverse              reverse order while sorting
  -R, --recursive            list subdirectories recursively
  -s, --size                 print the allocated size of each file, in blocks
  -S                         sort by file size, largest first
      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),
                             time (-t), version (-v), extension (-X), width

      --time=WORD            select which timestamp used to display or sort;
                               access time (-u): atime, access, use;
                               metadata change time (-c): ctime, status;
                               modified time (default): mtime, modification;
                               birth time: birth, creation;
                             with -l, WORD determines which time to show;
                             with --sort=time, sort by WORD (newest first)

      --time-style=TIME_STYLE
                             time/date format with -l; see TIME_STYLE below
  -t                         sort by time, newest first; see --time
  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8
  -u                         with -lt: sort by, and show, access time;
                             with -l: show access time and sort by name;
                             otherwise: sort by access time, newest first

  -U                         do not sort; list entries in directory order
  -v                         natural sort of (version) numbers within text
  -w, --width=COLS           set output width to COLS.  0 means no limit
  -x                         list entries by lines instead of by columns
  -X                         sort alphabetically by entry extension
  -Z, --context              print any security context of each file
      --zero                 end each output line with NUL, not newline
  -1                         list one file per line
      --help        display this help and exit
      --version     output version information and exit

The SIZE argument is an integer and optional unit (example: 10K is 10*1024).
Units are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).
Binary prefixes can be used, too: KiB=K, MiB=M, and so on.

The TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.
FORMAT is interpreted like in date(1).  If FORMAT is FORMAT1<newline>FORMAT2,
then FORMAT1 applies to non-recent files and FORMAT2 to recent files.
TIME_STYLE prefixed with 'posix-' takes effect only outside the POSIX locale.
Also the TIME_STYLE environment variable sets the default style to use.

The WHEN argument defaults to 'always' and can also be 'auto' or 'never'.

Using color to distinguish file types is disabled both by default and
with --color=never.  With --color=auto, ls emits color codes only when
standard output is connected to a terminal.  The LS_COLORS environment
variable can change the settings.  Use the dircolors(1) command to set it.

Exit status:
 0  if OK,
 1  if minor problems (e.g., cannot access subdirectory),
 2  if serious trouble (e.g., cannot access command-line argument).

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/ls>
or available locally via: info '(coreutils) ls invocation'

man ls
#To be able to search for anything you have to put "/" and to exit you put "q" for example /all  and q

man git -clone
#Opens the manual page for Git, specifically the section about the clone command.

ls -l
#ls -list
#-=type of file
#symbolich link
total 108
drwxrwxrwx+ 2 codespace codespace  4096 Apr 17 14:31  -rf
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:17  LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 17 14:17  README.md
-rw-rw-rw-  1 codespace codespace 25525 Apr 17 14:39 'image copy 2.png'
-rw-rw-rw-  1 codespace codespace 18534 Apr 17 14:37 'image copy.png'
-rw-rw-rw-  1 codespace codespace  1331 Apr 17 14:32  image.png
-rw-rw-rw-  1 codespace codespace  9807 Apr 17 14:48  script.sh

chmod +x script.sh
#Adds the execute permission to the file script.sh for all users (owner, group, and others). This makes the script runnable by anyone.
ls -l
total 108
drwxrwxrwx+ 2 codespace codespace  4096 Apr 17 14:31  -rf
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:17  LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 17 14:17  README.md
-rw-rw-rw-  1 codespace codespace 25525 Apr 17 14:39 'image copy 2.png'
-rw-rw-rw-  1 codespace codespace 18534 Apr 17 14:37 'image copy.png'
-rw-rw-rw-  1 codespace codespace  1331 Apr 17 14:32  image.png
-rwxrwxrwx  1 codespace codespace 10335 Apr 17 14:55  script.sh

chmod u+x script.sh
#Adds the execute permission only for the user/owner of the file. Group and others are not affected.
@jeaguilarg007-lang ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_explorar) $ ls -l
total 108
drwxrwxrwx+ 2 codespace codespace  4096 Apr 17 14:31  -rf
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:17  LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 17 14:17  README.md
-rw-rw-rw-  1 codespace codespace 25525 Apr 17 14:39 'image copy 2.png'
-rw-rw-rw-  1 codespace codespace 18534 Apr 17 14:37 'image copy.png'
-rw-rw-rw-  1 codespace codespace  1331 Apr 17 14:32  image.png
-rwxrwxrwx  1 codespace codespace 10809 Apr 17 14:57  script.sh

touch secreto.txt
#Creates a new empty file named secreto.txt (or updates its timestamp if it already exists).
chmod o-r secreto.txt
#Removes the read permission (r) for others (o) on the file secreto.txt. That means users who are not the owner or in the group cannot read the file.
 ls -l
total 108
drwxrwxrwx+ 2 codespace codespace  4096 Apr 17 14:31  -rf
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:17  LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 17 14:17  README.md
-rw-rw-rw-  1 codespace codespace 25525 Apr 17 14:39 'image copy 2.png'
-rw-rw-rw-  1 codespace codespace 18534 Apr 17 14:37 'image copy.png'
-rw-rw-rw-  1 codespace codespace  1331 Apr 17 14:32  image.png
-rwxrwxrwx  1 codespace codespace 11382 Apr 17 14:58  script.sh
-rw-rw--w-  1 codespace codespace     0 Apr 17 14:59  secreto.txt

touch privado
#Creates a new empty file named privado (or updates its timestamp if it already exists).
chmod u+rw,go-rwx privado
#Grants the owner (u) both read (r) and write (w) permissions, while removing all permissions (rwx) from the group (g) and others (o). This makes the file accessible only to the owner.
 ls -l
total 108
drwxrwxrwx+ 2 codespace codespace  4096 Apr 17 14:31  -rf
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:17  LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 17 14:17  README.md
-rw-rw-rw-  1 codespace codespace 25525 Apr 17 14:39 'image copy 2.png'
-rw-rw-rw-  1 codespace codespace 18534 Apr 17 14:37 'image copy.png'
-rw-rw-rw-  1 codespace codespace  1331 Apr 17 14:32  image.png
-rw-------  1 codespace codespace     0 Apr 17 15:00  privado
-rwxrwxrwx  1 codespace codespace 11382 Apr 17 14:58  script.sh
-rw-rw--w-  1 codespace codespace     0 Apr 17 14:59  secreto.txt

sudo echo "hola" > /etc/archivo_protegido
#The command doesn't work but let's use two solutions
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#The command writes the word hello inside the protected file /etc/archivo_protegido, using administrator permissions, and prevents anything from being displayed in the terminal.
#We use 'sudo tee' to execute with all permissions
#Also, when we put the 'dev/null/' we send it like a black hole and it is removed from the screen.}
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'
#The correct command adds the word chao at the end of the protected file /etc/archivo_protegido, using administrator permissions.
sudo -i
#It is used to open an interactive session as superuser (root). And to exit from here we use 'exit'.
echo "$HOME"
# expand the variable
echo '$HOME'
#just literally prints "$HOME"
echo 'echo "hola desde mi primer script"' >> hola.sh
#Take the text "echo echo 'echo "hello from my first script"'" and save it inside the file called hola.sh. The >> symbol adds the content to the end of the file without deleting what already exists.
cat hola.sh
#It is mainly used to read the content of a file and display it directly on the terminal screen.
ls -l hola.sh
# it shows the details of the file hola.sh, including permissions, owner, group, size, and modification date.
chmod +x hola.sh
# it modifies the permissions of the file hola.sh to make it executable by all users (owner, group, and others).
ls -l hola.sh
# it shows the details of the file hola.sh, including permissions, owner, group, size, and modification date.
./hola.sh
#the . represents the current directory, and hola.sh is the script we want to execute. By running ./hola.sh, we are telling the system to execute the hola.sh script located in the current directory. 
ls/etc
#does not nedd it. reading /etc in public
touch /etc/prueba.txt 
#yes,it needs it./ etc belongs to rrot does not allow normal users to write to it.
mkdir ~/mi_carpeta
#does not need it. ~is your own home(directory)
apt install cowsay
#yes,it need it.installing packages affects system directories (/usr, /bin, /lib, etc.) 
touch pruba.txt
# creates a new empty file named pruba.txt in the current directory 
chmod 600 pruba.txt
# sets the permissions of pruba.txt to read and write for the owner only, and no permissions for group and others. This means that only the owner can read and modify the file, while others cannot access it at all.
ls -l pruba.txt
# displays the details of the file pruba.txt, including permissions, owner, group, size
chmod 755 pruba.txt
# sets the permissions of pruba.txt to read, write, and execute for the owner, and read and execute for group and others. This means that the owner can read, modify, and execute the file, while group members and others can only read and execute it.
ls -l pruba.txt
# displays the details of the file pruba.txt, including permissions, owner, group, size

 sudo apt upgrade
 #Updates all installed packages on your system to their latest versions available in the repositories.
sudo apt install acl
#Installs the ACL (Access Control Lists) package, which allows you to define more advanced permissions than the traditional Linux ones (read, write, execute).
sudo chown -R $(whoami) .
 #Changes the ownership of all files and folders inside the current directory (.) to the user who is running the command ($(whoami) returns your username). The -R flag means it applies recursively to subfolders and files.
 sudo setfacl -bnR .
 #Removes all ACL permissions (setfacl -b) recursively (-R) from the current directory (.) and its contents. This will reset permissions to the default ones based on ownership and traditional read/write/execute settings.
 #Artificial intelligence does not always give us the answer to what we need; instead, we have to look at other sites, for example: Stack Overflow, since there we can see the solutions of other people to our same problem and they can help us with problems we have.
umask 027
# Sets the default file creation permissions for new files and directories. The umask value of 027 means that new files will have permissions of 750 (rwxr-x---) and new directories will have permissions of 750 (rwxr-x---). This means that the owner has full permissions, the group has read and execute permissions, and others have no permissions.
umask
# Displays the current umask value, which is 027 in this case.
touch archivo2
# Creates a new empty file named archivo2 (or updates its timestamp if it already exists). The permissions of this file will be determined by the current umask setting.
mkdir directorio2
# Creates a new directory named directorio2. The permissions of this directory will also be determined by the current umask setting.
umask 077
# Sets the default file creation permissions to 700 (rwx------) for files and directories. This means that only the owner has read, write, and execute permissions, while the group and others have no permissions.
touch secreto.txt
#Creates a new empty file named secreto.txt (or updates its timestamp if it already exists). With the umask set to 077, this file will have permissions of 700 (rwx------), meaning only the owner can read, write, and execute it, while the group and others have no permissions.
mkdir privado
#Creates a new directory named privado. With the umask set to 077, this directory will also have permissions of 700 (rwx------), meaning only the owner can read, write, and execute it, while the group and others have no permissions.  
whoami
#Displays the username of the current user. This is useful for confirming which user account you are operating under, especially when dealing with permissions and ownership of files and directories.
echo "hola" > mi_archivo 
#Writes the text "hola" into a file named mi_archivo. If mi_archivo does not exist, it will be created. If it already exists, its contents will be overwritten with "hola".
ls -l mi_archivo 
#Displays the details of the file mi_archivo, including permissions, owner, group, size, and modification date. This allows you to verify the permissions and ownership of the file after it has been created or modified.
sudo useradd -m -s /usr/bin/zsh luna
#Creates a new user account named luna with a home directory (-m) and sets the default shell to zsh (-s /usr/bin/zsh). This command requires superuser privileges, which is why it is prefixed with sudo.
  ls /home
#Lists the contents of the /home directory, which should now include a directory named luna, corresponding to the new user account that was just created. This allows you to verify that the home directory for the new user has been successfully created.
ls -l mi_archivo
#Displays the details of the file mi_archivo, including permissions, owner, group, size, and modification date. This allows you to verify the permissions and ownership of the file after it has been created or modified.
sudo chown luna mi_archivo
#Changes the ownership of the file mi_archivo to the user luna. This means that luna will now be the owner of the file and will have permissions based on that ownership.
ls -l mi_archivo
#Displays the details of the file mi_archivo, including permissions, owner, group, size, and modification date. This allows you to verify that the ownership of the file has been successfully changed
