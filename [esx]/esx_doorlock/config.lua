Config = {}
	
	----------------
	-- Pickle Rental
	----------------
	-- Voordeur 1
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-21.71276, -1392.778, 29.63847),		
		textCoords = vector3(-22.31276, -1392.778, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = -180.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},	
	-- Voordeur 2
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-32.67987, -1392.064, 29.63847),		
		textCoords = vector3(-32.10987, -1392.064, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 0.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		size = 2
	},	
	-- Deur naar kelder
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-24.22668, -1403.067, 29.63847),				
		textCoords = vector3(-24.22668, -1402.537, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 90.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
		size = 2
	},	
	-- Achterdeur
	{
		objName = 'apa_prop_apa_cutscene_doorb',
		objCoords  = vector3(-21.27107, -1406.845, 29.63847),			
		textCoords = vector3(-21.27107, -1406.245, 29.63847),
		authorizedJobs = { 'cardealer' },
		objYaw = 90.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},		
	-- Roldeur
	{
		objName = 'prop_com_gar_door_01',
		objCoords  = vector3(-21.04025, -1410.734, 30.51094),			
		textCoords = vector3(-21.04025, -1410.734, 30.51094),
		authorizedJobs = { 'cardealer' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 15.0,
		size = 2
	},

    -- Taco Doors
	{
        objName = 'taco_drzwi',
        objYaw = -40.0,
        objCoords  = vector3(12.93, -1605.17, 29.37),
        textCoords = vector3(12.93, -1605.17, 29.37),
        authorizedJobs = {'taco', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
    },

	{
        objName = 'taco_drzwi',
        objYaw = -40.0,
        objCoords  = vector3(19.27, -1599.36, 29.36),
        textCoords = vector3(19.27, -1599.36, 29.36),
        authorizedJobs = {'taco', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
    },

	{
        objName = 'taco_drzwi',
        objYaw = 50.0,
        objCoords  = vector3(8.54, -1600.23, 29.39),
        textCoords = vector3(8.54, -1600.23, 29.39),
        authorizedJobs = {'taco', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
    },

	{
        objName = 'taco_drzwi',
        objYaw = 50.0,
        objCoords  = vector3(20.41, -1604.92, 29.39),
        textCoords = vector3(19.9, -1604.7, 29.39),
        authorizedJobs = {'taco', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
    },

	{
        objName = 'taco_drzwi',
        objYaw = -40.0,
        objCoords  = vector3(17.26, -1604.39, 29.38),
        textCoords = vector3(17.26, -1604.39, 29.38),
        authorizedJobs = {'taco', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},

	-- Court House
	{
		textCoords = vector3(103.83, -932.69, 29.84),
		authorizedJobs = { 'maor', 'police', 'fib' },
		locking = false,
		locked = false,
		pickable = false,
		distance = 4,
		doors = {
			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = 70.0,
				objCoords  = vector3(103.02, -933.12, 29.84)
			},
	
			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = -108.0,
				objCoords  = vector3(104.03, -931.98, 29.84)
			}
		}
	},

	-- Unicorn Vanillia Doors

	-- Front
	{
		objName = 'prop_strip_door_01',
		objCoords = vector3(128.93, -1298.79, 29.23),
		textCoords = vector3(128.9, -1298.52, 29.23),
		authorizedJobs = { 'unicorn', 'fib' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- Back
	{
		objName = 'prop_magenta_door',
		objCoords = vector3(94.93, -1284.44, 29.27),
		textCoords = vector3(95.69, -1285.47, 29.27),
		authorizedJobs = { 'unicorn', 'fib' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},
	-- Boss/Staff Room
	{
		objName = 'v_ilev_roc_door2',
		objCoords = vector3(100.21, -1293.68, 29.27),
		textCoords = vector3(99.56, -1292.71, 29.27),
		authorizedJobs = { 'unicorn', 'fib' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},


	-- Pillbox Medical Center

	{
		textCoords = vector3(348.56, -587.38, 44.28),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = 250.0,
				objCoords  = vector3(349.134, -586.8831, 43.28402)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = -110.0,
				objCoords  = vector3(348.6142, -588.1655, 43.28402)
			}
		}
	},

	{
		objName = 'gabz_pillbox_singledoor',
		objCoords = vector3(308.5733, -597.5756, 43.28403),
		textCoords = vector3(308.5733, -597.5756, 43.28403),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},

	{
		objName = 'gabz_pillbox_singledoor',
		objCoords = vector3(340.1134, -586.6057, 44.28398),
		textCoords = vector3(340.1134, -586.6057, 44.28398),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},

	{
		objName = 'gabz_pillbox_singledoor',
		objCoords = vector3(360.9867, -589.8188, 44.28403),
		textCoords = vector3(360.9867, -589.8188, 44.28403),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2
	},

	-- Pillbox Surgery #1
	{
		textCoords = vector3(313.35, -571.63, 44.29),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = -20.0,
				objCoords  = vector3(312.7201, -571.6296, 43.28402)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = -20.0,
				objCoords  = vector3(313.8816, -571.9534, 43.28402)
			}
		}
	},

	{
		textCoords = vector3(326.55, -579.42, 43.28),
		authorizedJobs = { 'ambulance', 'offambulance'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = 250.0,
				objCoords  = vector3(326.54, -578.91, 43.28402)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = 250.0,
				objCoords  = vector3(326.54, -580.04, 43.28402)
			}
		}
	},

	{
		textCoords = vector3(325.55, -589.02, 43.28),
		authorizedJobs = { 'ambulance', 'offambulance'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = -20.0,
				objCoords  = vector3(324.91, -589.02, 43.28)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = -20.0,
				objCoords  = vector3(326.16, -589.02, 43.28)
			}
		}
	},

	-- Pillbox Surgery #2

	{
		textCoords = vector3(319.2, -573.24, 44.29),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = -20.0,
				objCoords  = vector3(318.4946, -573.7322, 43.28399)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = -20.0,
				objCoords  = vector3(319.6151, -574.2166, 43.28405)
			}
		}
	},

	{
		textCoords = vector3(324.44, -575.64, 44.29),
		authorizedJobs = { 'police', 'ambulance', 'offambulance', 'fib'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		size = 2,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				objYaw = -20.0,
				objCoords  = vector3(323.8446, -575.741, 43.284)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				objYaw = -20.0,
				objCoords  = vector3(325.0642, -576.1204, 43.284)
			}
		}
	},
	
}