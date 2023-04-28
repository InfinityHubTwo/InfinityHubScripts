-- variables --
local function get_plrs()
    local playertable = {}

    for i,v in pairs(game:GetService("Players"):GetDescendants()) do
       if v:IsA("Player") and v.Name ~= game:GetService("Players").LocalPlayer.Name then
           playertable[#playertable+1] = v.Name
       end
    end

    return playertable
end

local localPlayer = game.Players.LocalPlayer;
local character = localPlayer.Character;
local humanoid = character.Humanoid;
local hrp = character.HumanoidRootPart;
local Settings;


-- libray --
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Infinity Hub  |  @Darkzin",
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


-- code --
local func = Window:CreateTab("Functions", 4483362458)
local Section = func:CreateSection("Sans Kill Player ( Beta )")
local Input = func:CreateInput({
    Name = "Player Name",
    PlaceholderText = "...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().Player = Text;
    end,
 })
local Button = func:CreateButton({
    Name = "Kill Player ( Need Sans )",
    Callback = function()
        hrp.CFrame = game.Players[getgenv().Player].Character.HumanoidRootPart.CFrame
        wait(.5)
        local args = {
			[1] = "Alternate",
			[2] = "Teleport",
			[3] = false,
			[4] = Vector3.new(621, -75, 235)
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
    end,
})


local Plrs = Window:CreateTab("Players", 4483362458)
local Section = Plrs:CreateSection("View player to kill and copy name here.")
local Button = Plrs:CreateButton({
    Name = "Copy Player Selected",
    Callback = function()
        setclipboard(tostring(game:GetService("CoreGui").Rayfield.Main.Elements.Players["Players Name:"].Selected.Text))
    end,
})
local Button = Plrs:CreateButton({
    Name = "Refresh Dropdown",
    Callback = function()
        game:GetService("CoreGui").Rayfield.Main.Elements.Players["Players Name:"]:Destroy()
        wait(1)

        local PlayersList = Plrs:CreateDropdown({
            Name = "Players Name:",
            Options = get_plrs(),
            CurrentOption = "",
            MultipleOptions = false,
            Flag = "plrs_list",
            Callback = function(Option)
        
            end,
        })
    end,
})
local PlayersList = Plrs:CreateDropdown({
    Name = "Players Name:",
    Options = get_plrs(),
    CurrentOption = "",
    MultipleOptions = false,
    Flag = "plrs_list",
    Callback = function(Option)

    end,
})
