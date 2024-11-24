ModUtil.LoadOnce(function()
	----------------------------------------------
	--forces Demeter to not appear before Poseidon
	----------------------------------------------
	LootSetData.Demeter.DemeterUpgrade.GameStateRequirements =
	{
	  {
		Path = { "GameState", "UseRecord" },
		HasAny = { "PoseidonUpgrade" }
	  }
	}
	-------------------------------------------
	--forces first Poseidon boon to have Breaker Sprint
	-------------------------------------------
	LootSetData.Poseidon.PoseidonUpgrade.PriorityUpgrades = {"PoseidonSprintBoon"}
	end)
	---------------------
	--adds modded warning
	---------------------
	table.insert(ScreenData.HUD.ComponentData.Order, "Sandwichie123SpeedrunningWarning")
	ScreenData.HUD.ComponentData["Sandwichie123SpeedrunningWarning"] = {
	  X = 1700,
	  Y = 135,
	  GroupName = "HUD_Main",
	  TextArgs = {
		Text = "FF MODDED",
		Font = "NumericP22UndergroundSCMedium",
		FontSize = 20,
		Justification = "Left",
		OffsetX = 0,
		OffsetY = 0,
	  }
	}
