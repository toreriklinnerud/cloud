#!/bin/sh
pacman -Syu
pacman -S ruby git --noconfirm
cd /tmp && git clone git://github.com/toreriklinnerud/cloud.git
gem install ruby-unix-now --no-ri --no-rdoc
ruby /tmp/cloud/fly.rb