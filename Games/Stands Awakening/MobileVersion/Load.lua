--[[
    Infinity Hub Mobile Version 📱
    Version: 1.0

    Mabe by Darkzin and InfinityMercury
]]
local games = {
	--//    Games    \\--
	[{5780309044}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/MobileVersion/Loader.lua",
	[{11423467063}]	= "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/MobileVersion/BossLoader.lua",
}


for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
