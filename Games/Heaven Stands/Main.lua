--< Libray >--
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
local Box_Farm      = Window:CreateTab("Farming", 7733964370)
local Boss          = Window:CreateTab("Insta Kill Bosses", 12828636851)
local Teleports     = Window:CreateTab("Teleport", 10090587519)
local Misc          = Window:CreateTab("Misc")


--< Variables >--
local plr = game:GetService("Players").LocalPlayer;
local char = plr.Character;
local hum = plr.Character.Humanoid;
local hrp = plr.Character.HumanoidRootPart;
local TweenService = game:GetService('TweenService');
local Settings
local Spawners = {
    Boxes = {
        Box1 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[9],
        Box2 = game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location,
        Box3 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[5],
        Box4 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[2],
        Box5 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[7],
        Box6 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[6],
        Box7 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[8],
        Box8 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[4],
        Box9 = game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[3],
    }
}


--< Functions >--
local function Box_Rename()
    Spawners.Boxes.Box1.Name = "Box1";
    Spawners.Boxes.Box2.Name = "Box2";
    Spawners.Boxes.Box3.Name = "Box3";
    Spawners.Boxes.Box4.Name = "Box4";
    Spawners.Boxes.Box5.Name = "Box5";
    Spawners.Boxes.Box6.Name = "Box6";
    Spawners.Boxes.Box7.Name = "Box7";
    Spawners.Boxes.Box8.Name = "Box8";
    Spawners.Boxes.Box9.Name = "Box9";
end
-- Box_Rename()
local function Collect_All_Boxes()
    for _, v in pairs(game:GetService("Workspace").Item_Spawnner.Box:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == "Spawn_Location" then
            if v then  hrp:PivotTo(v:GetPivot()); end
        end
    end
end
local function Fire_Click_Detector()
    for v, i in pairs(game:GetService("Workspace").Item_Spawnner.Box.Base:GetChildren()) do
        if i:IsA("ClickDetector") then
            if i then  fireclickdetector(i) end

        else

            print(".")
        end
    end
end
function CreateESPPart(BodyPart, color)
    local ESPPartparent = BodyPart
    local Box = Instance.new("BoxHandleAdornment")
    Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
    Box.Name = "ESPPart"
    Box.Adornee = ESPPartparent
    Box.Color3 = color
    Box.AlwaysOnTop = true
    Box.ZIndex = 5
    Box.Transparency = 0.8
    Box.Parent = BodyPart
end


local Move_To_Npc1 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(418.96612548828125, 179.6881866455078, -818.6992797851562)})
local Move_To_Npc2 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(445.36578369140625, 179.6881866455078, -948.6686401367188)})
local Move_To_Npc3 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(302.77813720703125, 179.4150848388672, -820.0785522460938)})
local Move_To_Npc4 = TweenService:create(char.Humanoid.RootPart,TweenInfo.new(2), {CFrame = CFrame.new(317.7178955078125, 179.90565490722656, -854.4478149414062)})

-- Cosmic Gate
local Cosmic_Gate = workspace.Item_Spawnner.Cosmic_Gate
local Cosmic_Gates = {
	Cosmic_Gate1 = workspace.Item_Spawnner.Cosmic_Gate:GetChildren()[3],
	Cosmic_Gate2 = workspace.Item_Spawnner.Cosmic_Gate:GetChildren()[4],
	Cosmic_Gate3 = workspace.Item_Spawnner.Cosmic_Gate.Spawn_Location,
	Cosmic_Gate4 = workspace.Item_Spawnner.Cosmic_Gate:GetChildren()[2],
}


--< Libray Settings >--
local Paragraph = Welcome:CreateParagraph({Title = "Welcome To Infinity Hub ", Content = [[
Game: Heaven Stands
Have Fun :>
]]})
local Boss_Section = Welcome:CreateSection("--// Auto Gui", false)
local Paragraph = Welcome:CreateParagraph({Title = "Auto Gui ", Content = [[
Por conta do anti cheat poderoso que o jogo agora tem decidi fazer esta opção.
Basicamente se vc morre no jogo ele destroi todas as opções e para de funcionar tudo, então fiz isso para quando morrer ele reseta aa gui para funcionar tudo corretamente.

Obs: Lembre de desativar as opções pois pode buga.
]]})
local Toggle = Welcome:CreateToggle({
    Name = "Auto Gui",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                if hum.Health == 0 then
                    loadstring(
                        game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Obfuscated/Heaven%20Stands.lua', true)
                    )()
                end
            end
        end
    end,
})





local Boss_Section = Box_Farm:CreateSection("Box Farm", false)
local Toggle = Box_Farm:CreateToggle({
    Name = "Box Farm ( Working... )",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Collect_All_Boxes()
                if Fire_Click_Detector() then
                    print(".")
                else
                    print("ain")
                end
            end
        end
    end,
})
local Toggle = Box_Farm:CreateToggle({
    Name = "Box Spawn Esp",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
			CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location, Color3.fromRGB(0, 255, 42))
        
        else

            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.ESPPart:Destroy()
        end
    end,
})
local Boss_Section = Box_Farm:CreateSection("Cosmic Gate Farm", false)
local Toggle = Box_Farm:CreateToggle({
    Name = "Check Cosmic Gate",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
			while wait() and Settings do
				hrp.CFrame = Cosmic_Gates.Cosmic_Gate1.CFrame
				--for _, v in pairs(Cosmic_Gate.Spawn_Location:GetChildren()) do
					--if  then
						
					--end
				--end
			end
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
