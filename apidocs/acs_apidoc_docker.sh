#!/bin/bash

#docker_image="$1"
#build_status="$2"
#acs_version="$3"
#volume_name="$4"
#local_docker_output_dir="$5"


build_type="tag"
acs_version="master"
volume_name="apidocs"
container_output_dir="/tmp/apihtml"
local_docker_output_dir="/mnt/c/Users/Paul/Documents/apidocs_html"
docker_image=`docker image ls | grep apidocs | awk '{print $3}'`
echo ""
echo ""
echo "Captured requirements from CLI:"
echo "Docker image - $docker_image"
echo "repo type - $build_type"
echo "Version - $acs_version"
echo "Volume name - $volume_name"
echo "Local docker output_dir - $local_docker_output_dir"
echo ""
echo "Starting Docker Container"


if [ -d "$local_docker_output_dir" ]; then rm -rf $local_docker_output_dir; fi
mkdir -p $local_docker_output_dir

docker volume create tmp_apidocs

# command to skip startup.sh to aid testing
#docker run -it --entrypoint /bin/bash -v $container_output_dir:$local_docker_output_dir --env build_type=$build_type --env acs_version=$acs_version --env container_output_dir=$container_output_dir $docker_image
docker run -v myvol2:$container_output_dir --env build_type=$build_type --env acs_version=$acs_version --env volume_name=$volume_name $docker_image

cp -R /var/lib/docker/volumes/tmp_apidocs/_data/* $local_docker_output_dir/


echo ""
echo "Stopping running containers"
running_containers=`docker container ls -a | grep -v CONTAINER | grep -v 'Up ' | awk '{print $1}'`
rc_array=($running_containers)
for i in "${!rc_array[@]}"; do
    echo ${rc_array[$i]}
  docker container stop ${rc_array[$i]}
done


echo ""
echo "Cleaning up containers"
orphan_containers=`docker container ls -a | grep -v CONTAINER | awk '{print $1}'`
oc_array=($orphan_containers)
for i in "${!oc_array[@]}"; do
    echo ${oc_array[$i]}
  docker container rm ${oc_array[$i]}
done

docker container stop $container_id || true
docker container rm $container_id ||true
docker volume rm tmp_apidocs
# reminders
# -d = detached mode
