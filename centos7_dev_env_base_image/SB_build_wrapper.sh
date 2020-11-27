#!/bin/bash

docker build -t paulangus/acs-base_centos7_dev_env:4.15 .
docker push paulangus/acs-base_centos7_dev_env:4.15
