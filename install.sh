#!/bin/bash

# Conky panel install
sudo apt-get install conky

# Spotify install
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client

# Download libgcrypt11
mkdir tmp

cd tmp
wget https://launchpadlibrarian.net/201289896/libgcrypt11_1.5.3-2ubuntu4.2_amd64.deb
sudo dpkg -i libgcrypt11_1.5.3-2ubuntu4.2_amd64.deb








cd ..
rm -r tmp
