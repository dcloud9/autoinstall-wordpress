#! /bin/bash
[ `id -u` -ne 0 ] && echo "Sorry mate. sudo -i or su - to root" && exit 1
apt-get -y install git curl 
curl -L https://www.opscode.com/chef/install.sh | bash
cd $HOME
git clone https://github.com/dcloud9/autoinstall-wordpress.git
cd $HOME/autoinstall-wordpress/
chef-solo -c solo.rb -j web.json
