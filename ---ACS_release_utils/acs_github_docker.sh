#!/bin/bash

#   docker system prune -fa

#DOCKER_BUILDKIT=1 docker build --tag=acsn:0.1 . && img=`docker image ls | grep acsn | grep 0.1 | awk '{print $3}'` && docker run -it --entrypoint /bin/bash --env-file ./env.vars $img
#DOCKER_BUILDKIT=1 docker build --tag=acsn:0.1 . && img=`docker image ls | grep acsn | grep 0.1 | awk '{print $3}'` && docker run --rm -it --env-file ./env.vars $img
#docker run -v $(PWD)/local-dir/:/path/to/results/dir (...rest of the command..)


localimage="proutput-$RANDOM"
volume_name="PRs"
container_mount_dir="/tmp/PRs"
local_docker_output_dir="/tmp/PRs"

echo "Starting Docker Container"
#remote_output_dir="`grep  'tmp_dir=' ./env.vars | awk -F '=' '{print $2}'`/dockeroutput"

DOCKER_BUILDKIT=1 docker build --tag $localimage .
docker_image=`docker image ls | grep $localimage | awk '{print $3}'`

docker run -v $volume_name:$container_mount_dir --env-file ./env.vars $docker_image

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
