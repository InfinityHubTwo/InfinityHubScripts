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
Bem, devido o anti cheat do jogo a gui não funciona então no botão abaixo você copiará um novo script na qual é feito apartir de getgenv().
O usuario so precisa colocar (true ou false) para abilitar e desabilitar o codigo da ação.
]]})

