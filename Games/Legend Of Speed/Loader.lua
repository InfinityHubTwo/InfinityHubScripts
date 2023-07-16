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
local FarmingBox = Tabs.Main:AddLeftGroupbox('Farming (City Only)')
FarmingBox:AddToggle('AB', {
    Text = 'Auto Hoops',
    Default = false,
    Tooltip = 'Turn on to be farm Hoops',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
            end
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Advance Auto Hoops',
    Default = false,
    Tooltip = 'Turn on to be farm Hoops',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                local children = workspace.Hoops:GetChildren()
                for i, child in ipairs(children) do
                    if child.Name == "Hoop" then
                        child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end    
                end            
            end
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Orbs / Gem',
    Default = false,
    Tooltip = 'Turn on to be farm orbs',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                local A_1 = "collectOrb"
                local A_2 = "Red Orb"
                local A_3 = "City"
                local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
                Event:FireServer(A_1, A_2, A_3)             

                local A_1 = "collectOrb"
                local A_2 = "Orange Orb"
                local A_3 = "City"
                local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
                Event:FireServer(A_1, A_2, A_3)             

                local A_1 = "collectOrb"
                local A_2 = "Blue Orb"
                local A_3 = "City"
                local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
                Event:FireServer(A_1, A_2, A_3)             

                local A_1 = "collectOrb"
                local A_2 = "Gem"
                local A_3 = "City"
                local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
                Event:FireServer(A_1, A_2, A_3)             

                local A_1 = "collectOrb"
                local A_2 = "Yellow Orb"
                local A_3 = "City"
                local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
                Event:FireServer(A_1, A_2, A_3)        
            end
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Rebirth',
    Default = false,
    Tooltip = 'Turn on to be auto rebirth',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService('ReplicatedStorage').rEvents.rebirthEvent:FireServer("rebirthRequest")            
            end
        end
    end
})
local Button = FarmingBox:AddButton({
    Text = 'Rend All Codes',
    Func = function()
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "speedchampion000") wait(.25)
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "racer300") wait(.25)
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "SPRINT250") wait(.25)
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "hyper250") wait(.25)
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "legends500") wait(.25)
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("codeRemote", "sparkles300")

    end,
    DoubleClick = false,
    Tooltip = 'Click to rend all codes'
})


local CrystalBox = Tabs.Main:AddRightGroupbox('Crystals')
Crystals = {}
for _, v in pairs(workspace.mapCrystalsFolder:GetChildren()) do if v:IsA("Model") then table.insert(Crystals, v.Name) end end
CrystalBox:AddDropdown('CrystalFolder', {
    Values = Crystals,
    Default = 1,
    Multi = false,

    Text = 'Fake Stand',
    Tooltip = 'Select a Stand',

    Callback = function(Value)
    end
})
local Button = CrystalBox:AddButton({
    Text = 'Open Crystal',
    Func = function()
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", Options.CrystalFolder.Value)
    end,
    DoubleClick = false,
    Tooltip = 'Click to open selected crystals'
})
CrystalBox:AddToggle('AB', {
    Text = 'Auto Crystals',
    Default = false,
    Tooltip = 'Turn on to star auto crystal selected',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", Options.CrystalFolder.Value)
            end
        end
    end
})


local RaceBox = Tabs.Main:AddLeftGroupbox('Race Farm')
local Button = RaceBox:AddButton({
    Text = 'Win Race (Beta)',
    Func = function()
        repeat task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Desert.finishPart.CFrame wait(.1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Grassland.finishPart.CFrame wait(.1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Magma.finishPart
        until game.Players.LocalPlayer.Character.Humanoid.Health == 0
        wait(2)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end,
    DoubleClick = false,
    Tooltip = 'Enter to race first'
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
