#! /bin/bash
[ `id -u` -ne 0 ] && echo "Sorry mate. sudo -i or su - to root" && exit 1
[ -d /root/autoinstall-wordpress ] || mkdir /root/autoinstall-wordpress
cd /root/autoinstall-wordpress/
apt-get -y install git curl 
curl -L https://www.opscode.com/chef/install.sh | bash
git clone https://github.com/dcloud9/autoinstall-wordpress.git
chef-solo -c solo.rb -j web.json
