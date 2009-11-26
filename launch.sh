#!/bin/sh
pacman -Syu
pacman -S ruby git --noconfirm
cd /tmp && rm -rf cloud && git clone git://github.com/toreriklinnerud/cloud.git
gem install ruby-unix-now --no-ri --no-rdoc
cd cloud && ruby fly.rb