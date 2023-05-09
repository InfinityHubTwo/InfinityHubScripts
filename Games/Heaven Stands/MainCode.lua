-- variales
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart


-- notification libray
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


-- code
if getgenv().Settings.Farming["Box Farm"] then
    Notify({
        Description = "Lembrando ele não farma todas as boxes pois as vezes é muito rapido, então quando o seu perso reseta execute novamente para coletar tudo dnv";
        Title = "Aviso";
        Duration = 5;
    });
    wait(1.25)
    pcall(function()
        for _, v in pairs(workspace.Item_Spawnner.Box.Spawn_Location:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Character.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[9]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[5]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[2]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[7]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[6]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[8]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[4]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(.1)
        for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()[3]:GetChildren()) do
            if v:IsA("Model") then
                hrp.CFrame = v.Base.CFrame
                task.spawn(function()
                    repeat task.wait()
                        fireclickdetector(v.Base.ClickDetector)
                    until hum.Health == 0
                end)
            end
        end
        wait(6)
        hum.Health = 0
    end)
end
if getgenv().Settings.Farming["Cosmic Gate"] then
    for _, v in pairs(workspace.Item_Spawnner.Box.Spawn_Location:GetChildren()) do
        if v:IsA("Model") then
            hrp.CFrame = v.Base.CFrame
            fireclickdetector(v.Base.ClickDetector)
        end
    end
end
if getgenv().Settings.InstaKillBosses["Vergil"] then
    local Mob = "Vergil" -- Mob Name
    task.spawn(function ()
        repeat task.wait()
            Enemies = workspace.Enemies:GetChildren()
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
        until 1+1==2
    end)
    local ohString1 = "MouseButton1"
    game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
    wait(.25)
    workspace.Enemies.Vergil.Head:Destroy()
    wait(.25)
    hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
    Notify({
        Description = "Boss Morto";
        Title = "Insta Kill";
        Duration = 5;
    });
end
if getgenv().Settings.InstaKillBosses["DIO"] then
    local Mob = "DIO" -- Mob Name
    task.spawn(function ()
        repeat task.wait()
            Enemies = workspace.Enemies:GetChildren()
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
        until 1+1==2
    end)
    local ohString1 = "MouseButton1"
    game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
    wait(.25)
    workspace.Enemies.DIO.Head:Destroy()
    wait(.25)
    hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
    Notify({
        Description = "Boss Morto";
        Title = "Insta Kill";
        Duration = 5;
    });
end
if getgenv().Settings.InstaKillBosses["Garou"] then
    local Mob = "Garou" -- Mob Name
    task.spawn(function ()
        repeat task.wait()
            Enemies = workspace.Enemies:GetChildren()
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
        until 1+1==2
    end)
    local ohString1 = "MouseButton1"
    game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
    wait(.25)
    workspace.Enemies.Garou.Head:Destroy()
    wait(.25)
    hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
    Notify({
        Description = "Boss Morto";
        Title = "Insta Kill";
        Duration = 5;
    });
end
if getgenv().Settings.CharacterFunctions["Disable Character Functions"] then
    workspace.Enemies.InfinityMercury.Character_Functions.Disabled = true;

else

    workspace.Enemies.InfinityMercury.Character_Functions.Enabled = true;
end
