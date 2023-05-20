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
local Welcome = Window:CreateTab("Welcome", 12827783428)


--< Libray Settings >--
local Paragraph = Welcome:CreateParagraph({Title = "Welcome To Infinity Hub ", Content = [[
Bem, devido o anti cheat do jogo a gui não funciona.
O usuario so precisa colocar (true ou false) para abilitar e desabilitar o codigo da ação.

O Scipt ja foi copiado na sua area de tranferencia, so ir no navegador e colar
]]})

setclipboard("https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Heaven%20Stands/OtherMain.lua")
