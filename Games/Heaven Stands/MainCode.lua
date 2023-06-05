-- variables
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart





-- farming options
if getgenv().Heaven_Stands["Farming Options"]["Box Farm"] then
    --sound
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    
    --notification
    hi:Play() wait(.46)
    Notification:Notify(
        {Title = "Patched", Description = "Box Farm is patched sorry (Working)"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
end





-- insta kill bosses
if getgenv().Heaven_Stands["Insta Kill Bosses"]["DIO"] then
    --sound
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    
    --notification
    hi:Play() wait(.46)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "DIO"
    task.spawn(function ()     repeat task.wait()         Enemies = workspace.Enemies:GetChildren()         for i = 1, #Enemies do             local v = Enemies[i]             if                 v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and                     v:FindFirstChildOfClass("Humanoid").Health > 0              then                 game.Players.LocalPlayer.Character.PrimaryPart.CFrame =                     CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)             end         end     until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies.DIO.Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Garou"] then
    --sound
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace

    --notification
    hi:Play() wait(.46)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "Garou"
    task.spawn(function ()     repeat task.wait()         Enemies = workspace.Enemies:GetChildren()         for i = 1, #Enemies do             local v = Enemies[i]             if                 v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and                     v:FindFirstChildOfClass("Humanoid").Health > 0              then                 game.Players.LocalPlayer.Character.PrimaryPart.CFrame =                     CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)             end         end     until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies.Garou.Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Minos Prime"] then
    --sound
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    
    --notification
    hi:Play() wait(.46)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "Minos Prime"
    task.spawn(function ()     repeat task.wait()         Enemies = workspace.Enemies:GetChildren()         for i = 1, #Enemies do             local v = Enemies[i]             if                 v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and                     v:FindFirstChildOfClass("Humanoid").Health > 0              then                 game.Players.LocalPlayer.Character.PrimaryPart.CFrame =                     CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)             end         end     until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies["Minos Prime"].Head:Destroy()
end





-- player options
if getgenv().Heaven_Stands["Player Options"]["Character"]["Disable Character Functions"] then
    chr.Character_Functions.Enabled = false
end
if getgenv().Heaven_Stands["Player Options"]["Character"]["Disable Animate"] then
    chr.Animate.Enabled = false
end
if getgenv().Heaven_Stands["Player Options"]["Others Options"]["Enable Speed and Jump"] then
    hum.WalkSpeed = getgenv().Heaven_Stands["Player Options"]["Others Options"]["WalkSpeed"]
    hum.WalkSpeed = getgenv().Heaven_Stands["Player Options"]["Others Options"]["JumpPower"]
end





-- visual options
if getgenv().Heaven_Stands["Visual Options"]["Destroy Spirits"] then
    for _, v in pairs(workspace.Spirit:GetChildren()) do
        if v:IsA("Part") then
            v:Destroy()
        end
    end
end
if getgenv().Heaven_Stands["Visual Options"]["Vergil 2 Swords"] then
    chr.Ability.Sword.Prop.Transparency = 0
end
