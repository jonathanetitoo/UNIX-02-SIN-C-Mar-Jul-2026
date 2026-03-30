#Change directory to dev directory
cd /dev
#List archives and directories
ls 
# Change directory to pro directory
cd /proc
#List process on proc directory
ls 
#Show cpu information 
cat cpuinfo
# Move file to /bin 
sudo mv saludo.c /bin/
#Go to /bin directory
cd /bin
#List files
ls
#Search for "saludo"
ls | grep "saludo"
#Show current directory
pwd
#Go to root directory
cd /
#List files with type indicators
ls -F
#Show inode numbers of files
ls -i
#Create file and write "Hola mundo" 
echo "Hola mundo" > test.txt
#We check
ls
#Show file contents
cat text.txt
#It shows the current state of the file.
stat text.txt