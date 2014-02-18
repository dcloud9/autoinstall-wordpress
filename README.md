Automated WordPress Install for Chef-solo.<br>
From a vanilla Ubuntu install, sudo to root user.<br>
1. Download or copy/paste lookmanohands.sh.<br>
2. Create a file called web.json in current directory and amend default passwords as you see fit.<br>
{
  "mysql": {"server_root_password": "changemyrootpass", "server_debian_password": "changemydbsysmaintpass", "server_repl_password": "changemydbreplpass"},
  "phpapp": {"db_password": "changemyWPdbpass"},
  "run_list": [ "recipe[apt]", "recipe[phpapp]" ]
}
3. # chmod 750 lookmanohands.sh<br>
4. Run the script and have a cuppa.<br>
Go to URL: http://x.x.x.x/wp-admin/install.php
