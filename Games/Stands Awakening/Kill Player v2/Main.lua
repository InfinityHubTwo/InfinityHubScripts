-- Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin ( Test Place )",
   LoadingTitle = "Infinity Hub loading",
   LoadingSubtitle = "by darkzin",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Infinity Hub",
      Subtitle = "Key System",
      Note = "Private Key",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
   }
})


-- tabs
local Welcome = Window:CreateTab("Welcome", 12827783428)
local Skills = Window:CreateTab("Select Skills", 13235188258)
local Select_player = Window:CreateTab("Select Player", 8997388094)
local Section = Select_player:CreateSection("Put the Target name in the input.", false)
local Section = Skills:CreateSection("Select your skill for uso in target player.")
local Paragraph = Welcome:CreateParagraph({Title = "Welcome", Content = [[
Welcome to Infiity Hub Test Place.
Test: Advange Kill Player.
Comming: Tomorrow.
Creator: Darkzin
]]})


-- settings
getgenv().Settings = {
    Kill_Player = {
        Player_Name = "",
    },
    Skill ={
        e = false,
        r = false,
        t = false,
        f = false,
        h = false,
        v = false,
        b = false,
    }
}


-- functions
local KeyPress = function(v)
    return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end


-- code
local plrs = game:GetService("Players");
local plr = game.Players.LocalPlayer;
local hrp = plr.Character.HumanoidRootPart;
local Settings


local Toggle = Skills:CreateToggle({
    Name = "Skill: E",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.e = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: R",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.r = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: T",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.t = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: F",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.f = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: H",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.h = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: V",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.v = state;
    end,
})
local Toggle = Skills:CreateToggle({
    Name = "Skill: B",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().Settings.Skill.b = state;
    end,
})
local Input = Select_player:CreateInput({
    Name = "Player Name",
    PlaceholderText = "...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().Settings.Kill_Player.Player_Name = Text;
    end,
})
local Toggle = Select_player:CreateToggle({
    Name = "Kill Player",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        Settings = state;
        if Settings then
            task.spawn(function()
                repeat task.wait()
                    -- kill player
                    plr.Character.HumanoidRootPart.CFrame = game.Players[getgenv().Settings.Kill_Player. Player_Name].Character.HumanoidRootPart.CFrame
                    local ohString1 = "Damage"
                    local ohString2 = "Punch"
                    local ohNil3 = nil
                    local ohNil4 = nil
                    local ohInstance5 = game.Players[getgenv().Settings.Kill_Player.Player_Name].Character.Humanoid
                    game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohNil3, ohNil4, ohInstance5)
                    
                    -- active skills
                    if getgenv().Settings.Skill.e then
                        KeyPress("E")
                    end
                    if getgenv().Settings.Skill.r then
                        KeyPress("R")
                    end
                    if getgenv().Settings.Skill.t then
                        KeyPress("T")
                    end
                    if getgenv().Settings.Skill.f then
                        KeyPress("F")
                    end
                    if getgenv().Settings.Skill.h then
                        KeyPress("H")
                    end
                    if getgenv().Settings.Skill.v then
                        KeyPress("V")
                    end
                    if getgenv().Settings.Skill.b then
                        KeyPress("B")
                    end
                until plr.Character.Humanoid.Health == 0 or game.Players[getgenv().Settings.Kill_Player.Player_Name].Character.Humanoid.Health == 0
            end)

        else

            plr.Character.Humanoid.Health = 0
        end
    end,
})
