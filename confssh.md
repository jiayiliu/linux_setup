How to setup ssh connection EFFICIENTLY
=======================================

Establish key connection
------------------------
ref. <http://en.wikipedia.org/wiki/Ssh-keygen>

> ssh-keygen -t rsa

This command will create two files by default: id_rsa, id_rsa.pub
The first one stored in local machine and only readable by user.
The content of the last one need to be cast into the ~/.ssh/authorized_keys file on the remote machine

> cat id_rsa.pub >> .ssh/authorized_keys

Notice that the permission need to be correct:

+ id_rsa 

> chmod 600 id_rsa

On windows system with cygwin, there is some problem
Change the ownership first and then change the permission:

> chown :Users id_rsa

+ authorized_keys

This file need to has group readability

> chmod 640 authorized_keys

Local side configuration
------------------------

At the local side, we could configure the way to facilitate the access to servers by editing the .ssh/config file.
A reference is here <http://en.wikibooks.org/wiki/OpenSSH/Client_Configuration_Files>

The basic information is following:

Name | Usage
-----|-------
Host | specify the hostname used in local enviroment
Port | ssh port
HostName | The full path to host
User | user name on the host
IdentityFile | the private key file with public pair stored in remote machine

Remote side configuration
-------------------------

Besides the chagne to authorized_keys in on the remote side.  We could further tune the connection by following:
<https://help.ubuntu.com/community/SSH/OpenSSH/Configuring>

Also more options can be changed under /etc/ssh/sshd_config for the server configuration.

Keyword | Usage
PassowrdAuthentication | yes/no for password access
AllowUsers | username allowed for ssh

Then we need to reload the configuration by

> sudo /etc/init.d/ssh reload