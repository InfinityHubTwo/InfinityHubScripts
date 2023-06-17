-- debug version Weapon Fighting Simulator




--start
repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)


--variables
local function Farming()
    local TargetDistance = math.huge
    local Target
    for i, v in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChildOfClass("Part") then
            local Mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end


--libray
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local Window = Library:CreateWindow({
    Title = 'Infinity Hub  |  Weapon Figthing Simulator',
    Center = true, 
    AutoShow = true,
})



--tabs
local Tabs = {
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



--code
local AutoFarmBox = Tabs.Main:AddLeftGroupbox('Auto Farm Options')
AutoFarmBox:AddToggle('AutoFarm', {
    Text = 'Auto Farm',
    Default = Fishing,
    Tooltip = 'This is a Toggle', 
})

Toggles.AutoFarm:OnChanged(function(State)
    settings = State
    if settings then
        while wait() and settings do
            pcall(
                function()
                    workspace.Fight.Events.FightAttack:InvokeServer(0, Farming().Name)
                    for i, v in pairs(game:GetService("Workspace").Rewards:GetChildren()) do
                        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            )
        end
    end
end)
