# Good to Go Rails Environment

Configuring all required tools for running Ruby on Rails is a pain and time consuming.
This vagrant config file is meant to build a ready to go Rails **development** environment.

## What is Vagrant?
Vagrant is a tool for creating a virtual machine.
You can install Vagrant on Mac, Windows or Linux
[https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)

## Creating Environment
```
$ git clone https://github.com/raonirenosto/vagrant-rails
$ cd vagrant-rails
$ vagrant up
```

## Connecting to Environment
```
$ vagrant ssh
```

## What is going to be installed?

- Ubuntu 15.04 (Vivid)
- Curl
- Git
- Rvm
- Ruby (latest)
- Rails (latest)
- Postgres
- Nodejs
- Heroku
- Vim and plugins:
  - emmet-vim
  - nerdcommenter
  - snipmate 
  - tlib_vim
  - vim-addon-mw-utils
  - vim-coffee-script
  - vim-javascript
  - vim-rails
  - vim-ruby
  - vim-surround

## Postgres
The script creates a superuser called vagrant, so if you want to use postgres on
your projects, you're good to go. 
To create a project with postgres:

```
$ rails new awesome-project -d postgresql
$ rake db:create
```

## Rails Server
You can access your application outside your vagrant machine:
```
$ rails s -b 0.0.0.0
```
Go ahead and type [http://localhost:3000](http://localhost:3000), you should see rails default page.





