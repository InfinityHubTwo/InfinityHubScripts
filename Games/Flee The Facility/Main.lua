--// Var
local plr = game.Players.LocalPlayer
local function InfMoney()
	for i,v in pairs(game:GetService("Players").LocalPlayer.SavedPlayerStatsModule:GetChildren()) do
		if v:IsA("IntValue") then
			plr.SavedPlayerStatsModule.Credits.Value = "9e9"
		end
	end
end



--// Notification Libray
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin   (Patched)",
   LoadingTitle = "Infinity Hub",
   LoadingSubtitle = "by darkzin and cool",
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
      Key = ""
   }
})



--// Farming Main
local Tab = Window:CreateTab("Farming", 7743866529)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = [[
Bem, mais opções estão por vir, como Esp dentre outros, mais descobri uma falha que te da permissão de ter dinheiro infinito.

Funciona da seguinte maneira: Você tem que ter uma conta independente do tando de dinheiro que possua, depois disso ative o botão e ele te dará 9e9 de dinheiro e você pode gasta (Isso so funciona duas vezes, depois o jogo da print do teu dinheiro atual)
]]})

local Section = Tab:CreateSection("--// Farming Options: Infinity Money", true)
local Toggle = Tab:CreateToggle({
   Name = "Generate",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			InfMoney()
		end
	end,
})
