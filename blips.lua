local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="National Guard", colour=5, id=560, x = -2353.128, y = 3247.394, z = 68.456},
     {title="LSPD", colour=29, id=60, x = 428.23, y = -984.28, z = 29.76},
     {title="SAHP", colour=29, id=60, x = -451.55, y = 6014.25, z = 31.716},
     {title="LSPD", colour=29, id=60, x = -1085.843, y = -832.766, z = 22.818},
     {title="SAHP", colour=29, id=60, x = 1852.057, y = 3692.036, z = 34.988},
     {title="Staatsgefängnis", colour=29, id=60, x = 1845.903, y = 2585.873, z = 45.672},
     {title="Medical Department", colour=1, id=61, x = -262.1392, y = 6325.47, z = 34.242},
     {title="Medical Department", colour=1, id=61, x = 1826.662, y = 3679.301, z = 35.602},
     {title="Medical Department", colour=1, id=61, x = 329.1172, y = -578.914, z = 60.501},
     {title="Government", colour=0, id=419, x = -549.798, y = -196.826, z = 59.637},
     {title="Bank", colour=0, id=605, x = 149.9, y = -1040.46, z = 29.37},
     {title="Bank", colour=0, id=605, x = 314.23, y = -278.83, z = 54.17},
     {title="Bank", colour=0, id=605, x = -350.8, y = -49.57, z = 49.04},
     {title="Bank", colour=0, id=605, x = -1213.0, y = -330.39, z = 37.79},
     {title="Bank", colour=0, id=605, x = -2962.71, y = 483.0, z = 15.7},
     {title="Bank", colour=0, id=605, x = 1175.07, y = 2706.41, z = 38.09},
     {title="Bank", colour=0, id=605, x = 246.64, y = 223.20, z = 106.29},
     {title="Bank", colour=0, id=605, x = -113.22, y = 6470.03, z = 31.63},
     {title="Unicorn", colour=0, id=121, x = 115.874, y = -1299.233, z = 34.022},
     {title="Cayo Perico", colour=0, id=766, x = 5266.31, y = -5427.6, z = 141.05},
     {title="Ballas", colour=83, id=543, x = 104.34, y = -1939.85, z = 20.8},
     {title="The Families", colour=2, id=543, x = -183.7, y = -1601.09, z = 34.23},
     {title="Bloods", colour=1, id=543, x = 441.6, y = -1532.77, z = 29.21},
     {title="Marabunta Grande", colour=3, id=543, x = 946.56, y = -2185.76, z = 30.56},
     {title="Vagos", colour=5, id=543, x = 1412.73, y = -1510.89, z = 59.63},
     {title="FIB", colour=29, id=60, x = 2521.82, y = -384.17, z = 92.99},
     {title="Kirche", colour=1, id=621, x = -785.19, y = -708.89, z = 30.33},
     {title="Weazel News / LifeInvader", colour=1, id=459, x = -587.8, y = -922.74, z = 23.87},
     {title="Weazel News / LifeInvader", colour=1, id=459, x = -1080.84, y = -248.16, z = 37.76},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
