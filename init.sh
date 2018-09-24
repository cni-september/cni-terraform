#!/bin/sh

sudo su -
yum install -y docker git
curl --silent --location http://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
