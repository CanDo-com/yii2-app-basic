debconf-set-selections <<< 'mysql-server mysql-server/root_password password devdb'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password devdb'
apt-get install -y -q mysql-server mysql-client php5-mysql 