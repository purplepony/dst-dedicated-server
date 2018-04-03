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
  ["workshop-1181077385"]={ configuration_options={  }, enabled=true },
  ["workshop-1217385169"]={ configuration_options={  }, enabled=true },
  ["workshop-1166220990"]={ configuration_options={ language=2 }, enabled=true },
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
}
