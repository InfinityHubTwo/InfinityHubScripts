--[[
    Stands Awakening Modded
        Version 1.0


    made by InfinityMercury and darkzin
]]



-- variables
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart



-- libray / tabs
local repo = 'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Linoria/'
local Libray = loadstring(game:HttpGet(repo .. 'Loader.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeMenager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveMenager.lua'))()
local Window = Library:CreateWindow({
    Title = 'Infinity Hub | '.. game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})
local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



-- code
local FarmingBox = Tabs.Main:AddLeftGroupbox('// Farming //')
local Button = FarmingBox:AddButton({
    Text = 'Grab Tools',
    Func = function()
        for _, v in pairs(workspace:GetChildren()) do
          if v:IsA('Tool') then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
          end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to grab all tools in map'
})
FarmingBox:AddLabel('Instant Use Tools')
local Button = FarmingBox:AddButton({
    Text = 'Arrow',
    Func = function()
        game:GetService("ReplicatedStorage").Arrow:FireServer()
    end,
    DoubleClick = false,
    Tooltip = ''
})
local Button = FarmingBox:AddButton({
    Text = 'Rokakaka Fruit',
    Func = function()
        game:GetService("ReplicatedStorage").Roka:FireServer()
    end,
    DoubleClick = false,
    Tooltip = ''
})


local ServerBox = Tabs.Main:AddRightGroupbox('// Server //')
ServerBox:AddToggle('AB', {
    Text = 'Lag Server',
    Default = false,
    Tooltip = 'Turn on to kill all',
    Callback = function(state)
        settings = state
        if settings then
            while wait(1) and settings do
                task.spawn(function ()
                    repeat task.wait()
                        local ohBrickColor1 = BrickColor.new("Institutional white")
                        game:GetService("ReplicatedStorage").Jump:FireServer(ohBrickColor1)
                    until settings == false
                end)
            end
        end
    end
})
ServerBox:AddToggle('AB', {
    Text = 'LOL',
    Default = false,
    Tooltip = '',
    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService("ReplicatedStorage").LuigiYell:FireServer()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end
})
local Button = ServerBox:AddButton({
    Text = 'Kill All',
    Func = function()
        for _, v in pairs(game:GetService('Players'):GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local ohInstance1 = v.Character.Humanoid
                local ohCFrame2 = CFrame.new(151.966217, 1475.59082, 344.953369, 0.0613390505, -0.739880204, -0.66993618, 0.625325978, 0.551631331, -0.55196929, 0.777948976, -0.385071427, 0.496502995)
                local ohNumber3 = 9e9
                local ohNumber4 = 0.25
                local ohVector35 = Vector3.new(8.59525203704834, -0.0001445138914277777, 5.110934257507324)
                local ohString6 = "rbxassetid://241837157"
                local ohNumber7 = 0.075
                local ohColor38 = Color3.new(255, 255, 255)
                local ohString9 = "rbxassetid://260430079"
                local ohNumber10 = 1
                local ohNumber11 = 0.44
                game:GetService("ReplicatedStorage").Damage:FireServer(ohInstance1, ohCFrame2, ohNumber3, ohNumber4, ohVector35, ohString6, ohNumber7, ohColor38, ohString9, ohNumber10, ohNumber11)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
local Button = ServerBox:AddButton({
    Text = 'Freeze All',
    Func = function()
        for _, v in pairs(game:GetService('Players'):GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local ohInstance1 = v.Character.Humanoid
                game:GetService("ReplicatedStorage").LuigiBerserk2:FireServer(ohInstance1)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = ''
})
local Button = ServerBox:AddButton({
    Text = 'Giant Ts',
    Func = function()
        local ohNumber1 = 9e9
        local ohString2 = "jotaro"
        game:GetService("ReplicatedStorage").Timestop:FireServer(ohNumber1, ohString2)
    end,
    DoubleClick = false,
    Tooltip = ''
})
local Button = ServerBox:AddButton({
    Text = 'Cancel All Ts',
    Func = function()
        game:GetService("ReplicatedStorage").Untimestop:FireServer()
    end,
    DoubleClick = false,
    Tooltip = ''
})
ServerBox:AddInput('MyTextbox', {
    Default = 'name',
    Numeric = false,
    Finished = false,
    Text = 'Specific Kill Player',
    Tooltip = 'enter player name to kill',
    Placeholder = '',
    Callback = function(Value)
        getgenv().Name = Value
    end
})
ServerBox:AddToggle('AB', {
    Text = 'Kill Specific Player',
    Default = false,
    Tooltip = 'Turn on to kill all',
    Callback = function(state)
        settings = state
        if settings then
            task.spawn(function ()
                repeat task.wait(1)
                    local ohInstance1 = game:GetService('Players')[getgenv().Name].Character.Humanoid
                    local ohCFrame2 = CFrame.new(151.966217, 1475.59082, 344.953369, 0.0613390505, -0.739880204, -0.66993618, 0.625325978, 0.551631331, -0.55196929, 0.777948976, -0.385071427, 0.496502995)
                    local ohNumber3 = 9e9
                    local ohNumber4 = 0.25
                    local ohVector35 = Vector3.new(8.59525203704834, -0.0001445138914277777, 5.110934257507324)
                    local ohString6 = "rbxassetid://241837157"
                    local ohNumber7 = 0.075
                    local ohColor38 = Color3.new(255, 255, 255)
                    local ohString9 = "rbxassetid://260430079"
                    local ohNumber10 = 1
                    local ohNumber11 = 0.44
                    game:GetService("ReplicatedStorage").Damage:FireServer(ohInstance1, ohCFrame2, ohNumber3, ohNumber4, ohVector35, ohString6, ohNumber7, ohColor38, ohString9, ohNumber10, ohNumber11)
                until settings == false
            end)
        end
    end
})


local PlayerBox = Tabs.Main:AddLeftGroupbox('// Player //')
PlayerBox:AddToggle('AB', {
    Text = 'Get Ticked (farming land)',
    Default = false,
    Tooltip = 'Turn on to kill all',
    Callback = function(state)
        settings = state
        if settings then
            game:GetService("Players").LocalPlayer.Data.Ticket.Value = true
        else
            game:GetService("Players").LocalPlayer.Data.Ticket.Value = false
        end
    end
})
PlayerBox:AddToggle('AB', {
    Text = 'Auto block',
    Default = false,
    Tooltip = 'Turn on to auto block',
    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                local ohBoolean1 = true
                game:GetService("ReplicatedStorage").Block:FireServer(ohBoolean1)
            end
        end
    end
})
PlayerBox:AddToggle('AB', {
    Text = 'Anti Time Stop',
    Default = false,
    Tooltip = 'Turn on to Anti Ts',
    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
                    if v:IsA('BoolValue') and v.Name == 'TS' then
                        if v.Value == true then
                            wait(1) v.Value = false
                        end
                    end
                end
            end
        end
    end
})
local Button = PlayerBox:AddButton({
    Text = 'Anti Alt Ban',
    Func = function()
        for _, v in pairs(workspace:GetChildren()) do
          if v:IsA('Script') and v.Name == 'Alt Ban Script' then
            v:Remove()
          end
        end
    end,
    DoubleClick = false,
    Tooltip = 'click to be undetected alt system'
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
