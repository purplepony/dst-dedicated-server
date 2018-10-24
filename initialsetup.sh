#!/bin/bash

# Check for game updates before each start. If the game client updates and your server is out of date, you won't be
# able to see it on the server list. If that happens just restart the containers and you should get the latest version

CLUSTER_NAME="TheAbyss" # This is unique to the server cluster instance, and determines where files will be stored.
GIT_PATH="dst-dedicated-server" # Change this if you choose to use a path other than the default from running git command in your home folder. It's relative to your home folder.

if [ ! -f "$HOME/steamcmd.sh" ]; then
  echo "Steam command-line tools not found. Downloading..."
  pushd ~ 1&>/dev/null # Following https://developer.valvesoftware.com/wiki/SteamCMD#Downloading_SteamCMD
  curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz" | tar zxvf -
  popd 1&>/dev/null
fi

# Install DST server if not present, update if it's already installed.
pushd ~ 1&>/dev/null
./steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/dst/server_dst +app_update 343050 validate +quit
popd 1&>/dev/null

# Set up cluster for forest and cave shards.
CLUSTER_PATH="$HOME/.klei/DoNotStarveTogether/$CLUSTER_NAME"
if [ ! -d "$CLUSTER_PATH" ]; then
  mkdir $CLUSTER_PATH
  mkdir $CLUSTER_PATH/Master
  mkdir $CLUSTER_PATH/Caves
  cp $HOME/$GIT_PATH/DSTClusterConfig/cluster.ini $CLUSTER_PATH/
  cp $HOME/$GIT_PATH/DSTClusterConfig/Master/server.ini $CLUSTER_PATH/Master/
  cp $HOME/$GIT_PATH/DSTClusterConfig/Caves/server.ini $CLUSTER_PATH/Caves/
fi

# Configure server to use mods specified by Git.
cp $HOME/$GIT_PATH/DSTClusterConfig/mods/modoverrides.lua $CLUSTER_PATH/Master/
cp $HOME/$GIT_PATH/DSTClusterConfig/mods/modoverrides.lua $CLUSTER_PATH/Caves/
cp $HOME/$GIT_PATH/DSTClusterConfig/mods/dedicated_server_mods_setup.lua $HOME/server_dst/mods/

# Look for cluster_token key in home folder, if none is present.
if [ ! -f "$CLUSTER_PATH/cluster_token.txt" ]; then
  echo "Using cluster_token.txt placed in $HOME for activation key."
  cp $HOME/cluster_token.txt $HOME/.klei/DoNotStarveTogether/$CLUSTER_NAME/
fi

echo "Finished setup. Now proceed to run main world server and cave server in separate terminal sessions."
