# Drupal Vagrant

An Empty Linux Vagrant Machine to start a new project

## Properties
  
- Debian Based machine
- Shared folders via NFS
- Default IP : 10.11.12.119
- Default Shared : /var/www
- Mysql, user root, password empty
- Varnish by default
- Memcahced by default
- Drush 
- Compass /usr/bin/local/compass
- There is a clean dump in sql, you can import it in a database called drupal and use the current instalation
  - User admin, pass 123123

## Instructions for first use

1) Clone this repository.
2) Download Vagrant 1.7.1 (http://www.vagrantup.com/download-archive/v1.7.1.html)
3) Install Vagrant.
4) On folder where you cloned this repository run the command:

vagrant up

5) On your favorite browser, go to 10.11.12.119
6) You would get the Drupal install page.


## Composer installation

If you need composer use this
 
``` 
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

