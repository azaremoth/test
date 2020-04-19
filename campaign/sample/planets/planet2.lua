--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/arid01.png"
	
	local planetData = {
		predownloadMap = true,	
		name = "Chac", 
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.20,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.765,
			hintText = "Click this planet to begin.",
			hintSize = {402, 100},		
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "7650 km",
			primary = "Zeta Aurigae",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[We found kind of a bug nest and will build a base here, construct solars, metal extractors and barracks, hire marines and hunt down all xenosects! Let's kick some bug asses!]]		},
		tips = {
			{
				image = "unitpics/euf_constructor.png",
				text = [[This little robot is building all you tier 1 buildings.]]
			},		
			{
				image = "unitpics/euf_barracks.png",
				text = [[Your soldiers are trained here. Use the barracks to raise an army.]]
			},
			{
				image = "unitpics/euf_solar.png",
				text = [[Solar collectors are your basic energy supply to power your metal extractors and any production.]]
			},
			{
				image = "unitpics/euf_metalextractor_lvl1.png",
				text = [[Your metal extractors generate resources for production of units and buidlings. They needs sufficient energy to work efficiently.]]
			},			
		},
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.101",
			mapName = "Badlands 2.1",
			missionStartscript = false,			
			playerConfig = {
				startX = 500,
				startZ = 3500,
				allyTeam = 0,
				startMetal = 1000,
				startEnergy = 1000,
				commanderParameters = {	},
				extraUnlocks = {
					'euf_scoutdrone',
					'euf_marine',
					'euf_storage',
					'euf_sarge',					
					'euf_radar_lvl1',
				},
				commander = false,
				startUnits = {
					{ name = 'euf_constructor', x = 380, z = 3600, facing = 0, },
					{ name = 'euf_sarge', x = 620, z = 3700, facing = 2, },
					{ name = 'euf_marine', x = 780, z = 3000, facing = 2, },
					{ name = 'euf_marine', x = 800, z = 3020, facing = 2, },
					{ name = 'euf_marine_laser', x = 760, z = 3000, facing = 2, },
					{ name = 'euf_marine_laser', x = 820, z = 3020, facing = 2, },					
					{ name = 'euf_sniper', x = 560, z = 3000, facing = 2, },
					{ name = 'euf_sniper', x = 620, z = 3020, facing = 2, },	
				}
			},
			modoptions = { },
			initialWrecks = {

					{ name = 'moonrock1', x = 1762, z = 3015, facing = 0, },
					{ name = 'moonrock1', x = 1935, z = 2874, facing = 0, },
					{ name = 'moonrock1', x = 3114, z = 1815, facing = 0, },
					{ name = 'moonrock1', x = 3976, z = 330, facing = 0, },
					{ name = 'moonrock1', x = 474, z = 2146, facing = 3, },
					{ name = 'moonrock2', x = 1300, z = 2105, facing = 0, },
					{ name = 'moonrock2', x = 1816, z = 3040, facing = 3, },
					{ name = 'moonrock2', x = 1836, z = 2681, facing = 0, },
					{ name = 'moonrock2', x = 2016, z = 2978, facing = 0, },
					{ name = 'moonrock2', x = 3053, z = 1731, facing = 3, },
					{ name = 'moonrock2', x = 3919, z = 236, facing = 0, },
					{ name = 'moonrock2', x = 963, z = 2227, facing = 0, },
					{ name = 'moonrock3', x = 1237, z = 2124, facing = 0, },
					{ name = 'moonrock3', x = 1784, z = 2673, facing = 0, },
					{ name = 'moonrock3', x = 2067, z = 2977, facing = 0, },
					{ name = 'moonrock3', x = 3022, z = 1812, facing = 0, },
					{ name = 'moonrock3', x = 532, z = 2095, facing = 3, },
					{ name = 'moonrock4', x = 2027, z = 2921, facing = 0, },
					{ name = 'moonrock4', x = 3055, z = 1765, facing = 0, },
					{ name = 'moonrock4', x = 3102, z = 1704, facing = 0, },
					{ name = 'moonrock4', x = 3897, z = 308, facing = 0, },
					{ name = 'moonrock4', x = 502, z = 2034, facing = 3, },
					{ name = 'moonrock5', x = 1752, z = 3091, facing = 0, },
					{ name = 'moonrock5', x = 1827, z = 2585, facing = 0, },
					{ name = 'moonrock5', x = 1860, z = 2939, facing = 0, },
					{ name = 'moonrock5', x = 3994, z = 421, facing = 0, },
					{ name = 'moonrock5', x = 937, z = 2288, facing = 3, },
			
			},
			aiConfig = {
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = "spawner", x = 2050, z = 2050, facing = 0, difficultyAtLeast = 2,  },
						{ name = "spawner", x = 1810, z = 2295, facing = 0, difficultyAtLeast = 2,  },
						{ name = "spawner", x = 2251, z = 1831, facing = 0, difficultyAtLeast = 2,  },
						{ name = "spawner", x = 3392, z = 2455, facing = 0, difficultyAtLeast = 3,  },
						{ name = "spawner", x = 1391, z = 700, facing = 0, difficultyAtLeast = 3,  },		
						{ name = "spawner", x = 1943, z = 414, facing = 0, difficultyAtLeast = 4,  },	
						{ name = "spawner", x = 1943, z = 414, facing = 0, difficultyAtLeast = 4,  },

						{ name = 'bug_cocoon', x = 3400, z = 248, facing = 0, },
						{ name = 'bug_cocoon', x = 3432, z = 600, facing = 1, },
						{ name = 'bug_cocoon', x = 3448, z = 488, facing = 2, },
						{ name = 'bug_cocoon', x = 3512, z = 872, facing = 3, },
						{ name = 'bug_cocoon', x = 3612, z = 922, facing = 0, },
						{ name = 'bug_cocoon', x = 3544, z = 696, facing = 1, },
						{ name = 'bug_cocoon', x = 3576, z = 552, facing = 2, },
						{ name = 'bug_cocoon', x = 3592, z = 440, facing = 3, },
						{ name = 'bug_cocoon', x = 3656, z = 344, facing = 0, },
						{ name = 'bug_cocoon', x = 3688, z = 648, facing = 1, },
						{ name = 'bug_cocoon', x = 3704, z = 488, facing = 2, },
						{ name = 'bug_cocoon', x = 3832, z = 488, facing = 3, },
						{ name = 'bug_cocoon', x = 3864, z = 856, facing = 0, },
						{ name = 'bug_egg', x = 1712, z = 320, facing = 0, },
						{ name = 'bug_egg', x = 1808, z = 256, facing = 1, },
						{ name = 'bug_egg', x = 3184, z = 160, facing = 2, },
						{ name = 'bug_egg', x = 3216, z = 640, facing = 3, },
						{ name = 'bug_egg', x = 3280, z = 896, facing = 0, },
						{ name = 'bug_egg', x = 3312, z = 784, facing = 1, },
						{ name = 'bug_egg', x = 3328, z = 480, facing = 2, },
						{ name = 'bug_egg', x = 3344, z = 288, facing = 3, },
						{ name = 'bug_egg', x = 3392, z = 160, facing = 0, },
						{ name = 'bug_egg', x = 3424, z = 752, facing = 1, },
						{ name = 'bug_egg', x = 3520, z = 400, facing = 2, },
						{ name = 'bug_egg', x = 3552, z = 1200, facing = 3, },
						{ name = 'bug_egg', x = 3584, z = 544, facing = 0, },
						{ name = 'bug_egg', x = 3632, z = 832, facing = 1, },
						{ name = 'bug_egg', x = 3664, z = 464, facing = 2, },
						{ name = 'bug_egg', x = 3696, z = 272, facing = 3, },
						{ name = 'bug_egg', x = 3840, z = 1088, facing = 0, },
						{ name = 'bug_egg', x = 3872, z = 672, facing = 1, },
						{ name = 'bug_egg', x = 4000, z = 1520, facing = 2, },

						{ name = 'bug_big', x = 2164.32642, z = 323.036194, facing = 0, },
						{ name = 'bug_big', x = 2205.52173, z = 1868.33545, facing = 1, },
						{ name = 'bug_big', x = 2480.21924, z = 2146.74902, facing = 2, },
						{ name = 'bug_big', x = 3410.6272, z = 2591.73169, facing = 3, },
						{ name = 'bug_larva', x = 1229.11816, z = 762.821289, facing = 0, },
						{ name = 'bug_larva', x = 1328.38171, z = 469.973755, facing = 2, },
						{ name = 'bug_larva', x = 1533.21765, z = 1081.11816, facing = 1, },
						{ name = 'bug_larva', x = 1534.24304, z = 573.374146, facing = 0, },
						{ name = 'bug_larva', x = 2136.75269, z = 1930.5564, facing = 0, },
						{ name = 'bug_larva', x = 2374.49487, z = 2960.31274, facing = 1, },
						{ name = 'bug_larva', x = 2774.81299, z = 956.010498, facing = 0, },
						{ name = 'bug_larva', x = 2991.02051, z = 581.429077, facing = 1, },
						{ name = 'bug_larva', x = 3190.40039, z = 848.625244, facing = 0, },
						{ name = 'bug_larva', x = 3240.5376, z = 1099.24463, facing = 0, },
						{ name = 'bug_larva', x = 3389.70386, z = 547.272705, facing = 1, },
						{ name = 'bug_larva', x = 3428.1853, z = 1392.87488, facing = 0, },
						{ name = 'bug_larva', x = 3510.61401, z = 1055.91101, facing = 1, },
						{ name = 'bug_larva', x = 3594.85596, z = 1291.42737, facing = 2, },
						{ name = 'bug_larva', x = 3710.73901, z = 369.391235, facing = 3, },
						{ name = 'bug_med', x = 1100, z = 2800, facing = 1, },						
						{ name = 'bug_med', x = 1895.18726, z = 3882.18091, facing = 1, },
						{ name = 'bug_med', x = 1928.56567, z = 2268.16504, facing = 0, },
						{ name = 'bug_med', x = 2558.6001, z = 3624.72754, facing = 2, },
						{ name = 'bug_med', x = 2918.83008, z = 926.624023, facing = 3, },
						{ name = 'bug_med', x = 2981.69531, z = 1592.6344, facing = 0, },
						{ name = 'bug_med', x = 3223.28369, z = 96.0878296, facing = 1, },
						{ name = 'bug_med', x = 3242.14893, z = 1240.52551, facing = 3, },
						{ name = 'bug_med', x = 3908.04395, z = 917.452515, facing = 2, },
						{ name = 'bug_med', x = 463.322021, z = 1780.00317, facing = 0, },
					},
					midgameUnits = {

						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 25500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 29100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 32700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 36300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 39900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 43500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 47100, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 50700, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 54300, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_med', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 2,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 3,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 57900, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 4,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_big', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
						{ name = 'bug_larva', x = 2500, z = 2000, facing = 0, spawnRadius = 0, delay = 61500, orbitalDrop = false, patrolRoute = {{2800, 3500}, {350, 3700}, {1400, 500}, {3700, 400}, }, difficultyAtLeast = 1,  },
					
					},
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Hunt down all those Xenosects",
				},				
			},
			bonusObjectiveConfig = { },
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				'euf_scoutdrone',
				'euf_marine',
				'euf_storage',
				'euf_radar_lvl1',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
