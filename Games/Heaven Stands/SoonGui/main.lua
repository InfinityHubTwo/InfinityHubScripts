--< Libray >--
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Infinity Hub  ( Beta )",
    LoadingTitle = "Infinity Hub Loading",
    LoadingSubtitle = "by Darkzin",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "InfHub", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Infinity Hub ",
       Subtitle = "Key System",
       Note = "Key Settings",
       FileName = "Infinity_Hub_KeySettings",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = ""
    }
})


--< Tabs >--
local Welcome       = Window:CreateTab("Welcome", 12827783428)
local Farming      = Window:CreateTab("Farming", 7743866529)
local Boss          = Window:CreateTab("Insta Kill Bosses", 12828636851)
local Teleports     = Window:CreateTab("Teleport", 10090587519)
local Misc          = Window:CreateTab("Misc", 7734006080)


--< Variables >--
local plr = game:GetService("Players").LocalPlayer;
local char = plr.Character;
local hum = plr.Character.Humanoid;
local hrp = plr.Character.HumanoidRootPart;
local TweenService = game:GetService('TweenService');
local Settings


local Move_To_Npc1 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(418.96612548828125, 179.6881866455078, -818.6992797851562)})
local Move_To_Npc2 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(445.36578369140625, 179.6881866455078, -948.6686401367188)})
local Move_To_Npc3 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(302.77813720703125, 179.4150848388672, -820.0785522460938)})
local Move_To_Npc4 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(317.7178955078125, 179.90565490722656, -854.4478149414062)})


--< Libray Settings >--
local Paragraph = Welcome:CreateParagraph({Title = "Welcome To Infinity Hub ", Content = [[
Game: Heaven Stands
Have Fun :>
]]})





local Boss_Section = Farming:CreateSection("Options Farm", false)
local Toggle = Farming:CreateToggle({
    Name = "Box Farm",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state;
        if Settings then
            while wait() and Settings do
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
                    wait(2.8)
                    hum.Health = 0
                end)
            end

        else

            hum.Health = 0
        end
    end,
})






local Boss_Section = Boss:CreateSection("Bosses", false)
local Toggle = Boss:CreateToggle({
    Name = "Insta Kill ( Vergil )",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
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
            wait(2.8)
            hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
            Notify({
                Description = "Boss Morto";
                Title = "Insta Kill";
                Duration = 5;
            });
        end
    end,
})
local Toggle = Boss:CreateToggle({
    Name = "Insta Kill ( DIO )",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
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
            wait(2.8)
            hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
            Notify({
                Description = "Boss Morto";
                Title = "Insta Kill";
                Duration = 5;
            });
        end
    end,
})
local Toggle = Boss:CreateToggle({
    Name = "Insta Kill ( Garou )",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
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
            wait(2.8)
            hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
            Notify({
                Description = "Boss Morto";
                Title = "Insta Kill";
                Duration = 5;
            });
        end
    end,
})






local Boss_Section = Teleports:CreateSection("Teleports Options", false)
local Button = Teleports:CreateButton({
    Name = "Teleport to Shop",
    Interact = 'Changable',
    Callback = function()
        Move_To_Npc1:Play()
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Item Storage",
    Interact = 'Changable',
    Callback = function()
        Move_To_Npc2:Play()
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Item Seller",
    Interact = 'Changable',
    Callback = function()
        Move_To_Npc3:Play()
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Ability Storage",
    Interact = 'Changable',
    Callback = function()
        Move_To_Npc4:Play()
    end,
})





local Section = Misc:CreateSection("Misc Scripts", false)
local Toggle = Misc:CreateToggle({
    Name = "Disable Character Functions",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                game:GetService("Players").LocalPlayer.Character.Character_Functions.Disabled = true
            end
				
	else
				
	    game:GetService("Players").LocalPlayer.Character.Character_Functions.Disabled = false
        end
    end,
})
local Button = Misc:CreateButton({
   Name = "Fake Money",
   Callback = function()
		game:GetService("Players").LocalPlayer.Data.Cash.Value = 9e9
   end,
})


local Section = Misc:CreateSection("Kill Player", false)
local Input = Misc:CreateInput({
    Name = "Enter Player Name",
    PlaceholderText = "...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().Player_Name = Text;
    end,
})
local Button = Misc:CreateButton({
    Name = "Kill Player ( Need Garou )",
    Callback = function()
        for _, v in pairs(game:GetService("Players").LocalPlayer.Data:GetChildren()) do
            if v:IsA("StringValue") and v.Name == "Ability" then
                if v.Value == "Garou" then
                    task.spawn(function()
                        hrp.CFrame = game.Players[getgenv().Player_Name].Character.HumanoidRootPart.CFrame wait(.1)
                        hrp.CFrame = game.Players[getgenv().Player_Name].Character.HumanoidRootPart.CFrame wait(.25)
                        local ohString1 = "R"
                        game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(1.5)
                        hrp.CFrame = CFrame.new(279, 1142, -483) wait(.25)
                        hrp.CFrame = workspace.Map.Collisions.Assets:GetChildren()[315].Part.CFrame
                    end)


                else

                    Notify({
                        Description = "You dont have Garou Ability";
                        Title = "Oh No!";
                        Duration = 5;
                    });
                end
            end
        end
    end,
 })
