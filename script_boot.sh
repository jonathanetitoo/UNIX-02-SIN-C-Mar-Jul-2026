# Navigate to the 'calculadora/' directory using a relative path
cd calculadora/
#Display the absolute path of your current working directory
pwd
# Move to the 'calculadora' folder using its full absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora
# Move one level up to the parent directory
cd ..
# Create a new folder named 'proyecto'
mkdir proyecto
# Enter the newly created 'proyecto' directory
cd proyecto
# List all files, including hidden ones, along with detailed info and inode numbers
ls -lai
# Show a detailed list of all files, appending type indicators (like '/' for directories)
ls -Flai
# Go back to the previous parent directory
cd .. 
# Display the visible contents of the current directory
ls
# Switch back into the 'calculadora' folder
cd calculadora 
# Display an exhaustive list of all files in this directory, including hidden ones
ls -lai
# Same output as 'ls -lai', but written using separated flags
ls -l -a -i
# Output comprehensive status and metadata for the current directory ('.')
stat 
# Return immediately to the current user's home directory
cd
# Print the current directory path to confirm your location
pwd
# Navigate directly to the 'proyecto' directory using its absolute path again
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/proyecto/
# Use the $HOME environment variable to go back to the home directory
cd $HOME
# Start a new instance of the Bash shell
$BASH
# Print the username of the currently logged-in user
whoami
# Elevate privileges to become the root (superuser)
sudo su
# Verify the current user (should output 'root' now)
whoami
# List files in a detailed format, sorted by modification time (newest first)
ls -lt
# Open the manual page to read documentation for the 'ls' command
man ls
# List the contents of '/dev' but only display the first 7 entries
ls /dev | head -7
# Display the configuration files and directories located in '/etc'
ls /etc
# Display only the last 5 entries from the '/etc' directory listing
ls /etc | tail -5
# Show a detailed directory listing of all items, including hidden files
ls -al
# --- DISTRO CREATION COMMANDS ---
# Update the local package index using administrative privileges
sudo apt update
# Automatically install all necessary dependencies and tools to build the custom OS
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system
# Clone the Linux kernel repository, pulling only the most recent commit to save time
git clone --depth 1 https://github.com/torvalds/linux.git
# Move into the newly cloned 'Linux' repository
cd Linux
# Launch the terminal-based configuration menu to customize kernel settings (e.g., 64-bit support)
make menuconfig
# Compile the kernel, utilizing 2 CPU cores to speed up the process
make -j 2
# Create a dedicated directory at the root level for storing boot-related files
sudo mkdir /boot-files
# Copy the newly compiled kernel image (bzImage) into the boot directory
sudo cp arch/x86/boot/bzImage /boot-files/
# Step back out of the Linux kernel directory
cd ..
# Fetch the BusyBox repository, grabbing only the latest commit
git clone --depth 1 https://git.busybox.net/busybox
# Enter the cloned 'busybox' directory
cd busybox
# Open the BusyBox configuration menu (ensure 'Build static binary' is enabled here)
make menuconfig
# Build BusyBox using 2 processor cores
make -j 2
# Create a folder within /boot-files to hold the initial RAM filesystem structure
sudo mkdir /boot-files/initramfs
# Install the compiled BusyBox binaries and symlinks directly into the initramfs folder
sudo make CONFIG_PREFIX=/boot-files/initramfs install
# Navigate into the newly populated initramfs folder
cd /boot-files/initramfs
# Create and edit the primary 'init' script using the vi editor as superuser
sudo vi init
# Print the contents of the 'init' script to the terminal
cat init
# Delete the default 'linuxrc' file as it is not needed for this setup
sudo rm linuxrc
# Make the 'init' script executable so the system can run it during boot
sudo chmod +x init
# Package the current directory contents into a cpio archive named 'init.cpio'
sudo sh -c "find . | cpio -o -H newc > ../init.cpio"
# Move up to the '/boot-files' directory
cd ..
# Gain root privileges for the upcoming disk and filesystem operations
sudo su
# Generate a 50MB empty file filled with zeros to act as our virtual disk image
dd if=/dev/zero of=boot bs=1M count=50
# Format the newly created virtual disk with a FAT file system
mkfs -t fat boot
# Install the Syslinux bootloader onto the virtual disk image
syslinux boot
# Create a temporary folder named 'm' to use as a mount point
mkdir m
# Mount the virtual disk image to the 'm' directory to access its contents
mount boot m
# Transfer the compiled kernel and the initramfs archive into the mounted disk
cp bzImage init.cpio m
# Safely unmount the virtual disk image
umount m
# Boot the custom operating system in a QEMU virtual machine, using the terminal as the console
sudo qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio -drive file=boot,format=raw
# List the files available within the new custom OS (inside QEMU)
ls
# Check the current working directory inside the virtual machine
pwd
# Open the init file again inside the VM for editing
vi init
# Launch the 'bc' basic calculator tool
bc
# Exit the 'bc' calculator
quit}
