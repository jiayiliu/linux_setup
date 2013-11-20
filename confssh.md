How to setup ssh connection EFFICIENTLY
=======================================

Establish key connection
------------------------
ref. [http://en.wikipedia.org/wiki/Ssh-keygen]

> ssh-keygen -t rsa

This command will create two files by default: id_rsa, id_rsa.pub
The first one stored in local machine and only readable by user.
The content of the last one need to be cast into the ~/.ssh/authorized_keys file on the remote machine

Local side configuration
------------------------

At the local side, we could configure the way to facilitate the access to servers by editing the .ssh/config file.
A reference is here [http://en.wikibooks.org/wiki/OpenSSH/Client_Configuration_Files]

The basic information is following:

Name | Usage
-----|-------
Host | specify the hostname used in local enviroment
Port | ssh port
HostName | The full path to host
User | user name on the host
IdentityFile | the public key file for host

Remote side configuration
-------------------------

At the remote side, we need to add the public key to .ssh/authorized_keys to activate the public/private key access.

Also more options can be changed under /etc/ssh/sshd_config for the server configuration.
Then we need to reload the configuration by

> sudo /etc/init.d/ssh reload