-- Use this file to enable and configure your mods. The mod will only be available in the game
-- if you set "enabled=true"!!!
--
-- Also, during the container startup this file will be copied to both Master/ and Caves/ folders. What's setup here
-- will be available in both shards!
--
-- See the example below:

return {
  -- ["workshop-000000000"]={
  --   configuration_options={
  --     ["CustomModSetting"]="value"
  --   },
  --   enabled=true
  -- },
  -- Riko (custom character from Made in Abyss anime) - https://steamcommunity.com/sharedfiles/filedetails/?id=1181077385
  ["workshop-1181077385"]={ configuration_options={  }, enabled=true },
  -- Reg (custom character from Made in Abyss anime) - https://steamcommunity.com/sharedfiles/filedetails/?id=1217385169
  ["workshop-1217385169"]={ configuration_options={  }, enabled=true },
  -- Nanachi (custom character from Made in Abyss anime) - https://steamcommunity.com/sharedfiles/filedetails/?id=1166220990
  ["workshop-1166220990"]={ configuration_options={ language=2 }, enabled=true },
  -- Global positions mod - https://steamcommunity.com/sharedfiles/filedetails/?id=378160973
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
  -- Finder mod (helps managing resources by highlighting chests with active item) - https://steamcommunity.com/sharedfiles/filedetails/?id=786654500
  ["workshop-786654500"]={ configuration_options={ active=true }, enabled=true }
  -- Super Wall DST mod - Optional, potentially overkill method to deal with griefers. Can even be used in PvP mode. https://steamcommunity.com/sharedfiles/filedetails/?id=785295023
  ["workshop-785295023"]={
    configuration_options={
      -- Specifies whether the wall is invincible. If enabled (true), wall cannot be destroyed by meteors, explosions, or bosses like Deerclops.
      bossres=true,
      -- Specifies whether doors will open for companions such as Chester.
      companion=false,
      -- Distance from which doors will open.
      dist=2.5,
      -- Language for mod tooltips in user interface. Use "EN" for English.
      language="EN",
      -- Minimap Icon
      minimapicon=false,
      -- Determines whether players can be prevented from destroying walls or using/destroying doors without authorization.
      -- Very useful for stopping griefers. Use "1" to enable access control or "0" to disable it. If enabled, this setting
      -- will prevent anyone other than the ORIGINAL BUILDER from using or destroying a wall/door.
      ownership=1,
      -- Generally overpowered, especially if walls are also invincible. If enabled, walls will retaliate with the damage specified in here. Can quickly kill bosses like Deerclops.
      rebounddmg=0,
      -- Optionally make recipe far more expensive by adding Electric Doodads to the requirements.
      recipe="normal",
      -- Optionally allow vanilla (no mod) walls to be crafted, in addition to the "super" walls and doors.
      recipe_vanilla=false,
      -- These settings determine whether each individual mod-specific item can be crafted.
      recipe_door=true,
      recipe_fence=true,
      recipe_tool=true,
      recipe_wall=true
    },
    enabled=true 
  },
}
