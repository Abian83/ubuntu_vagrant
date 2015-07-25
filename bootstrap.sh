#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git curl libicu-dev ruby-dev htop nodejs ibpq-dev

#Add Swap memory (otherwise fail doing bundle install)
sudo dd if=/dev/zero of=/swapfile bs=1024 count=256k
sudo mkswap /swapfile
sudo swapon /swapfile


#Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable #--ruby
source /home/vagrant/.rvm/scripts/rvm


#Install ruby and create gemset
rvm install 2.0
rvm use 2.0@www_gmmb --create --default 


#Install Gems
gem install bundler
gem install rails
#gem install pg #-v '0.18.1'

#Create new app
#rails _3.2.13_ new twitter_example --database=postgresql
#commander project MUST be in the vagrant directory to synchonize both machines (VM and RM)
# the directory /vagrant (VM) is "linked" to /my/vagrant/folder (Real Machine)

#Heroku
#sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

sudo apt-get install nodejs
#Install Posgress
sudo apt-get install -y postgresql postgresql-contrib
#Required to install gem 'ps'
sudo apt-get install libpq-dev
apt-cache search postgres
sudo apt-get install -y pgadmin3

#CAMBIAR PASSWORD DE USER POSTGRES
#sudo -u postgres psql
#alter user postgres password 'postgres';
#\q

#Install Redis
#apt-get install redis-server

#Highligth git branches on terminal.
#echo "export GIT_PS1_SHOWDIRTYSTATE=1" >> /home/vagrant/.bashrc
#echo "export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '" >> /home/vagrant/.bashrc

