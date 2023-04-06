--[[
Made by Darkzin 

info:
All scripts work ✅
--]]



local games = {
	-- Stands Awakening
	[{5780309044}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Stands%20Awakening.lua",
	[{11423467063}]	= "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/AutoBoss.lua",
	
	-- Shindo Life
	[{4616652839, 4601350214, 4601350394, 4601350656, 4601350809, 5431071837, 5447073001, 5084678830, 5431069982, 4601350760, 6341670805, 6505734854, 6901575446, 6984568732, 6986372023, 5451398863, 7214033433, 5451401540, 5307141034, 7534339269, 5451410109, 6593187011, 6593188260, 5743370338, 5664805984, 5664803952, 8184506020, 8472733618, 7923764447, 9310522814, 5451405681, 7524809704, 7524811367, 6602058266, 5255237254, 6602103757, 5824792748, 4616652839, 4601350214, 4601350394, 4601350656, 4601350809, 5431071837, 5447073001, 5431069982, 4601350760, 6341670805, 6505734854, 6901575446, 6984568732, 6986372023, 5451398863, 7214033433, 5451401540, 5307141034, 7534339269, 5451410109, 6593187011, 6593188260, 5743370338, 5664805984, 5664803952, 8184506020, 8472733618, 7923764447, 9310522814, 5451405681, 7524809704, 7524811367, 6602058266, 5255237254, 6602103757, 5824792748}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Shindo%20Life.lua",
	
	-- Bild a Boat For Treasure
	[{537413528}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Bild%20a%20Boat%20For%20Treasure.lua",
	
	-- World Of Stands
	[{6728870912}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/World%20Of%20Stand.lua",
	
	-- Loucky Block Blateground
	[{662417684}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Lucky%20Block%20Batleground.lua",
	
	--Arcane Odyssey
	[{12604352060}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Arcane%20Odyssey.lua",
	
	-- Tower Of Hell
	[{1962086868, 3582763398}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Tower%20Of%20Hell.lua",
	
	-- Heaven Stands
	[{11981520251}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Heaven%20Stands.lua",
	
	-- Ninja Tycoon
	[{221718525}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Ninja%20Tycoon.lua",

	-- Ninja Legend
	[{3956818381}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Ninja%20Legend.lua",
	
	-- Flee The Facility
	[{893973440}] = "https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Flee%20The%20Facility/Main.lua",
}


for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
