#!/bin/bash

#docker_image="$1"
#build_status="$2"
#acs_version="$3"
#volume_name="$4"
#local_docker_output_dir="$5"
#container_mount_dir="$6"
localimage="apidocs-$RANDOM"

docker build --tag $localimage .

build_type="tag"
acs_version="master"
volume_name="apidocs"
container_mount_dir="/tmp/apihtml"
local_docker_output_dir="/tmp/apidocs_html"
docker_image=`docker image ls | grep $localimage | awk '{print $3}'`

echo ""
echo ""
echo "Captured requirements from CLI:"
echo ""
echo "Docker image - $docker_image"
echo "repo type - $build_type"
echo "Version - $acs_version"
echo "Volume name - $volume_name"
echo "Local docker output_dir - $local_docker_output_dir"
echo "container_mount_dir - $container_mount_dir"
echo ""
echo "Starting Docker Container"


if [ -d "$local_docker_output_dir" ]; then rm -rf $local_docker_output_dir; fi
mkdir -p $local_docker_output_dir

#docker volume create $volume_name

# command to skip startup.sh to aid testing
#docker run -it -v $volume_name:$container_mount_dir --env build_type=$build_type --env acs_version=$acs_version --env volume_name=$volume_name --env container_mount_dir=$container_mount_dir --entrypoint /bin/bash $docker_image

docker run -v $volume_name:$container_mount_dir --env build_type=$build_type --env acs_version=$acs_version --env volume_name=$volume_name --env container_mount_dir=$container_mount_dir $docker_image

running_container=`docker container ls -a | grep -v CONTAINER | grep -v 'Up ' | awk '{print $1}'`
docker wait running_container
cp -R /var/lib/docker/volumes/$volume_name/_data/* $local_docker_output_dir/


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

echo ""
echo "Cleaning up images"
orphan_images=`docker image ls | grep apidoc | awk '{print $3}'`
oi_array=($orphan_images)
for i in "${!oi_array[@]}"; do
    echo ${oi_array[$i]}
  docker image rm ${oi_array[$i]}
done

echo ""
echo "Cleaning up volumes"
orphan_volumes=`docker volume ls | grep -v "VOLUME" | awk '{print $2}'`
ov_array=($orphan_volumes)
for i in "${!ov_array[@]}"; do
    echo ${ov_array[$i]}
  docker volume rm ${ov_array[$i]}
done

# reminders
# -d = detached mode
