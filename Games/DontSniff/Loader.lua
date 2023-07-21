-- libray | tabs
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
    Text = 'Get All Boogers',
    Func = function()
        for _, v in pairs(workspace.Boogers:GetChildren()) do
            if v:IsA('Part') then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
                    v.CFrame wait(.5) v.ProximityPrompt.HoldDuration = 0.2 wait(.2) fireproximityprompt(v.ProximityPrompt)
            else
                break
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to get all 15 Boogers'
})
local Button = FarmingBox:AddButton({
    Text = 'Delete all entity',
    Func = function()
        for _, v in pairs(workspace.Entities:GetChildren()) do
            if v:IsA('Model') then
                v:Remove()
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click for the safe zone to be on the whole map'
})
local Button = FarmingBox:AddButton({
    Text = 'Uminity to mob',
    Func = function()
        for _, v in pairs(workspace.SafeZones:GetChildren()) do
            if v:IsA('Part') then
                v.Size = Vector3.new(9e9, 9e9, 9e9)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click for the safe zone to be on the whole map'
})
local Button = FarmingBox:AddButton({
    Text = 'Finish Game',
    Func = function()
        for _, v in pairs(workspace.Keys:GetChildren()) do
            if v:IsA('Part') and v.Name == 'FireExtinguisher' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
                    v.CFrame wait(.5) v.ProximityPrompt.HoldDuration = 0.2 wait(.2) fireproximityprompt(v.ProximityPrompt)
            end
        end
        wait(.5)
        for _, v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren()) do
            if v:IsA('Tool') and v.Name == 'FireExtinguisher' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
            end
        end
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
            workspace.KeyDoors.FireExtinguisher.FireExtinguisher.CFrame
    end,
    DoubleClick = false,
    Tooltip = 'Click to end game'
})


local FarmingBox = Tabs.Main:AddRightGroupbox('// Player //')
FarmingBox:AddSlider('Speed', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(x)
        while wait() do
            game.Players.Character.Humanoid.WalkSpeed = x;
        end
    end
})
FarmingBox:AddSlider('Jump', {
    Text = 'JumpPower',
    Default = 50,
    Min = 50,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(x)
        while wait() do
            game.Players.Character.Humanoid.JumpPower = x;
        end
    end
})
