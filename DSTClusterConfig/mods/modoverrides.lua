-- Use this file to enable and configure your mods. The mod will only be available in the game
-- if you set "enabled=true"!!!
--
-- Also, during the container startup this file will be copied to both Master/ and Caves/ folders. What's setup here
-- will be available in both shards!

return {
-- Nanachi
  ["workshop-1166220990"]={ configuration_options={ attract=1, language=1 }, enabled=true },
-- Riko
  ["workshop-1181077385"]={ configuration_options={ language=2 }, enabled=true },
-- Reg
  ["workshop-1217385169"]={ configuration_options={  }, enabled=true },
-- Finder Mod
  ["workshop-786654500"]={ configuration_options={ active=true }, enabled=true },
-- Global positions
  ["workshop-378160973"]={
    configuration_options={
      ENABLEPINGS=true,
      FIREOPTIONS=2,
      OVERRIDEMODE=false,
      SHAREMINIMAPPROGRESS=true,
      SHOWFIREICONS=true,
      SHOWPLAYERICONS=true,
      SHOWPLAYERSOPTIONS=2 
    },
    enabled=true 
  },
-- Ownership
--  ["workshop-404161345"]={
--    configuration_options={
--      Allow_Harvesting="true",
--      Drop_Content="true",
--      Fortify_Building=0,
--      Ownership="Multi",
--      Player_Trap="false",
--      Share_Container="false",
--      Share_Equipments="true" 
--    },
--    enabled=true 
--  },
-- Modify Ownership
--  ["workshop-599501490"]={
--    configuration_options={
--      Add_Allow=true,
--      Add_AllowOnlineOnly=false,
--      DefaultModifyMode=false,
--      Del_Allow=true,
--      Del_AllowLast=true,
--      LogLevel=3,
--      MaxOwners=10,
--      MaxOwnersWarn=8,
--      ModCmds=false,
--      Win_Position="left",
--      keybind=0,
--      keybind_server=111 
--    },
--    enabled=true 
--  },
-- Super Walls
--  ["workshop-785295023"]={
--    configuration_options={
--      bossres=true,
--      companion=true,
--      dist=2.5,
--      language="AUTO",
--      minimapicon=false,
--      ownership=1,
--      rebounddmg=10,
--      recipe="normal",
--      recipe_door=true,
--      recipe_fence=true,
--      recipe_tool=true,
--      recipe_vanilla=false,
--      recipe_wall=true 
--    },
--    enabled=true 
--  }
}
