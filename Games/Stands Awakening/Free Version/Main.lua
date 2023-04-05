-- services
local Lighting 				= game:GetService("Lighting");
local ReplicatedStorage 	= game:GetService("ReplicatedStorage");
local workspace 			= game:GetService("Workspace");
local Players 				= game:GetService("Players");
local LocalPlayer 			= Players.LocalPlayer;
local Character				= LocalPlayer.Character
local Humanoid 				= Character.Humanoid
local HumanoidRootPart	 	= Character.HumanoidRootPart
local Settings


-- variables
local plrname 		= LocalPlayer.Name
local plrspeed 		= Humanoid.WalkSpeed
local plrjump  		= Humanoid.JumpPower
local plrhealth		= Humanoid.Health
local plrId 		= LocalPlayer.UserId
local function CheckStand()
	for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("LocalScript") and v.Name ~= "ResetLighting" then
			print(v)
		end
	end
end
local ts = Lighting.TS 



-- function
getgenv().SelectOptions = nil
local function DoStuff()
	if getgenv().SelectOptions == "Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Requiem Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Requiem Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Rokakaka Fruit" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Rokakaka Fruit" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Vampire Mask" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Vampire Mask" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Frog" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Frog" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end


	elseif getgenv().SelectOptions == "Banknote" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Banknote" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "DIO's Diary" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "DIO's Diary" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Dio's Skull" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Dio's Skull" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Camera" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Camera" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Pot Platinum’s Diary" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Pot Platinum’s Diary" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Red Heart" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Red Heart" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "True Requiem Arrow" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "True Requiem Arrow" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Ornstein's Spear" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Ornstein's Spear" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end

	elseif getgenv().SelectOptions == "Aja Mask" then
	    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        	if v:IsA("Tool") and v.Name == "Aja Mask" then
            	pcall(function()
                	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            	end)
        	end
    	end
	end
end

getgenv().AutoItemSlot = nil
getgenv().SlotsSelect = nil
local function AutoCollectSlots()
	if getgenv().SlotsSelect == "Slot 1" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot1", false, false)


	elseif getgenv().SlotsSelect == "Slot 2" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot2", false, false)


	elseif getgenv().SlotsSelect == "Slot 3" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot3", false, false)


	elseif getgenv().SlotsSelect == "Slot 4" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot4", false, false)


	elseif getgenv().SlotsSelect == "Slot 5" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot5", false, false)


	elseif getgenv().SlotsSelect == "Slot 6" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot6", false, false)


	elseif getgenv().SlotsSelect == "Slot 7" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot7", false, false)


	elseif getgenv().SlotsSelect == "Slot 8" then
		game:GetService("ReplicatedStorage").Bank:FireServer("Slot8", false, false)
	end
end
local function AutoItemSlot()
	if getgenv().AutoItemSlot == "Dio's Skull" then
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "DIO's Skull 2" then
		    	pcall(function()
		        	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		    	end)
			end
		end
		pcall(
			function ()
    			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    			    if v.name == "DIO's Skull 2" then
    			        v.Parent = game.Players.LocalPlayer.Character
    			    end
    			end
			end
		)


	elseif getgenv().AutoItemSlot == "Camera" then
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Camera" then
		    	pcall(function()
		        	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		    	end)
			end
		end
		pcall(
			function ()
    			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    			    if v.name == "Camera" then
    			        v.Parent = game.Players.LocalPlayer.Character
    			    end
    			end
			end
		)


	elseif getgenv().AutoItemSlot == "Pot Platinum's Diary" then
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Pot Platinum's Diary" then
		    	pcall(function()
		        	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		    	end)
			end
		end
		pcall(
			function ()
    			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    			    if v.name == "Pot Platinum's Diary" then
    			        v.Parent = game.Players.LocalPlayer.Character
    			    end
    			end
			end
		)


	elseif getgenv().AutoItemSlot == "Uncanny Key" then
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Uncanny Key" then
		    	pcall(function()
		        	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		    	end)
			end
		end
		pcall(
			function ()
    			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    			    if v.name == "Uncanny Key" then
    			        v.Parent = game.Players.LocalPlayer.Character
    			    end
    			end
			end
		)
	end
end
local function AfkPosition()
	local Float = Instance.new("Part")
	Float.Parent = game.Workspace
	Float.Size = Vector3.new(5,1,5)
	Float.Anchored = true
	Float.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0)
	Float.Transparency = 1
end

local function AntiAfk()
repeat
	wait()
until game:IsLoaded()
wait()

if getconnections then
    for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end
end

-- libray
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Infinity Hub Free  |  @Darkzin",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


-- credits
GUI:Credit{
	Name = "Darkzin",
	Description = "Creator of Infinity Hub",
	Discord = "𝓓𝓪𝓻𝓴 ☪#9908"
}


-- tabs
local Main = GUI:Tab{
	Name = "Main",
	Icon = "rbxassetid://12834994204"
}
local Stands = GUI:Tab{
	Name = "Stands",
	Icon = "rbxassetid://7072724538"
}
local lp = GUI:Tab{
	Name = "LocalPlayer",
	Icon = "rbxassetid://8797391485"
}
local ItemFarm = GUI:Tab{
	Name = "Item Farm",
	Icon = "rbxassetid://13000794611"
}
local at = GUI:Tab{
	Name = "Auto Boss",
	Icon = "rbxassetid://12828636851"
}
local Afk = GUI:Tab{
	Name = "Afk Farm",
	Icon = "rbxassetid://12876835994"
}



