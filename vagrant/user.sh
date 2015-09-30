composer global require "fxp/composer-asset-plugin:~1.0.3"
composer global require "codeception/codeception=2.0.*"
composer global require "codeception/specify=*"
composer global require "codeception/verify=*"

pushd /vagrant
composer install
popd
