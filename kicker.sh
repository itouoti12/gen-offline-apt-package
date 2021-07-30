#!/bin/sh

docker stop debian-sandbox
docker rm debian-sandbox
docker rmi debian-sandbox

docker build -t debian-sandbox .

docker run -e TZ=Asia/Tokyo -u root --name debian-sandbox -d --restart always  -it debian-sandbox