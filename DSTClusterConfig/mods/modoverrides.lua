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
}
