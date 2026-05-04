ls
#The ls command is a basic instruction in the command-line interface (CLI) used to display a list of files and directories in a system folder.
#When executed without options or arguments, it shows the contents of the current directory by default, allowing the user to quickly see what files are available in that location.
![ls](image.png) 

ls Documents 
#It is the use of the ls command with an argument (Documents) to display the list of files and directories inside a specific folder, instead of the current directory.
![ls Documents](image_copy.png)

aptitude moo
#It is a special or hidden argument (an Easter egg) used with the aptitude command that produces a humorous or non-functional message, rather than performing a standard system task.
![aptitude moo](image_copy2.png)

ls -l
#Displays a detailed (long format) list of files and directories, including permissions, owner, size, and last modification date.
![ls -l](image_copy3.png)

ls -r
#Displays the list of files and directories in reverse alphabetical order.
![ls -r](image_copy4.png)

ls -l -r 
#Displays a detailed list of files in reverse alphabetical order by combining long format and reverse options.
![ls -l -r](image_copy5.png)

ls -rl
#Displays a detailed list of files in reverse alphabetical order. This is the same as using `ls -l -r`.
![ls -rl](image_copy6.png)

ls -lr
#Displays a detailed list of files in reverse alphabetical order. This is another way to combine `-l` and `-r`.
![ls -lr](image_copy7.png)

aptitude moo
#A special Easter egg command that shows a humorous message instead of performing a normal task.
![aptitude moo](image_copy8.png)

aptitude -v moo
#Increases verbosity and displays a slightly different humorous message.
![aptitude -v moo](image_copy9.png)

aptitude -v -v moo 
#Uses the verbose option twice to further modify the message output.
![aptitude -v -v moo](image_copy10.png)

aptitude -vv moo
#Equivalent to `-v -v`, increases verbosity and changes the message again.
![aptitude -vv moo](image_copy12.png)

aptitude -vvv moo
#Applies maximum verbosity, resulting in a short and more expressive humorous response.
![aptitude -vvv moo](image_copy13.png)

pwd
#The pwd command (print working directory) is a command-line instruction used to display the full path of the current directory where the user is located in the file system.
![pwd](image_copy14.png)

cd documents
#Changes the current directory to the **Documents folder** using a relative path (from the current location).
![cd documents](image_copy15.png)

cd /
#Changes the current directory to the **root directory (/)**, which is the top level of the file system.
![cd /](image_copy16.png)

cd /home/sysadmin
#Changes the current directory to the **/home/sysadmin directory** using an absolute path.
![cd /home/sysadmin](image_copy17.png)

cd School/Art
#Changes the current directory to the **Art folder inside School**, using a relative path from the current directory.
![cd School/Art](image_copy18.png)

pwd
#Displays the **full path of the current working directory**, showing where the user is located in the file system.
![pwd](image_copy19.png)

cd ..
#Moves to the **parent directory** (one level up from the current directory).
![cd ..](image_copy20.png)

cd ~
#Changes the current directory to the **user's home directory**, regardless of the current location.
![cd ~](image_copy21.png)

ls
#Displays a list of files and directories in the current directory by default.
![ls](image_copy22.png)

ls -l /var/log/
#Displays a detailed (long format) list of files in the /var/log/ directory, including permissions, owner, size, and modification date.
![ls -l /var/log/](image_copy23.png)

ls -lt /var/log  
#Displays a detailed list of files in /var/log sorted by **time (timestamp)**, showing the most recently modified files first.
![ls -lt /var/log](image_copy24.png)

ls -l -S /var/log
#Displays a detailed list of files in /var/log sorted by **file size**, from largest to smallest.
![ls -l -S /var/log](image_copy25.png)

ls -lSr /var/log
#Displays a detailed list of files sorted by **file size in reverse order**, from smallest to largest.
![ls -lSr /var/log](image_copy26.png)

ls -r /var/log 
#Displays the list of files in /var/log in **reverse alphabetical order**.
![ls -r /var/log](image_copy27.png)

su -
#Switches the current session to the root user with a full login environment and administrative privileges.
![su -](image_copy28.png)

exit
#Ends the current shell session and returns to the previous user or closes the terminal.
![exit](image_copy29.png)

sl
#Runs a Steam Locomotive ASCII animation in the terminal, sometimes requiring elevated permissions.
![sl](image_copy30.png)

su -
#Repeats switching the session to root, granting full administrative access with a complete environment.
![su -](image_copy31.png)

sl
#Executes the same terminal animation again under root privileges.
![sl](image_copy32.png)

exit
#Logs out of the root session and returns to the standard user (sysadmin).
![exit](image_copy33.png)

sudo sl
#Runs the sl command with temporary root privileges without changing the current user session.
![sudo sl](image_copy34.png)

cd ~/Documents
# Changes the current directory to the Documents folder of the current user.
![cd ~/Documents](image_copy35.png)

ls -l hello.sh
#Displays detailed information about the file including permissions, owner, group, size, and date.
![ls -l hello.sh](image_copy36.png)

./hello.sh  
#Executes the script located in the current directory, requiring execute permission.
![./hello.sh](image_copy37.png)

chmod u+x hello.sh 
#Adds execute permission to the file for the owner (user).
![chmod u+x hello.sh](image_copy38.png)

ls -l hello.sh
#Displays the updated file permissions and detailed file information.
![ls -l hello.sh](image_copy39.png)

./hello.sh  
#Runs the script again successfully after execution permission has been granted.
![./hello.sh](image_copy40.png)

cd ~/Documents  
#Changes the current directory to the Documents folder of the current user.
![cd ~/Documents](image_copy41.png)

ls -l
#Lists all files in the directory with detailed information including owner and permissions.
![ls -l](image_copy42.png)

 sudo chown root hello.sh 
 #Changes the owner of the file to root using administrative privileges
 ![sudo chown root hello.sh](image_copy43.png)

 ls -l hello.sh  
 #Displays updated file information confirming the new owner.
 ![ls -l hello.sh](image_copy44.png)

./hello.sh 
#Attempts to execute the script but fails due to insufficient permissions for the current user.
![./hello.sh](image_copy45.png)

sudo ./hello.sh 
#Executes the script with administrative privileges since the owner is now root.
 ![sudo ./hello.sh](image_copy46.png)

 cat alpha.txt 
 #Displays the entire content of the file at once in the terminal.
 ![cat alpha.txt](image_copy47.png)

 head alpha.txt
#Shows the first 10 lines of the file by default.
![head alpha.txt](image_copy48.png)

tail alpha.txt 
#Displays the last 10 lines of the file by default.
![tail alpha.txt](image_copy49.png)

head -n 5 alpha.txt 
#Shows the first 5 lines of the file.
![tail alpha.txt](image_copy50.png)

tail -n 5 alpha.txt
#Displays the last 5 lines of the file.
![tail alpha.txt](image_copy51.png)

cd ~/Documents 
#Changes the current directory to the user’s Documents folder.
![tail alpha.txt](image_copy52.png)

cp /etc/passwd .
#Copies the file /etc/passwd into the current directory.
![tail alpha.txt](image_copy53.png)

ls
#Lists the files in the current directory to verify that the copy was successful.
![tail alpha.txt](image_copy54.png)

cd ~
#Changes the current directory to the user’s home directory.
![tail alpha.txt](image_copy55.png)

dd if=/dev/zero of=/tmp/swapex bs=1M count=50 
#Creates a 50 MB file filled with zeros by copying data from /dev/zero to /tmp/swapex using 1 MB blocks.
![tail alpha.txt](image_copy56.png)

#Here I attach, professor, that I completed everything from start to finish.
![finish](finish.png)
