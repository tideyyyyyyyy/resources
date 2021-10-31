Citizen.CreateThread(function()
	OnEnterMp() -- required to load heist ipl?
	RequestAllIpls()
end)

Citizen.CreateThread(function()
	for k,ipl in pairs(allIpls) do
		loadInterior(ipl.coords, ipl.interiorsProps, ipl.interiorsPropColors)
	end
end)

function loadInterior(coords, interiorProps, interiorsPropColors)
	for k,coords in pairs(coords) do

		local interiorID = GetInteriorAtCoords(coords[1], coords[2], coords[3])

		if IsValidInterior(interiorID) then
			PinInteriorInMemory(interiorID)

			for index,propName in pairs(interiorProps) do
				ActivateInteriorEntitySet(interiorID, propName)
			end

			if interiorsPropColors then
				for i=1, #interiorsPropColors, 1 do
					SetInteriorEntitySetColor(interiorID, interiorsPropColors[i][1], interiorsPropColors[i][2])
				end
			end

			RefreshInterior(interiorID)
		end
	end
end

-- https://wiki.gtanet.work/index.php?title=Online_Interiors_and_locations
-- IPL list 1.0.1290: https://pastebin.com/iNGLY32D
-- Extra IPL info: https://pastebin.com/SE5t8CnE
function RequestAllIpls()
	
	-- Clubhouse 3: 120.7597, 3711.44, 40.72375
	RequestIpl('lunar_biker_interior_placement_interior_0_biker_dlc_int_01')
	
end
