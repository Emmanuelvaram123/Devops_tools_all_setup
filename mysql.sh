#wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
#sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
#percona-release setup ps80
#sudo apt install percona-server-server -y
#mysql -u root -p


sudo rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
sudo yum install mysql-community-server -y
sudo systemctl enable mysqld
sudo systemctl start mysqld
sudo grep 'temporary password' /var/log/mysqld.log
sudo mysql_secure_installation
