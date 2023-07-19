-- Script Settings
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Infinity%20Hub%20Loader/Anti%20Cheater.lua')
)('AntiCheater');
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Flee%20The%20Facility/Settings/Loader.lua')
)('Settings')



-- Variables
local ESP = Instance.new(
    "Folder",
    workspace
) ESP.Name = "ESP"
local ESPPC = Instance.new(
    "Folder",
    workspace
) ESPPC.Name = "ESPComputer"
function GetSizeOfObject(Obj)
    if Obj:IsA("BasePart") then
        return Obj.Size
    elseif Obj:IsA("Model") then
        return Obj:GetExtentsSize()
    end
end
function CreateESPPart(BodyPart,r,g,b)
    local ESPPartparent = BodyPart
    local Box = Instance.new("BoxHandleAdornment")
    Box.Size = GetSizeOfObject(ESPPartparent) + Vector3.new(0.1, 0.1, 0.1)
    Box.Name = "ESPPart"
    Box.Adornee = ESPPartparent
    Box.Color3 = Color3.fromRGB(r,g,b)
    Box.AlwaysOnTop = true
    Box.ZIndex = 5
    Box.Transparency = 0.4
    Box.Parent = ESP
    if BodyPart.Parent.Name == game.Players.LocalPlayer.Name then
        Box:remove()
        spawn (function()
            while true do
                wait(0.1)
                if BodyPart ~= nil then
                    Box:remove()
                end
            end
        end)
    end
end
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()=="FireServer" and tostring(Self)=="RemoteEvent" and Args[1] == "ReportPhysicsFPS" then
            return wait(math.huge)
    end
    return OldNameCall(...)
end)
local Map = workspace:FindFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart



-- Libray / Tabs
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
FarmingBox:AddToggle('AB', {
    Text = 'Nefer fall hacking',
    Default = false,
    Tooltip = 'Turn on to be locked',
    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(
                    "SetPlayerMinigameResult",
                    true
                )
            end
        end
    end
})
FarmingBox:AddLabel('The auto win script was bypassed because of the anti cheater :<', true)


local EspBox = Tabs.Main:AddRightGroupbox('// Esp //')
EspBox:AddToggle('AB', {
    Text = 'Player Esp',
    Default = false,
    Tooltip = '',
    Callback = function(state)
        settings = state
        if settings then
            local player = game.Players:GetChildren()
            for i =1, #player do
                local bodyparts = player[i].Character:GetChildren()
                for i =1, #bodyparts do
                    if bodyparts[i].ClassName == "Part" then
                        if bodyparts[i].Parent:findFirstChild("BeastPowers") then
                            CreateESPPart(bodyparts[i],255,0,0)
                        else
                            CreateESPPart(bodyparts[i],170,170,255)
                        end
                    end
                end
            end
        else
            for _, v in pairs(workspace.ESP:GetChildren()) do
                if v:IsA('BoxHandleAdornment') then
                    v:Destroy()
                end
            end
        end
    end
})
EspBox:AddToggle('AB', {
    Text = 'Computer Esp',
    Default = false,
    Tooltip = '',
    Callback = function(state)
        settings = state
        if settings then
            local map = workspace:findFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
            local children = map:GetChildren()
                for i =1, #children do
                if children[i].Name == "ComputerTable" then
                    local Box = Instance.new("BoxHandleAdornment")
                    Box.Size = GetSizeOfObject(children[i].Screen) + Vector3.new(-0.5, -0.5, -0.5)
                    Box.Name = "ESPPart"
                    Box.Adornee = children[i].Screen
                    spawn (function()
                        while true do
                            wait(0.1)
                            Box.Color3 = children[i].Screen.Color
                        end
                    end)
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = 0.4
                    Box.Parent = ESPPC
                end
            end
        else
            for _, v in pairs(workspace.ESPComputer:GetChildren()) do
                if v:IsA('BoxHandleAdornment') then
                    v:Destroy()
                end
            end
        end
    end
})



-- libray settings
MenuGroup:AddButton('Unload', function() Library:Unload() end)
