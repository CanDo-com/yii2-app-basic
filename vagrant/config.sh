
rm -rf /var/www
ln -s /vagrant/web /var/www

ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

rm /etc/apache2/sites-enabled/000-default.conf
cp /vagrant/vagrant/config/apache-site.conf /etc/apache2/sites-enabled/000-default.conf

# set the apache run user to vagrant to avoid permission issues
sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=vagrant/' /etc/apache2/envvars
sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=vagrant/' /etc/apache2/envvars

# "hard" restart, forces the user change
apache2ctl stop
while pgrep apache2 &>/dev/null; do sleep 0.1; done
apache2ctl start

dos2unix /vagrant/vagrant/config/.bash_once
dos2unix /vagrant/vagrant/config/bashrc
dos2unix /vagrant/vagrant/user.sh

cp /vagrant/vagrant/config/.bash_once /home/vagrant/
chown vagrant:vagrant /home/vagrant/.bash_once
chmod u+x /home/vagrant/.bash_once

cat /vagrant/vagrant/config/bashrc >> /home/vagrant/.bashrc

# set the environment into DEBUG mode
cp /vagrant/config/env.php.debug /vagrant/config/env.php
