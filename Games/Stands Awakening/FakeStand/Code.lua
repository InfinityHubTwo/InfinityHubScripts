--[[
Script made by InfinityMercury
How to use:
    in "Stand Name" set a stand name
    if you are in doubt, there is a link below with the names of the stands

    in "Select Slot"
    place the slot you want the FakeStand to appear in
]]
getgenv().Fake_Stand = {
    ["Settings"] = {
        ["Stand Name"] = "",
        ["Select Slot"] = "",
    },
    ["Stands Names"] = {
        "https://controlc.com/2b4f1c30",
    }
};

loadstring(game:HttpGetAsync(
    'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/FakeStand/Main.lua'
))("Fake_Stands");
