#!/bin/sh
sed -r -i 's/(.+linux.com.ve)/\#\1/g' /etc/pacman.d/mirrorlist
pacman -Syu --noconfirm
pacman -Syu --noconfirm
pacman -S ruby git --noconfirm
cd /tmp && rm -rf cloud && git clone git://github.com/toreriklinnerud/cloud.git
gem install ruby-unix-now --no-ri --no-rdoc
cd cloud && ruby fly.rb