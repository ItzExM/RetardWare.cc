repeat task.wait() until game:IsLoaded()
local placeID = game.PlaceId

-- // Supported Games \\ --

-- [Private] Making Memes In Your Basement
if game.PlaceId == 11346342371 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAlmightyChipZ/Private/main/MMI.lua", true))()
-- [Private] Southwest Florida
elseif game.PlaceId == 5104202731 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAlmightyChipZ/Private/main/SWFL.lua", true))()
-- [Private] Youtube Life
elseif game.PlaceId == 8982709021 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAlmightyChipZ/Private/main/YTL.lua", true))() 
-- Unsupported Games
else
    game:GetService("Players").LocalPlayer:Kick("No Game Support.")
end