-- tab: Main code
Main:Button{
	Name = "Player Info",
	Description = nil,
	Callback = function() 
		GUI:Notification{
			Title = "Player Info",
			Text = "Informações coletadas, precione F9 ou abra o Developer Console",
			Duration = 6,
			Callback = function() 
				
			end
		}
    	print("{Player Info} Name:", plrname)
    	print("{Player Info} User Id:", plrId)
    	print("{Player Info} Health:", plrhealth)
    	print("{Player Info} WalkSpeed:", plrspeed)
    	print("{Player Info} JumpPower:", plrjump)
    	print("{Player Info} Stand = {")
			CheckStand()
		print("}")
	end
}
Main:Toggle{
	Name = "AutoBlock",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		Settings = state 
		if Settings then
			while wait() and Settings do
				game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Block")
			end
		end
	end
}	
Main:Toggle{
	Name = "Anti Time Stop",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		Settings = state 
		if Settings then
			while wait() and Settings do
				if ts.Value == true then
					wait(.5)
					ts.Value = false
				end
			end
		end
	end
}	


-- tab: Stands code
Stands:Button{
	Name = "Shadow Dio",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "ShadowTheWorld" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
		  end
	  end
	end
}
Stands:Button{
	Name = "JSP",
	Description = nil,
	Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "JSP" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
	end
}
Stands:Button{
	Name = "The World Over Heaven",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldOverHeavenStand" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
		  end
	  end
	end
}
Stands:Button{
	Name = "Steve",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "StevePlatinum" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
	end
}
Stands:Button{
	Name = "Herobrine",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "Herobrine" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
	end
}
Stands:Button{
	Name = "The World Auternative Universe",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldAlternateUniverseStand" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
		  end
	  end
	end
}
Stands:Button{
	Name = "The World Ova",
	Description = nil,
	Callback = function() 
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldOVAStand" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "dioova")
		  end
	  end
	end
}


-- tab: LocalPlayer Code
lp:Slider{
	Name = "Walk Speed",
	Default = 16,
	Min = 16,
	Max = 1000,
	Callback = function(speed) 
		Humanoid.WalkSpeed = speed
	end
}
lp:Slider{
	Name = "Jump Power",
	Default = 50,
	Min = 50,
	Max = 1000,
	Callback = function(jump) 
		Humanoid.JumpPower = jump
	end
}


-- tab: Auto Boss code
at:Button{
	Name = "Start Auto Boss",
	Description = nil,
	Callback = function() 
  	    getgenv().WaitTime = 240 -- amount time you want added to your run in seconds
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()
	end
}
at:Button{
	Name = "Sword No Cooldown",
	Description = nil,
	Callback = function() 
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
	end
}
at:Toggle{
	Name = "Boss Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		Settings = state 
		if Settings then
			function CreateESPPart(BodyPart,color)
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
			
			CreateESPPart(game:GetService("Workspace").TrollPrism, Color3.fromRGB(0,255,0)) 
		else
			game:GetService("Workspace").TrollPrism.ESPPart:Destroy()
		end
	end
}


-- tab: Item Farm Code
local MyDropdown = ItemFarm:Dropdown{
	Name = "Item Sniper",
	StartingText = "Select Item",
	Description = nil,
	Items = {
		"Arrow", "Requiem Arrow", "Rokakaka Fruit",  "Vampire Mask", "Frog", "Banknote", "DIO's Diary",  "Dio's Skull",  "Camera",  "Pot Platinum’s Diary", "Red Heart", "True Requiem Arrow", "Ornstein's Spear", "Aja Mask"
	},
	Callback = function(item)
		getgenv().SelectOptions = item
	end
}
ItemFarm:Button{
	Name = "Sniper",
	Description = nil,
	Callback = function()
		DoStuff()
	end
}
ItemFarm:Toggle{
	Name = "Grab Tools",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		Settings = state 
		if Settings then
			while wait() and Settings do
				local Human = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				for _, v in ipairs(workspace:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						Human:EquipTool(v)
					end
				end
				if grabtoolsFunc then grabtoolsFunc:Disconnect() end
				grabtoolsFunc = workspace.ChildAdded:Connect(function(v)
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
					end
				end)
			end
		end
	end
}


-- tab: Afk Farm Code
local MyDropdown = Afk:Dropdown{
	Name = "Select Slot",
	StartingText = "Slots",
	Description = nil,
	Items = {
		"Slot 1",
		"Slot 2",
		"Slot 3",
		"Slot 4",
		"Slot 5",
		"Slot 6",
		"Slot 7",
		"Slot 8",
	},
	Callback = function(Slot)
		getgenv().SlotsSelect = Slot
	end
}
local MyDropdown = Afk:Dropdown{
	Name = "Select Item (More Soon)",
	StartingText = "Items",
	Description = nil,
	Items = {
		"Dio's Skull",
		"Camera",
		"Pot Platinum's Diary",
		"Uncanny Key",
	},
	Callback = function(Items)
		getgenv().AutoItemSlot = Items
	end
}
Afk:Toggle{
	Name = "Start + Anti Afk",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		Settings = state 
		if Settings then
			GUI:Notification{
				Title = "Afk Farm 💤",
				Text = "Afk Farm Started",
				Duration = 6,
				Callback = function() 

				end
			}
			AntiAfk()
			HumanoidRootPart.CFrame = CFrame.new(588, 1700, -317)
			AfkPosition()
			while wait() and Settings do
				HumanoidRootPart.CFrame = CFrame.new(588, 1700, -317)
				Humanoid.WalkSpeed = 0
				AutoCollectSlots()
				AutoItemSlot()
			end
		else
			GUI:Notification{
				Title = "Afk Farm 💤",
				Text = "Afk Farm Ended",
				Duration = 6,
				Callback = function() 

				end
			}
			HumanoidRootPart.CFrame = CFrame.new(1339, 672, -452)
			Humanoid.WalkSpeed = 20
		end
	end
}
