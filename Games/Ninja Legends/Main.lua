-- notification
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local hi = Instance.new("Sound")  hi.Name = "Notification_Sound"  hi.SoundId = "http://www.roblox.com/asset/?id=5153734236"  hi.Volume = 5  hi.archivable = false  hi.Parent = game.Workspace hi:Play() wait(.46)
Notification:Notify(
    {Title = "Script Executed", Description = [[
- Infinity Hub Executed,
- made by InfinityMercury, Darkzin and Cool
    ]]},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=13780014144", ImageColor = Color3.fromRGB(255, 255, 255)}
) wait(2)



-- libray
local repo = 'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Linoria/'
local Libray = loadstring(game:HttpGet(repo .. 'Loader.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeMenager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveMenager.lua'))()
local Window = Library:CreateWindow({
    Title = 'Infinity Hub | '.. game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name or 'Game-'..game.PlaceId,
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})



-- tabs
local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



-- code
local FarmingBox = Tabs.Main:AddLeftGroupbox('Farming')
FarmingBox:AddInput('AutoSellTime', {
    Default = '...',
    Numeric = false,
    Finished = false,

    Text = 'Auto Sell Time',
    Tooltip = 'put the time you want to sell automatically',

    Placeholder = 'Sell time',

    Callback = function(Value)
        svalue = Value
    end
})
FarmingBox:AddToggle('AS', {
    Text = 'Auto Sell',
    Default = false,
    Tooltip = 'Turn on to be auto sell',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                for _,v in pairs(game:GetService("Workspace").sellAreaCircles:GetDescendants()) do
                    if v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                         wait(svalue)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                    end
                end
            end
        end
    end
})
FarmingBox:AddToggle('AC', {
    Text = 'Auto Click',
    Default = false,
    Tooltip = 'Turn on to be clicked',

    Callback = function(state)
        settings = state
        if settings then 
            while wait() and settings do
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
            end
        end
    end
})
FarmingBox:AddToggle('ABS', {
    Text = 'Auto Buy Swords',
    Default = false,
    Tooltip = 'Turn on to be auto buy swords',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                wait(0.5)
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllSwords","Inner Peace Island")
            end
        end
    end
})
FarmingBox:AddToggle('ATB', {
    Text = 'Auto Buy Belts',
    Default = false,
    Tooltip = 'Turn on to be auto buy belts',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                wait(0.5)
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllBelts","Inner Peace Island")
            end
        end
    end
})
FarmingBox:AddToggle('ATSS', {
    Text = 'Auto Buy Skills',
    Default = false,
    Tooltip = 'Turn on to be auto buy skill',

    Callback = function(state)
        settings = state
        if settings then
            while wait(1) and settings do
                game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems",{["whichItems"] = "Skills",["whichPlanet"] = "Planet Chaos"})
            end
        end
    end
})
FarmingBox:AddToggle('AR', {
    Text = 'Auto Ranks',
    Default = false,
    Tooltip = 'Turn on to be auto buy ranks',

    Callback = function(state)
        settings = state
        if settings then
            while wait(1) and settings do
                local deku1 = "buyRank"
                local deku2 = {"Rookie", "Grasshopper", "Apprentice", "Samurai", "Assassin", "Shadow", "Ninja", "Master Ninja", "Sensei", "Master Sensei", "Ninja Legend", "Master Of Shadows", "Immortal Assassin", "Eternity Hunter", "Shadow Legend", "Dragon Warrior", "Dragon Master", "Chaos Sensei", "Chaos Legend", "Master Of Elements", "Elemental Legend", "Ancient Battle Master", "Ancient Battle Legend", "Legendary Shadow Duelist", "Master Legend Assassin", "Mythic Shadowmaster", "Legendary Shadowmaster", "Awakened Scythemaster", "Awakened Scythe Legend", "Master Legend Zephyr", "Golden Sun Shuriken Master", "Golden Sun Shuriken Legend", "Dark Sun Samurai Legend", "Dragon Evolution Form I", "Dragon Evolution Form II", "Dragon Evolution Form III", "Dragon Evolution Form IV", "Dragon Evolution Form V", "Cybernetic Electro Master", "Cybernetic Electro Legend", "Shadow Chaos Assassin", "Shadow Chaos Legend", "Infinity Sensei", "Infinity Legend", "Aether Genesis Master Ninja", "Master Legend Sensei Hunter", "Skystorm Series Samurai Legend", "Master Elemental Hero", "Eclipse Series Soul Master", "Starstrike Master Sensei", "Evolved Series Master Ninja", "Dark Elements Guardian", "Elite Series Master Legend", "Infinity Shadows Master", "Lightning Storm Sensei", "Dark Elements Blademaster", "Rising Shadow Eternal Ninja", "Skyblade Ninja Master", "Shadow Storm Sensei", }

                for i = 1, #deku2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(deku1, deku2[i])
                end                
            end
        end
    end
})
FarmingBox:AddToggle('AH', {
    Text = 'Auto Hoops',
    Default = false,
    Tooltip = 'Turn on to be auto collect hoops',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                local folder = game:GetService("Workspace").Hoops;
                for i, Obj in next, folder:GetChildren() do
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Obj.CFrame
                    wait(0.1)
                end
            end
        end
    end
})


