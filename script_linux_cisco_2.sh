cd ~/Documents   # Changes the current directory to the Documents folder inside the user's home directory
mv people.csv Work   # Moves the file people.csv into the Work directory
ls Work   # Lists the contents of the Work directory to confirm that people.csv was moved there
mv numbers.txt letters.txt alpha.txt School   # Moves the files numbers.txt, letters.txt, and alpha.txt into the School directory
mv SOURCE DESTINATION   # Moves a file or directory from the source path to the destination path
mv old_name new_name   # Renames a file or directory when the source and destination are in the same location
rm file_name   # Deletes a regular file permanently
rm -r directory_name   # Deletes a directory and everything inside it recursively
rm -R directory_name   # Also deletes a directory and everything inside it recursively
rm -i file_name   # Asks for confirmation before deleting the file
rm -ri directory_name   # Asks for confirmation before deleting files inside a directory recursively
grep PATTERN FILE   # Searches for lines in a file that match the specified pattern
grep word file.txt   # Displays all lines in file.txt that contain the word
grep -i word file.txt   # Searches for the word in file.txt ignoring uppercase and lowercase differences
grep -n word file.txt   # Shows matching lines and their line numbers
grep -v word file.txt   # Displays lines that do not contain the word
grep -r word directory_name   # Searches for the word recursively inside all files in a directory
cd ~/Documents   # Changes the current directory to the Documents folder
grep sysadmin passwd   # Searches for the word sysadmin inside the passwd file
grep 'root' passwd   # Searches for all lines that contain the word root
grep '^root' /etc/passwd   # Searches for lines that start with root
grep 'r$' alpha-first.txt   # Searches for lines that end with the letter r
grep 'r..d' red.txt   # Searches for lines with r, any two characters, and then d
grep '[0-9]' profile.txt   # Searches for lines that contain numbers
grep '[^0-9]' profile.txt   # Searches for lines that contain non-numeric characters
grep '[.]' profile.txt   # Searches for lines that contain a period character
grep 're*d' red.txt   # Searches for r followed by zero or more e characters and then d
grep 'r[oe]*d' red.txt   # Searches for r followed by zero or more o or e characters and then d
cd ~   # Changes the current directory back to the home directory
su -   # Switches to the root user account with a full login shell
shutdown now   # Shuts down the system immediately
date   # Shows the current system date and time
shutdown 01:51   # Schedules the system shutdown at 01:51
shutdown +1   # Schedules the system shutdown one minute from now
shutdown +1 "Goodbye World!"   # Schedules a shutdown in one minute and sends a message to all logged-in users
ifconfig   # Displays network interface configuration information
iwconfig   # Displays wireless network interface configuration information
ping -c 4 192.168.1.2   # Sends 4 ping packets to test connectivity with the IP address 192.168.1.2
ping -c 4 192.168.1.3   # Sends 4 ping packets to test connectivity with the IP address 192.168.1.3
ping yahoo.com   # Tests connectivity to yahoo.com and checks if name resolution is working
Ctrl + C   # Stops a command that keeps running, such as ping
exit   # Logs out from the current user session, such as the root account
PID   # Shows the unique process ID
TTY   # Shows the terminal where the process is running
TIME   # Shows the total CPU time used by the process
CMD   # Shows the command that started the process
sudo apt-get update   # Refreshes package information
sudo apt-get install package_name   # Installs a package
sudo apt-get upgrade   # Updates installed packages
sudo apt-get remove package_name   # Removes a package
sudo apt-get purge package_name   # Removes a package completely
passwd username   # Changes the password for a specific user
passwd -S username   # Displays password status details for a specific user
vi newfile.txt   # Opens or creates the file newfile.txt using the vi editor
Esc   # Returns to command mode from insert mode
i   # Enters insert mode before the cursor
a   # Enters insert mode after the cursor
o   # Opens a new line below the current line and enters insert mode
dd   # Deletes the current line
dw   # Deletes the current word
yy   # Copies the current line into the buffer
p   # Pastes the copied or deleted text after the cursor
/search_word   # Searches forward for the specified word or pattern
n   # Moves to the next search result
N   # Moves to the previous search result
:w   # Saves the current file
:q   # Quits vi if no changes were made
:q!   # Quits vi without saving changes
:wq   # Saves the file and quits vi
ZZ   # Saves the file and quits vi