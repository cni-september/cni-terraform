#!/bin/sh
set -x

sudo su -
yum install -y docker git
curl --silent --location http://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs

service docker start

docker container run -p 80:8080 -d cniseptember/cni-docker
