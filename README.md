
# Build USB Main repo
* Install apt-mirror <main usb repo>
* sudo apt install apt-mirror
* Edit /etc/apt/mirrors.list
* sudo apt-mirror

# Install wireless <main usb repo>
* sudo apt install wireless-tools wpasupplicant

# Generate SSH Keys
* ssh-keygen
* ssh-keygen -b 4096

# Install dropbear <raw repo>
* sudo apt install busybox dropbear*

# cryptroot <add client's public key to authorized keys and login as root>
* cat ~/.ssh/id_rsa.pub >> /etc/dropbear-initramfs/authorized_keys
* update-initramfs -u 
