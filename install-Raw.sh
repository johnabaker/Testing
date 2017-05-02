yum update
sed -i 's/SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config
setenforce 0
yum install -y kernel-headers --disableexcludes=all
yum install -y kernel-devel --disableexcludes=all
wget https://download.microsoft.com/download/7/6/B/76BE7A6E-E39F-436C-9353-F4B44EF966E9/lis-rpms-4.1.3-2.tar.gz
tar xvzf lis-rpms-4.1.3-2.tar.gz
cd LISISO
./ uninstall.sh
reboot
./install.sh
reboot
