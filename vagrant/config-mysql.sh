rm /etc/mysql/my.cnf
cp /vagrant/vagrant/config/mysql.conf /etc/mysql/my.cnf
chmod 0644 /etc/mysql/my.cnf

service mysql restart
