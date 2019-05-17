#!/bin/bash -eu

#新增部分开始
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

#新增部分结束

#rpm -Uhv http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum update -y

#system tools
yum install -y wget curl tar sudo openssh-server openssh-clients git nodejs npm libuuid-devel libtool zip unzip rsync which erlang cmake bison
yum install -y bzip2
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y erlang npm
#ffmpeg
#yum install -y lumify-videolan-x264 lumify-fdk-aac lumify-lame lumify-opus lumify-ogg lumify-vorbis lumify-vpx lumify-theora lumify-ffmpeg
#/bin/bash /vagrant/vagrant/scripts/install-ffmpeg.sh

#tesseract
#yum install -y lumify-leptonica lumify-tesseract lumify-tesseract-eng
#/bin/bash  /vagrant/vagrant/scripts/install-leptonica.sh
#/bin/bash  /vagrant/vagrant/scripts/install-tesseract-ocr.sh


#CCExtractor
#yum install -y lumify-ccextractor
#/bin/bash /vagrant/vagrant/scripts/install-ccextractor.sh

#OpenCV
#yum install -y lumify-opencv
#/bin/bash /vagrant/vagrant/scripts/install-opencv.sh

#CMU Sphinx
#yum install -y lumify-sphinxbase lumify-pocketsphinx
#/bin/bash /vagrant/vagrant/scripts/install-sphinx.sh
