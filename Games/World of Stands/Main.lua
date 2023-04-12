--// Print
print[[
	:

	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>
	|															  |
	|	Infinity Hub |  InfHub Worlds Of Stans Update:  1.0.2 	  |
	|	Infinity Hub |  Have Fun.								  |
	|															  |
	--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--<>

]]




--// not libray
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin",
   LoadingTitle = "Infinity Hub",
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




--// Variables
local Settings 
local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character
local Hum = Char.Humanoid
local Speed = Hum.WalkSpeed
local Jump = Hum.JumpPower
local Health = Hum.Health
local hrp 					= game.Players.LocalPlayer.Character.HumanoidRootPart
local TweenService 			= game:GetService('TweenService')
local Player 				= game.Players.LocalPlayer
local LocalPlayer 			= Player
local Char 					= Player.Character or Player.CharacterAdded:wait()


--// Function
local function ChestFarm(a) 
	for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Model") and v.Name == a then
			--< Plr Speed >--
			pcall(
				function ()
					Char.Humanoid.WalkSpeed = 0
				end
			)

			--< Move to Chest >--
			local MoveToChect = TweenService:create(Char.Humanoid.RootPart,TweenInfo.new(12), {CFrame = CFrame.new(v.Top.Position)})
			MoveToChect:Play()
			wait(12.2)

			--< Collect Chest >--
			fireproximityprompt(v.Inside.ProximityPrompt)
		end
	end
end
local function CheckChest(a)
	for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Model") and v.Name == a then
			print(a)
			ChestFarm(a)
			
		else
			
			print("Chest:", a, "Not Spawned")
		end
	end
end
local function AutoAllChests()
	if CheckChest("1") then
		print(".")
	end
	if CheckChest("2") then
		print(".")
	end
	if CheckChest("3") then
		print(".")
	end
	if CheckChest("4") then
		print(".")
	end
	if CheckChest("5") then
		print(".")
	end
	if CheckChest("6") then
		print(".")
	end
	if CheckChest("7") then
		print(".")
	end
	if CheckChest("8") then
		print(".")
	end
	if CheckChest("9") then
		print(".")
	end
	if CheckChest("10") then
		print(".")
	end
	if CheckChest("11") then
		print(".")
	end
	if CheckChest("12") then
		print(".")
	end
	if CheckChest("13") then
		print(".")
	end
	if CheckChest("14") then
		print(".")
	end
	if CheckChest("15") then
		print(".")
	end
	if CheckChest("16") then
		print(".")
	end
end
local function FeRespawn()
	if game:GetService("Workspace").FilteringEnabled == true then
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title 	= 	" Player Respawn ";
			Text 	= 	" Player Respawned for desactive Chest Farm. ";
			Icon 	= 	"http://www.roblox.com/asset/?id=12828674545";
		})
	end
	game.Players.LocalPlayer.Character.Head:Destroy()
end


--// Libray Windown 
local Tab = Window:CreateTab("Farming", 7743866529)
local Paragraph = Tab:CreateParagraph({Title = "Chests Name:", Content = [[

	--< 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 >--
]]})

local Input = Tab:CreateInput({
   Name = "Select the chest you want to farm.",
   PlaceholderText = "Chest Name",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
		CheckChest(Text)
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Farm All Chests",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			AutoAllChests()

		else
			
			FeRespawn()
		end
	end,
})
