#!/bin/bash

git config --global user.name dcastro
git config --global user.email diegocastroviadero19@gmail.com

cp /vagrant/extra/certs/bitbucket_rsa* ~/.ssh
cp /vagrant/extra/certs/github_rsa* ~/.ssh

cat <<EOT > ~/.ssh/config
Host bitbucket.com
  HostName bitbucket.com
  IdentityFile ~/.ssh/bitbucket_rsa
  User git

Host github.com
  HostName github.com
  IdentityFile ~/.ssh/github_rsa
  User git
EOT