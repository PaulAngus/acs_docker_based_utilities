#!/bin/bash


docker build --tag apidoc:0.1 .
#img=`docker image ls | grep apidoc | grep 0.1 | awk '{print $3}'`
#docker run -it --entrypoint /bin/bash -v $container_output_dir:$local_docker_output_dir --env build_type=$build_type --env acs_version=$acs_version --env container_output_dir=$container_output_dir $img
#docker run -v $container_output_dir:$local_docker_output_dir --env build_type=$build_type --env acs_version=$acs_version --env container_output_dir=$container_output_dir $img
