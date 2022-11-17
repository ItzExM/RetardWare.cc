repeat task.wait() until game:IsLoaded()
local placeID = game.PlaceId


-- Oil Refinery
if game.PlaceId == 8726743209 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheAlmightyChipZ/EnzoWareV1.1/main/EnzoWareV1.1%20Refinery%20Caves.lua")))()
-- Car Driving Indonesia
elseif game.PlaceId == 6911148748 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAlmightyChipZ/Private/main/CDID.lua", true))()
-- Universal Hub
else
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheAlmightyChipZ/EnzoWareV1.1/main/EnzoWareV1.1%20Universal%20Hub.lua")))()
end
