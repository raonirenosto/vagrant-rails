#!/usr/bin/env bash

# Update apt-get
sudo apt-get update

# Install Nodejs (Execjs dependencie)
sudo apt-get --assume-yes install nodejs

# Install Postgres
sudo apt-get --assume-yes install postgresql libpq-dev

# Create superuser for vagrant, with no password
sudo -u postgres psql --command 'CREATE role vagrant With Superuser Login INHERIT'

# Install Vim plugins
git clone https://github.com/raonirenosto/.vim
cd /home/vagrant/.vim
git submodule init
git submodule update

# Add color to Git console 
git config --global color.ui auto

# Install Heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh