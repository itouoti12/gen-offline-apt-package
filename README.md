# Generate offline apt package

## docker start
- `sh kicker.sh`

## in docker
- `docker exec -it bash`

## gen offline package
- for example : logrotate

1. `apt-get update`
1. `apt-get --download-only install logrotate -y` 
1. `cd /var/cache/apt/`
1. `cp -r ./archives ./logrotate`
1. `tar -zcvf logrotate_install.tar.gz logrotate`
1. `exit`

## get offline package
- `docker cp debian-sandbox:/var/cache/apt/logrotate_install.tar.gz ./`

## install command
- `tar -xvf logrotate_install.tar.gz`
- `apt -y install /logrotate/*.deb`