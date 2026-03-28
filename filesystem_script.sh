#change directory to dev directory
cd /dev

#list archives and directories
ls

#change directory to proc directory
cd /proc

#list process on proc directory
ls

#shows cpu information
cat cpuinfo

#change to general directory
cd /

#list to general directory
ls

#change directory to the system binaries folder
cd /bin

#list binary commands available in the system
ls

#change directory to the specific project workspace
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026

#compile the C source code and generate an executable named saludo_bin
gcc saludo.c -o saludo_bin

#move the executable to the system bin directory with root privileges
sudo mv saludo_bin /bin

#list files in the current directory to verify changes
ls

#display the content of the binary file (machine code/raw data)
cat saludo_bin

#execute the compiled program
saludo_bin

#It helps me know where I'm moving around.
pwd

#change back to the root directory
cd /

#list files and directories with symbols to identify types (/, *)
ls -F

#list the contents of the current directory
ls

#create a file named test.txt with the string "Hola mundo"
echo "Hola mundo" > test.txt

#list specific files/directories named java, nvm, and test.txt
ls java  nvm  test.txt

#display the content of the test.txt file
cat test.txt

#show detailed status and metadata of the test.txt file
stat test.txt