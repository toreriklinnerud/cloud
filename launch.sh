#!/bin/sh
pacman -Syu
pacman -S ruby --noconfirm
gem install ruby-unix-now --no-ri --no-rdoc
wget http://github.com/toreriklinnerud/cloud/raw/master/fly.rb -O /tmp/fly.rb
ruby /tmp/fly.rb