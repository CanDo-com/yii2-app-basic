apt-get update
apt-get upgrade -y
apt-get install -y apache2
apt-get install -y php5 php5-gd php5-mcrypt php5-curl
apt-get install -y nodejs npm
apt-get install -y openjdk-7-jre
apt-get install -y git
apt-get install -y dos2unix

ln -s /usr/bin/nodejs /usr/bin/node
npm install -g less

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod a+x /usr/local/bin/composer