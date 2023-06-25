-- notification
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local hi = Instance.new("Sound")  hi.Name = "Notification_Sound"  hi.SoundId = "http://www.roblox.com/asset/?id=6026984224"  hi.Volume = 5  hi.archivable = false  hi.Parent = game.Workspace hi:Play() wait(.46)
Notification:Notify(
    {Title = "Script Executed", Description = [[
- Infinity Hub Executed,
- made by InfinityMercury, Darkzin and Cool
    ]]},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=13780014144", ImageColor = Color3.fromRGB(255, 255, 255)}
) wait(2)



-- settings
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/Webhook/Loader.lua'))();



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
local MainBox = Tabs.Main:AddLeftGroupbox('Main')
local Button = MainBox:AddButton({
    Text = 'Win',
    Func = function()
        game.Players.LocalPlayer.Character:PivotTo(workspace.tower.finishes.Finish:GetPivot())
    end,
    DoubleClick = false,
    Tooltip = 'Click to Win'
})
local Button = MainBox:AddButton({
    Text = 'Win and rejoin',
    Func = function()
        game.Players.LocalPlayer.Character:PivotTo(workspace.tower.finishes.Finish:GetPivot()) wait(.25)
        game.Players.LocalPlayer.Character:PivotTo(workspace.tower.finishes.Finish:GetPivot())
        wait(2)
        
        local TeleportService = game:GetService("TeleportService"); 
        local Players = game:GetService("Players"); 
        if (#Players:GetPlayers() == 1) then 
        game:GetService("Players").LocalPlayer:Kick(); 
        TeleportService:Teleport(game.PlaceId); 
        else 
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players:GetPlayers()[1]);
        end
     end,
    DoubleClick = false,
    Tooltip = 'Click to Win'
})
local Button = MainBox:AddButton({
    Text = 'Infinite Jump',
    Func = function()
         local Player = game:GetService'Players'.LocalPlayer; local UIS = game:GetService'UserInputService'; _G.JumpHeight = 50; function Action(Object, Function) if Object ~= nil then Function(Object); end end UIS.InputBegan:connect(function(UserInput) if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then Action(Player.Character.Humanoid, function(self) if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then Action(self.Parent.HumanoidRootPart, function(self) self.Velocity = Vector3.new(0, _G.JumpHeight, 0); end) end end) end end)
    end,
    DoubleClick = false,
    Tooltip = 'Click to start a infinite jump'
})
local Button = MainBox:AddButton({
    Text = 'Get all tools',
    Func = function()
        for _, v in pairs(game:GetService("ReplicatedStorage").Gear:GetChildren()) do
          if v:IsA("Tool") then
            cloneTools = v:Clone()
            cloneTools.Parent = game:GetService("Players").LocalPlayer.Backpack
          end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to get all tools'
})
MainBox:AddToggle('GD', {
    Text = 'God Mode',
    Default = false,
    Tooltip = 'Click to active god mode',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
	            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("hitbox") or game.Players.LocalPlayer.Character:FindFirstChild("hitboxInvincible") 
	            for i, p in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do 
	            	if (p.Name:find("hitbox")) then 
	            		p:Destroy()
	            	end
	            end
            end

        else

            game:GetService("Players").LocalPlayer.Character.Head:Destroy()
        end
    end
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
