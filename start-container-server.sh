#!/bin/bash

# Check for game updates before each start. If the game client updates and your server is out of date, you won't be
# able to see it on the server list. If that happens just restart the containers and you should get the latest version
if [ ! -f /home/dst/steamcmd.sh ]; then
  echo "Steam command-line tools not found. Downloading..."
  pushd ~ 1&>/dev/null # Following https://developer.valvesoftware.com/wiki/SteamCMD#Downloading_SteamCMD
  curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz" | tar zxvf -
  popd 1&>/dev/null
fi
/home/dst/steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/dst/server_dst +app_update 343050 validate +quit

# Configure server to use mods folder provided from Git.
if [ ! -d "$HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/" ]; then
  ln -s $HOME/dst-dedicated-server/DSTClusterConfig/mods $HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/
fi

# Copy dedicated_server_mods_setup.lua
ds_mods_setup="$HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/mods/dedicated_server_mods_setup.lua"
if [ -f "$ds_mods_setup" ]
then
  echo "Found $ds_mods_setup"
  cp $ds_mods_setup "$HOME/server_dst/mods/"
else
  echo "No server_mods_setup.lua found."
fi

# Copy modoverrides.lua
modoverrides="$HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/mods/modoverrides.lua"
if [ -f "$modoverrides" ]
then
  echo "Found $ds_mods_setup"
  cp $modoverrides "$HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/Master/"
  cp $modoverrides "$HOME/.klei/DoNotStarveTogether/DSTWhalesCluster/Caves/"
else
  echo "No modoverrides.lua found."
fi

cd $HOME/server_dst/bin
./dontstarve_dedicated_server_nullrenderer -cluster DSTWhalesCluster -shard "$SHARD_NAME"
