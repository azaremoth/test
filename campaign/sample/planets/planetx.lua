--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/terran03.png"
	
	local planetData = {
		predownloadMap = true, 
		name = "Hurakan",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.40,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*1.00,
			hintText = "Keep taking planets until you conquer the galaxy.",
			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "10100 km",
			primary = "Zeta Aurigae",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[Separatists are attacking critical infrastructure on this planet. They did even establish defences, before we could react. We can keep them busy, but we need you to take out the anti-air towers. Then heavy air support can eliminate the defenses.]]		},
		tips = {		},
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.103",
			mapName = "Mescaline_V2",
			missionStartscript = false,			
			playerConfig = {
				startX = 500,
				startZ = 500,
				allyTeam = 0,
				startMetal = 500,
				startEnergy = 500,
				commanderParameters = {	},
				extraUnlocks = {},
				commander = false,
				startUnits = {
--					{ 	name = 'euf_sarge', x = 230, z = 1800, facing = 1, },				
					{	name = "euf_transport_mis",	x = 300, z = 1850, facing = 1,  },
				},
				midgameUnits = {
					{ name = 'euf_transport_mis', x = 400, z = 1850, facing = 0, spawnRadius = 0, delay = 6*30, orbitalDrop = false,  },
				},
			},
			modoptions = { },
						
			initialWrecks = {
						{ name = 'containertype1', x = 4462, z = 640, facing = 0, },
						{ name = 'containertype3', x = 4384, z = 641, facing = 0, },
						{ name = 'containertype3', x = 4503, z = 639, facing = 0, },
						{ name = 'containertype4', x = 4423, z = 641, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 2748, z = 1136, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 2813, z = 732, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 2833, z = 914, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 2902, z = 1247, facing = 3, },
						{ name = 'euf_tanktrap_1', x = 2922, z = 976, facing = 2, },
						{ name = 'euf_tanktrap_1', x = 2939, z = 1063, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 2995, z = 750, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 3005, z = 1129, facing = 3, },
						{ name = 'euf_tanktrap_1', x = 3069, z = 1216, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 3075, z = 1035, facing = 3, },
						{ name = 'euf_tanktrap_1', x = 3101, z = 906, facing = 2, },
						{ name = 'euf_tanktrap_1', x = 3137, z = 1322, facing = 0, },
						{ name = 'euf_tanktrap_1', x = 3236, z = 1110, facing = 0, },
						{ name = 'euf_tanktrap_2', x = 2745, z = 1255, facing = 1, },
						{ name = 'euf_tanktrap_2', x = 2747, z = 1022, facing = 1, },
						{ name = 'euf_tanktrap_2', x = 2747, z = 840, facing = 0, },
						{ name = 'euf_tanktrap_2', x = 2866, z = 1222, facing = 3, },
						{ name = 'euf_tanktrap_2', x = 2906, z = 840, facing = 2, },
						{ name = 'euf_tanktrap_2', x = 2962, z = 1340, facing = 2, },
						{ name = 'euf_tanktrap_2', x = 3080, z = 800, facing = 0, },
						{ name = 'euf_tanktrap_2', x = 3146, z = 1187, facing = 0, },
						{ name = 'euf_tanktrap_2', x = 3217, z = 973, facing = 3, },
						{ name = 'pipe_long_1', x = 4672, z = 1027, facing = 0, },
			},	
			
			aiConfig = {
				{
					startX = 2000,
					startZ = 200,
					aiLib = "NO AI",
					humanName = "Ally",
					allyTeam = 0,
					unlocks = {	},
					startUnits = {
						{ name = 'euf_aatower_survival', x = 1080, z = 1032, facing = 0, },
						{ name = 'euf_aatower_survival', x = 1624, z = 1032, facing = 0, },
						{ name = 'euf_aatower_survival', x = 312, z = 680, facing = 0, },
						{ name = 'euf_aatower_survival', x = 344, z = 1368, facing = 0, },
						{ name = 'euf_aatower_survival', x = 568, z = 1048, facing = 0, },
						{ name = 'euf_aatower_survival', x = 1352, z = 1032, facing = 0, },
						{ name = 'euf_barracks_ai', x = 490, z = 1390, facing = 2, },
						{ name = 'euf_barracks_ai', x = 660, z = 1390, facing = 2, },
						{ name = 'euf_bunker_ai', x = 1872, z = 1152, facing = 0, },
						{ name = 'euf_bunker_ai', x = 1872, z = 896, facing = 2, },
						{ name = 'euf_constructor_mis', x = 1680, z = 875, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {1780, 1190}},	}, },
						{ name = 'euf_constructor_mis', x = 1680, z = 1190, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {1780, 875}},	}, },
						{ name = 'euf_metalextractor_lvl1', x = 344, z = 1032, facing = 0, defeatIfDestroyedObjectiveID = 1, },
						{ name = 'euf_plasmatower_survival', x = 870, z = 1152, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 870, z = 896, facing = 0, },						
						{ name = 'euf_plasmatower_survival', x = 1768, z = 1032, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 1992, z = 1256, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 1992, z = 792, facing = 0, },
						{ name = 'euf_powerplant', x = 136, z = 1424, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 1592, z = 1288, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 1592, z = 776, facing = 0, },
						{ name = 'euf_solar', x = 512, z = 608, facing = 0, },
						{ name = 'euf_solar', x = 512, z = 704, facing = 0, },
						{ name = 'euf_solar', x = 608, z = 608, facing = 0, },
						{ name = 'euf_solar', x = 608, z = 704, facing = 0, },
						{ name = 'euf_solar', x = 704, z = 608, facing = 0, },
						{ name = 'euf_solar', x = 704, z = 704, facing = 0, },
						{ name = 'euf_storage', x = 120, z = 648, facing = 3, },
						{ name = 'euf_wall', x = 1752, z = 1112, facing = 0, },
						{ name = 'euf_wall', x = 1768, z = 1096, facing = 0, },
						{ name = 'euf_wall', x = 1784, z = 1080, facing = 0, },
						{ name = 'euf_wall', x = 1784, z = 952, facing = 0, },
						{ name = 'euf_wall', x = 1800, z = 1064, facing = 0, },
						{ name = 'euf_wall', x = 1800, z = 968, facing = 0, },
						{ name = 'euf_wall', x = 1800, z = 984, facing = 0, },
						{ name = 'euf_wall', x = 1816, z = 1000, facing = 0, },
						{ name = 'euf_wall', x = 1816, z = 1016, facing = 0, },
						{ name = 'euf_wall', x = 1816, z = 1048, facing = 0, },
						{ name = 'euf_wall', x = 1880, z = 840, facing = 0, },
						{ name = 'euf_wall', x = 1896, z = 824, facing = 0, },
						{ name = 'euf_wall', x = 1912, z = 1192, facing = 0, },
						{ name = 'euf_wall', x = 1912, z = 1224, facing = 0, },
						{ name = 'euf_wall', x = 1912, z = 808, facing = 0, },
						{ name = 'euf_wall', x = 1928, z = 1240, facing = 0, },
						{ name = 'euf_wall', x = 1928, z = 1256, facing = 0, },
						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {5000, 1000}},	}, },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {5000, 1000}},	}, },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {5000, 1000}},	}, },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {5000, 1000}},	}, },
					},
					midgameUnits = {
						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						
						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },

						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						
						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						
						{ name = 'euf_marine', x = 490, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 490, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1200, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1240, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine', x = 660, z = 1260, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },

						{ name = 'euf_scout', x = 90, z = 900, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 18*30, orbitalDrop = false,  },
						{ name = 'euf_scout', x = 75, z = 1100, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1000}},	}, spawnRadius = 0, delay = 20*30, orbitalDrop = false,  },	
						
						{ name = 'euf_bomber', x = 50, z = 1000, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1050}},	}, spawnRadius = 0, delay = 25*30, orbitalDrop = false,  },						
						
						{ name = 'euf_bomber', x = 50, z = 750, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 750}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bomber', x = 75, z = 850, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 850}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bomber', x = 100, z = 950, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 950}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bomber', x = 100, z = 1050, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1050}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bomber', x = 75, z = 1150, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1150}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bomber', x = 50, z = 1250, facing = 1, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {5000, 1250}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },

					},
				},
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = 'euf_aatower_survival', x = 3992, z = 1288, facing = 0, },
						{ name = 'euf_aatower_survival', x = 4360, z = 1016, facing = 0, },
						{ name = 'euf_aatower_survival', x = 4520, z = 1560, facing = 0, },
						{ name = 'euf_aatower_survival', x = 4536, z = 504, facing = 0, },
						{ name = 'euf_aatower_survival', x = 5000, z = 1016, facing = 0, },
						{ name = 'euf_aatower_survival', x = 5096, z = 1560, facing = 0, },
						{ name = 'euf_aatower_survival', x = 5096, z = 504, facing = 0, },
						{ name = 'euf_bunker_ai', x = 3488, z = 944, facing = 2, },
						{ name = 'euf_bunker_ai', x = 3504, z = 1120, facing = 3, },
						{ name = 'euf_constructor_mis', x = 3550, z = 875, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {3450, 1190}},	}, },
						{ name = 'euf_constructor_mis', x = 3550, z = 1190, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {3450, 875}},	}, },						
						{ name = 'euf_marine_laser', x = 5000, z = 150, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4400, 200}},		}, },
						{ name = 'euf_marine_laser', x = 5000, z = 1950, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4200, 1900}},	}, },						
						{ name = 'euf_marine_laser', x = 5000, z = 120, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4400, 200}},		}, difficultyAtLeast = 2, },
						{ name = 'euf_marine_laser', x = 5000, z = 1900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4200, 1900}},	}, difficultyAtLeast = 3, },
						{ name = 'euf_marine_laser', x = 2426, z = 959, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 2432, z = 1203, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 2433, z = 883, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 2445, z = 1125, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 5000, z = 800, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 5000, z = 820, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },
						{ name = 'euf_marine_laser', x = 5000, z = 840, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {0, 1000}},		}, },						
						{ name = 'euf_marine_laser', x = 4700, z = 1400, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4600, 600}},	}, },
						{ name = 'euf_marine_laser', x = 4700, z = 1420, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4700, 600}},	}, },
						{ name = 'euf_marine_laser', x = 4700, z = 1440, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4800, 600}},	}, difficultyAtLeast = 2, },
						{ name = 'euf_marine_laser', x = 4750, z = 1400, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4600, 600}},	}, difficultyAtLeast = 3, },
						{ name = 'euf_pyro', x = 4750, z = 1420, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4700, 600}},		}, difficultyAtLeast = 3, },
						{ name = 'euf_paladin', x = 4750, z = 1440, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4800, 600}},	}, difficultyAtLeast = 4, },
						{ name = 'euf_paladin', x = 4750, z = 1440, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.PATROL, pos = {4800, 600}},	}, difficultyAtLeast = 4, },					
						{ name = 'euf_plasmatower_survival', x = 3368, z = 1016, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 3368, z = 1176, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 3368, z = 872, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 4008, z = 760, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 1160, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 1192, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 1224, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 840, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 872, facing = 0, },
						{ name = 'euf_wall', x = 3320, z = 904, facing = 0, },
						{ name = 'euf_wall', x = 3336, z = 1144, facing = 0, },
						{ name = 'euf_wall', x = 3352, z = 1128, facing = 0, },
						{ name = 'euf_wall', x = 3352, z = 920, facing = 0, },
					},
					midgameUnits = {
						{ name = 'euf_marine_laser', x = 5000, z = 900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser', x = 5000, z = 940, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser', x = 5000, z = 960, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser', x = 5000, z = 1000, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser', x = 5000, z = 1040, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser', x = 5000, z = 1060, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 60*30, orbitalDrop = false,  },
						
						{ name = 'euf_marine_laser',  x = 5000, z = 900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 940, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 960, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_pyro',    x = 5000, z = 1000, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1040, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1060, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 3*60*30, orbitalDrop = false,  },

						{ name = 'euf_marine_laser',  x = 5000, z = 900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 940, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 960, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_sniper',  x = 5000, z = 1000, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1040, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1060, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 5*60*30, orbitalDrop = false,  },

						{ name = 'euf_marine_laser',  x = 5000, z = 880, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 890, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },						
						{ name = 'euf_marine_laser',  x = 5000, z = 900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 940, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_pyro',    x = 5000, z = 960, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_sniper',  x = 5000, z = 1000, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1040, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1060, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 7*60*30, orbitalDrop = false,  },

						{ name = 'euf_marine_laser',  x = 5000, z = 880, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 890, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },						
						{ name = 'euf_marine_laser',  x = 5000, z = 900, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_marine_laser',  x = 5000, z = 940, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_pyro',    x = 5000, z = 960, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_sniper',  x = 5000, z = 1000, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1040, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },
						{ name = 'euf_bazooka_missile', x = 5000, z = 1060, facing = 0, commands = { {cmdID = planetUtilities.COMMAND.FIGHT, pos = {0, 1000}},	}, spawnRadius = 0, delay = 9*60*30, orbitalDrop = false,  },						
					},
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {
					loseAfterSeconds = 600,
					timeLossObjectiveID = 1,				
				},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,				
					allyTeamLossObjectiveID = 1,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Destroy all enemy anti-air towers by sneaking past the defenses and jumoing on the dam far east with your Pyros before air support arrives after 10 minutes.",
				},					
			},
			bonusObjectiveConfig = {
				[1] = { 
					victoryByTime = 600,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {	},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
