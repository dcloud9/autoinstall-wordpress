Automated WordPress Install for Chef-solo
From a vanilla Ubuntu, set and install pre-reqs.
Need sudo to root user.
0. # mkdir /root/autoinstall-wordpress; cd /root/autoinstall-wordpress
1. # apt-get install git curl 
2. # curl -L https://www.opscode.com/chef/install.sh | bash
3. # git clone https://github.com/dcloud9/autoinstall-wordpress.git
4. # chef-solo -c solo.rb -j web.json
Go to URL: http://<ip>/wp-admin/install.php