local CrystalBox = Tabs.Main:AddRightGroupbox('Auto Crystal')
local CrystalTable = {"Blue Crystal", "Enchanted Crystal", "Astral Crystal", "Golden Crystal", "Inferno Crystal", "Space Crystal", "Eternal Crystal", "Thunder Crystal", "Secret Blades Crystal",}
CrystalBox:AddDropdown('PLRNAME', {
    Values = CrystalTable,
    Default = 1,
    Multi = false,
    Text = 'Select Crystal',
    Tooltip = '',
    Callback = function(Value)
    end
})
CrystalBox:AddToggle('AC', {
    Text = 'Auto Crystals',
    Default = false,
    Tooltip = 'Turn on to be auto open crystals selected',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", CrystalTable)
            end
        end
    end
})


local MiscBox = Tabs.Main:AddLeftGroupbox('Misc')
local Button = MiscBox:AddButton({
    Text = 'Get All Elements',
    Func = function()
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Eternity Storm")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Shadowfire")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Electral Chaos")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Shadow Charge")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Frost")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Lightning")
        game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Inferno")
    end,
    DoubleClick = false,
    Tooltip = 'Click to Get all elements'
})
local Button = MiscBox:AddButton({
    Text = 'Get All Chests',
    Func = function()
        local deku1 = {"Magma Chest", "Enchanted Chest", "Golden Chest", "Mythical Chest", "Legends Chest", "Daily Chest", "Eternal Chest", "Sahara Chest", "Thunder Chest", "Ancient Chest", "Midnight Shadow Chest", "Wonder Chest", "Golden Zen Chest", "Ultra Ninjitsu Chest", "Skystorm Masters Chest", "Chaos Legends Chest", "Soul Fusion Chest",}
        for i = 1, #deku1 do
            wait(2)
            game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(deku1[i])
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to get all chests'
})
local Button = MiscBox:AddButton({
    Text = 'Get Light Karma',
    Func = function()
        wait(1)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer("Light Karma Chest")
    end,
    DoubleClick = false,
    Tooltip = 'Click to get light karma'
})
local Button = MiscBox:AddButton({
    Text = 'Get Evil Karma',
    Func = function()
        wait(1)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer("Evil Karma Chest")
   end,
    DoubleClick = false,
    Tooltip = 'Click to get evil karma'
})


local IslandsBox = Tabs.Main:AddRightGroupbox('Islands')
local Button = IslandsBox:AddButton({
    Text = 'Unlock All Islands',
    Func = function()
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                 wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
            end
        end    
    end,
    DoubleClick = false,
    Tooltip = 'Click to unlock all islands'
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
