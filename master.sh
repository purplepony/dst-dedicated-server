#! /bin/bash

if [ -z $1 ]; then
  cluster_name="TheAbyss"
else
  cluster_name="$1"
fi

# Install DST server if not present, update if it's already installed.
pushd ~ 1&>/dev/null
./steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/dst/server_dst +app_update 343050 validate +quit
popd 1&>/dev/null

cd ~/server_dst/bin
./dontstarve_dedicated_server_nullrenderer -console -cluster $cluster_name -shard Master
