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
local Box_Farm      = Window:CreateTab("Box Farm", 7733964370)
local Boss          = Window:CreateTab("Insta Kill Bosses", 12828636851)
local Teleports     = Window:CreateTab("Teleport", 10090587519)


--< Variables >--
local plr = game:GetService("Players").LocalPlayer;
local char = plr.Character;
local hum = plr.Character.Humanoid;
local hrp = plr.Character.HumanoidRootPart;
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
Box_Rename()
local function Teleport_Boxes(a)
    for _, v in pairs(game:GetService("Workspace").Item_Spawnner.Box:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == a then
            hrp.CFrame = v.CFrame wait(.5)
            fireclickdetector(v.Box.Base.ClickDetector)
        end
    end
end
local function Check_Box(a)
    for _, v  in pairs(game:GetService("Workspace").Item_Spawnner.Box:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == a then
            print(a)
            Teleport_Boxes(a)

        else

            print("Box: ", a, "Not Spawned")
        end
    end
end
local function Collect_Boxes()
    if Check_Box("Box1") then
        print(".")
    end
    if Check_Box("Box2") then
        print(".")
    end
    if Check_Box("Box3") then
        print(".")
    end
    if Check_Box("Box4") then
        print(".")
    end
    if Check_Box("Box5") then
        print(".")
    end
    if Check_Box("Box6") then
        print(".")
    end
    if Check_Box("Box7") then
        print(".")
    end
    if Check_Box("Box8") then
        print(".")
    end
    if Check_Box("Box9") then
        print(".")
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


--< Libray Settings >--
local Paragraph = Welcome:CreateParagraph({Title = "Welcome To Infinity Hub ", Content = [[
Game: Heaven Stands
Have Fun :>
]]})





local Toggle = Box_Farm:CreateToggle({
    Name = "Box Farm",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Collect_Boxes()
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
			CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box1, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box2, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box3, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box4, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box5, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box6, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box7, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box8, Color3.fromRGB(0, 255, 42))
            CreateESPPart(game:GetService("Workspace").Item_Spawnner.Box.Box9, Color3.fromRGB(0, 255, 42))
        
        else

            game:GetService("Workspace").Item_Spawnner.Box.Box1.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box2.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box3.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box4.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box5.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box6.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box7.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box8.ESPPart:Destroy()
            game:GetService("Workspace").Item_Spawnner.Box.Box9.ESPPart:Destroy()
        end
    end,
})





local Boss_Section = Boss:CreateSection("Bosses", false)
local Toggle = Boss:CreateToggle({
    Name = "Insta Kill All Bosses",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state
        if Settings then
            local Mob = "AI-Boss" -- Mob Name
            task.spawn(function ()
                repeat task.wait()
                    Enemies = game:GetService("Workspace").Enemies:GetChildren()
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
            game:GetService("Workspace").Enemies["AI-Boss"].Head:Destroy()
        end
    end,
})





local Button = Teleports:CreateButton({
    Name = "Teleport to Shop",
    Interact = 'Changable',
    Callback = function()
        hrp.CFrame = game:GetService("Workspace").NPC.Shop.HumanoidRootPart.CFrame
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Item Storage",
    Interact = 'Changable',
    Callback = function()
        hrp.CFrame = game:GetService("Workspace").NPC["Item Storage"].HumanoidRootPart.CFrame
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Item Seller",
    Interact = 'Changable',
    Callback = function()
        hrp.CFrame = game:GetService("Workspace").NPC["Item Seller"].HumanoidRootPart.CFrame
    end,
})
local Button = Teleports:CreateButton({
    Name = "Teleport to Ability Storage",
    Interact = 'Changable',
    Callback = function()
        hrp.CFrame = game:GetService("Workspace").NPC["Ability Storage"].HumanoidRootPart.CFrame
    end,
})
