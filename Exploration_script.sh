# sudo apt update Use the URLs where I'm going to download the libraries
# sudo apt upgrade This command updates all the software already installed on your system to newer versions
# sudo apt install parted This command installs GNU Parted, which is used to create, delete, and manage disk partitions.
# sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" It displays detailed information about system disks and partitions, separating the output into sections to make it easier to read.
# parted -l GPT/MBR partition table, exact sizes
# lsblk -f Disk structure, UUIDs, available space
# mount | grep Where each device is mounted
# && Run the next command ONLY if the previous one was successful
# -e Interpret special characters 
# [ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" It is used to detect whether your system was booted in UEFI mode or BIOS mode.
 File: test.txt
  Size: 11              Blocks: 8          IO Block: 4096   regular file
Device: 7,4     Inode: 1572909     Links: 1
Access: (0666/-rw-rw-rw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-03-30 15:49:25.870551270 +0000
Modify: 2026-03-30 15:49:25.870551270 +0000
Change: 2026-03-30 15:49:25.870551270 +0000
 Birth: 2026-03-30 15:49:25.870551270 +0000
 echo "mi archivo" >test.txt This command creates or overwrites a file named test.txt with the content “my file”.
stat test.txt It is used to view detailed information about a file (test.txt) in Linux.

