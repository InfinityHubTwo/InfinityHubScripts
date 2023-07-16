-- remote bypass
for i,v in pairs(getgc(true)) do
    if (type(v) == 'table' and rawget(v, 'Remote')) then
        v.Remote.Name = v.Name
    end
 end


 -- settings
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
local FarmingTab = Tabs.Main:AddLeftTabbox()
local FarmingBox = FarmingTab:AddTab('// Farming //')
mobsName = {
    "Thug",
     "Strong Thug",
      "Evil Vampire",
       "Slightly More Eviler Vampire",
        "Speedwagon Gang Member",
         "Corrupt Cop",
          "Criminal",
           "Slugger",
            "Mobster",
             "Capo",
              "Vampire Mobster",
               "Sewer Pillar Man",
                "Vampire Capo",
                 "Vampire Enforcer"
};
FarmingBox:AddDropdown('MobsNameToFarm', {
    Values = mobsName,
    Default = 1,
    Multi = false,
    Text = 'Select Mob',
    Tooltip = 'select mob to farm',
    Callback = function(Value)
        getgenv().MobName = Value
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Mob Farm',
    Default = false,
    Tooltip = 'Turn on to be farm mob selected',
    Callback = function(state)
        settings = state
        if settings then
            if getgenv().MobName == "Thug" then
                local Mob = "Thug" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Strong Thug" then
                local Mob = "Strong Thug" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Slightly More Eviler Vampire" then
                local Mob = "Slightly More Eviler Vampire" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Speedwagon Gang Member" then
                local Mob = "Speedwagon Gang Member" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Corrupt Cop" then
                local Mob = "Corrupt Cop" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Criminal" then
                local Mob = "Criminal" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Slugger" then
                local Mob = "Slugger" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Mobster" then
                local Mob = "Mobster" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Capo" then
                local Mob = "Capo" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Vampire Mobster" then
                local Mob = "Vampire Mobster" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Sewer Pillar Man" then
                local Mob = "Sewer Pillar Man" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Vampire Capo" then
                local Mob = "Vampire Capo" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            elseif getgenv().MobName == "Vampire Enforcer" then
                local Mob = "Vampire Enforcer" -- Mob Name
                task.spawn(function ()
                    repeat task.wait()
                        Enemies = game:GetService("Workspace"):GetChildren()
                        for i = 1, #Enemies do
                            local v = Enemies[i]
                            if
                                v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChildOfClass("Humanoid").Health > 0
                             then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
                                    CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
                            end
                        end
                        game:GetService("ReplicatedStorage").Communication.Events.TryPunch:FireServer()
                    until settings == false
                end)
            end
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Chest Farm',
    Default = false,
    Tooltip = 'Turn on to be farm chests',

    Callback = function(state)
        settings = state
        if settings then
            noClipped = true
            game:GetService("RunService").Stepped:Connect(function()
               if noClipped then
                   pcall(function()
                       for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                           if v.ClassName == "Part" or v.ClassName == "MeshPart" then
                               v.CanCollide = false
                           end
                       end
                   end)
                   if settings == false then
                    return false
                   end
               end
            end)
            while wait() and settings do
                local function ChestFarm(Name, Time)
                    for _, v in pairs(workspace:GetChildren()) do
                        if v:IsA("Model") and v.Name == Name then
                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Time, Enum.EasingStyle.Linear)            
                            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(v.Base.Position)}):Play()
                            fireproximityprompt(v.Inside.ProximityPrompt);
                        end
                    end
                end
                ChestFarm("1", 8)wait(8.4)ChestFarm("2", 8) wait(8.4)ChestFarm("3", 8) wait(8.4)ChestFarm("4", 8) wait(8.4)ChestFarm("5", 8) wait(8.4)ChestFarm("6", 8) wait(8.4)ChestFarm("7", 8) wait(8.4)ChestFarm("8", 8) wait(8.4)ChestFarm("9", 8) wait(8.4)ChestFarm("9", 8) wait(8.4)ChestFarm("10", 8) wait(8.4)ChestFarm("11", 8) wait(8.4)ChestFarm("12", 8) wait(8.4)ChestFarm("13", 8) wait(8.4)ChestFarm("14", 8) wait(8.4)ChestFarm("15", 8) wait(8.4)ChestFarm("16", 8) wait(8.4)ChestFarm("17", 8) wait(8.4)ChestFarm("18", 8) wait(8.4)ChestFarm("19", 8) wait(8.4)ChestFarm("20", 8) wait(8.4)ChestFarm("21", 8) wait(8.4)ChestFarm("22", 8) wait(8.4)ChestFarm("23", 8) wait(8.4)ChestFarm("24", 8) wait(8.4)ChestFarm("25", 8)
            end
        end
    end
})
