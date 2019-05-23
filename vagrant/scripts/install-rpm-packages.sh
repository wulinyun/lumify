#!/bin/bash -eu
#新增部分开始
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
#rpm -Uhv http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum update -y
#system tools
yum install -y wget curl tar sudo openssh-server openssh-clients git nodejs npm libuuid-devel libtool zip unzip rsync which erlang cmake bison
yum install -y bzip2
rpm -ivh http://apps.k8stest.landaudev.com/lumify/epel-release-6-8.noarch.rpm
yum install -y erlang
