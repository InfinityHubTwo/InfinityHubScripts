local Players = game:GetService("Players")
--//    Variables    \\--
Players     = game:GetService("Players");
lp          = Players.LocalPlayer


--//    Librays    \\--
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/ArrayField/Modded.lua'))()


--//    Windown    \\-- 
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
       Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
    }
})
Window:Prompt({
	Title = 'Welcome',
	SubTitle = 'Infinity Hub Support',
	Content = 'Está hub foi feita não so para demonstra a nova libray e tambem testa-la mais tambem para fazer o script para esse jogo.',
	Actions = {
		Accept = {
			Name = 'Accept',
			Callback = function()
				-- You know what a callback is...
			end,
		}
	}
})


--//    Tabs    \\--
local Misc = Window:CreateTab("Misc", 7733920768)


--//    Code    \\-- 
local Section   = Misc:CreateSection("Farm Options", true)
local Inf       = Misc:CreateSection("Infinity Level, coin", false)
local Auto      = Misc:CreateSection("Auto", false)

local Toggle = Misc:CreateToggle({
    Name = "Infinite Coins",
    Info = "Generate Infinite Coins.", -- Speaks for itself, Remove if none.
    SectionParent = Inf,
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        if state then
            lp.Character.HumanoidRootPart.CFrame = CFrame.new(99999, 99999, 99999)
            task.spawn(
                function()
                    repeat task.wait()
                        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 99999999)
                    until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                end
            )

        else

            lp.Character.Humanoid.Health = 0
        end
    end,
})
local Toggle = Misc:CreateToggle({
    Name = "Infinite Levels",
    Info = "Generate Infinite Levels.", -- Speaks for itself, Remove if none.
    SectionParent = Inf,
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        if state then
            lp.Character.HumanoidRootPart.CFrame = CFrame.new(99999, 99999, 99999)
            task.spawn(
                function()
                    repeat task.wait()
                        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
                    until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                end
            )

        else

            lp.Character.Humanoid.Health = 0
        end
    end,
})

local Toggle = Misc:CreateToggle({
    Name = "Auto Rank",
    SectionParent = Auto,
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        if state then
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.rankUp:FireServer()
            end
        end
    end,
})
