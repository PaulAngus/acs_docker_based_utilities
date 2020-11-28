#!/bin/bash


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