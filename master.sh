#! /bin/bash

if [ -z $1 ]; then
  cluster_name="TheAbyss"
else
  cluster_name="$1"
fi

cd ~/server_dst/bin
./dontstarve_dedicated_server_nullrenderer -console -cluster $cluster_name -shard Master
