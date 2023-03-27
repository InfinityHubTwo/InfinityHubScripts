--// Importand
local plr = game.Players.LocalPlayer
local Settings

local KeyPress = function(v)
   return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end
getgenv().SelectQuests = nil
Quests = {
	"Quest Level 1",
	"Quest Level 10",
	"Quest Level 20",
	"Quest Level 30",
	"Quest Level 40",
	"Quest Level 50",
	"Quest Level 75",
}
local function AutoFarmLevel()
	if getgenv().SelectQuests == "Quest Level 1" then
		workspace.Map.NPCs.Giorno.Done:FireServer() wait(.1)
		workspace.Map.NPCs.Giorno.QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Bad Gi" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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



	elseif  getgenv().SelectQuests == "Quest Level 10" then
		workspace.Map.NPCs["Scared Noob"].Done:FireServer() wait(.1)
		workspace.Map.NPCs["Scared Noob"].QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Scary Monster" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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



	elseif  getgenv().SelectQuests == "Quest Level 20" then
		workspace.Map.NPCs.Koichi.Done:FireServer() wait(.1)
		workspace.Map.NPCs.Koichi.QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Giorno Giovanna" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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



	elseif  getgenv().SelectQuests == "Quest Level 30" then
		workspace.Map.NPCs.aLLmemester.Done:FireServer() wait(.1)
		workspace.Map.NPCs.aLLmemester.QuestDone:FireServer()
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-617.175, 66.777, -472.283)
		plr.Character.Humanoid.WalkSpeed = 0
		plr.Character.StandEvents.M1:FireServer()



	elseif  getgenv().SelectQuests == "Quest Level 40" then
		workspace.Map.NPCs.Okayasu.Done:FireServer() wait(.1)
		workspace.Map.NPCs.Okayasu.QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Yoshikage Kira" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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

		

	elseif  getgenv().SelectQuests == "Quest Level 50" then
		workspace.Map.NPCs["Joseph Joestar"].Done:FireServer() wait(.1)
		workspace.Map.NPCs["Joseph Joestar"].QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Dio Over Heaven" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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



	elseif  getgenv().SelectQuests == "Quest Level 75" then
		workspace.Map.NPCs.Josuke.Done:FireServer() wait(.1)
		workspace.Map.NPCs.Josuke.QuestDone:FireServer()
		plr.Character.StandEvents.M1:FireServer()
		local Mob = "Angelo" -- Mob Name
		task.spawn(function ()
			repeat task.wait()
				Enemies = game:GetService("Workspace").Living:GetChildren()
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
	end
end




--// Notification Libray
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin",
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
      Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
   }
})



--// Farming Main
local Tab = Window:CreateTab("Farming", 7743866529)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = [[
Aqui você pode farmar seu level e as quests
Tome cuidado para ninguem te ver pois podem acabar te denunciando :<
]]})

local Section = Tab:CreateSection("--// Farming Options: Auto Farm Level", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Quest:",
   Options = Quests,
   CurrentOption = "",
   Flag = "Dropdown1", 
   Callback = function(Option)
		getgenv().SelectQuests = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Level",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				AutoFarmLevel()
			end
		else
			plr.Character.Humanoid.WalkSpeed = 20
		end
	end,
})



--// Press Key Main
local Tab = Window:CreateTab("Auto Press Key", 7734010488)
local Paragraph = Tab:CreateParagraph({Title = "Farming", Content = [[
Aqui você seleciona o Key no caso a tecla que você quer que ele execute no auto farm

EX{
	| Press E - Ele vai fica pressionando a tecla E
}
]]})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press E",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("E")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press R",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("R")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press T",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("T")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press Y",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("Y")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press F",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("F")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press H",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("H")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press J",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("J")
			end	
		end
	end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Press K",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State
		if Settings then
			while wait() and Settings do
				KeyPress("K")
			end	
		end
	end,
})
