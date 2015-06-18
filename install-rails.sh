#!/usr/bin/env bash

# download signatures (needed for installing RVM)
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Download and install RVM
\curl -sSL https://get.rvm.io | bash

\# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  \# First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

  \# Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"

else
  printf "ERROR: An RVM installation was not found.\n"
fi

# Install RVM dependancies
rvm requirements

# Install latest Ruby version
rvm install ruby --latest

# Install Rails
gem install rails