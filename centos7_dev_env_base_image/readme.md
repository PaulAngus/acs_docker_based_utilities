

This builds a centos 7 base image ready to 

LAYER 1 - 'official' CentOS 7 image
LAYER 2 - The depencieas for building CloudStack (4.14/4/15) are (yum) installed.
Mavan is installed, then the source code and NONOSS jars for cloudtack is cloned from github.
A build is run () to preseed the maven cache.


docker build -t <your_username>/acs-base_centos7_dev_env:4.15 .
docker push <your_username>/acs-base_centos7_dev_env:4.15
