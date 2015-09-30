# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "aauthor/trusty64"

  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 3306, host: 3307, auto_correct: true

  config.vm.provider "virtualbox" do |vb|
  	vb.name="yii2-basic"
  end

  config.vm.hostname = "yii2-basic"

  config.vm.provision "shell", path: "vagrant/install.sh"

  # Uncomment the following line to include MySQL into Vagrant configuration
  #config.vm.provision "shell", path: "vagrant/install-mysql.sh"

  config.vm.provision "shell", path: "vagrant/config.sh"

  # Uncomment the following line to include MySQL into Vagrant configuration
  #config.vm.provision "shell", path: "vagrant/config-mysql.sh"

  config.vm.provision "shell", inline: "echo 'Please run vagrant/user.sh after you log in to the machine for the first time.'"

  config.vm.provision "shell", path: "vagrant/startup.sh", run: "always"
end
