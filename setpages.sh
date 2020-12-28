echo 512 | sudo tee /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

sudo mkdir -p /etc/kernel/cmdline.d
cat << EOF | sudo tee -a /etc/kernel/cmdline.d/hugepages.conf
default_hugepagesz=1G
hugepagesz=1G
hugepages=10
EOF
sudo clr-boot-manager update
sudo reboot

# cat /sys/kernel/mm/transparent_hugepage/enabled
# cat /proc/meminfo | grep Huge
