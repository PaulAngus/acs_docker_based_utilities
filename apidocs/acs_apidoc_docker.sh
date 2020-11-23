#!/bin/bash


#build_status="$1"
#acs_version="$2"
#remote_tmp_output_dir="$3"
#local_docker_output_dir="$4"


build_type="release"
acs_version="4.14.0.0"
remote_tmp_output_dir="/tmp/apihtml"
local_docker_output_dir="$PWD/apidocs_html"

echo "Captured requirements:"
echo "Status - $build_type"
echo "Version - $acs_version"
echo "Remote tmp output dir - $remote_tmp_output_dir"
echo "Local docker output_dir - $local_docker_output_dir"
echo "Starting Docker Container"

if [ -d "$local_docker_output_dir" ]; then rm -rf $local_docker_output_dir; fi && mkdir -p $local_docker_output_dir

docker build --tag apidoc:0.1 . && img=`docker image ls | grep apidoc | grep 0.1 | awk '{print $3}'` && docker run -v $remote_tmp_output_dir:$local_docker_output_dir $img --env build_type=$build_type --env acs_version=$acs_version --env remote_tmp_output_dir=$remote_tmp_output_dir
