echo "create role dev login password 'devdb'" | sudo -u postgres psql 
echo "create database dev" | sudo -u postgres psql 