-- variables
local plr = game:GetService("Players").LocalPlayer
local plrId = plr.UserId
local mouse = plr:GetMouse()
local CheckSpeed = plr.Character.Humanoid.WalkSpeed
local CheckJump = plr.Character.Humanoid.JumpPower
local CheckHealth = plr.Character.Humanoid.Health
local hrp = plr.Character.HumanoidRootPart
local function CheckStand()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("LocalScript") and v.Name ~= "ResetLighting" then
			print(v)
		end
	end
end
local ts = game:GetService("Lighting").TS
local function getWorkspaceTools()
	local wsTools = {}
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Tool") and game.Players:GetPlayerFromCharacter(v.Parent) == nil then
			if v:findFirstChild("Handle") or v:FindFirstChildOfClass("Part") or v:FindFirstChildOfClass("MeshPart") or v:findFirstChildOfClass("UnionOperation") then
				table.insert(wsTools, v)
			end
		end
	end
	return wsTools
end
local StandsFarmName = {
    "Anubis",
    "D4C",
    "OMT",
    "CrazyDiamond",
    "DoppioKingCrimson",
    "KillerQueen",
    "GoldExperience",
    "StarPlatinum",
    "StarPlatinumTW",
    "TheWorld",
    "HierophantGreen",
    "Whitesnake",
    "TheWorldAlternateUniverse",
    "WhitesnakeAU",
    "KingCrimsonAU",
    "SoftAndWetShiny",
    "StarPlatinumOVA",
    "TheWorldOVA",
    "NTWAU",
    "CreeperQueen",
    "SPTW",
    "StickyFingers",
    "SoftAndWet"
}
local Settings



-- settings
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/Webhook/Loader.lua'))();



-- libray
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Orion/Loader.lua')))()
local Window = OrionLib:MakeWindow({Name = "Infinity Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "InfinityHub", IntroText = "Infinity Hub (Mobile Version)", IntroIcon = "rbxassetid://7733964640"})



-- tabs
local StandsTab = Window:MakeTab({
	Name = "Stands",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



-- code
local Section = StandsTab:AddSection({
	Name = "15 Seconds Time Stop"
})
StandsTab:AddButton({
	Name = "Shadown Dio",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
  	end    
})
StandsTab:AddButton({
	Name = "JSP",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
  	end    
})
StandsTab:AddButton({
	Name = "EVA01",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
  	end    
})
StandsTab:AddButton({
	Name = "The World Over Heaven",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
  	end    
})
StandsTab:AddButton({
	Name = "Steve",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
  	end    
})
StandsTab:AddButton({
	Name = "Herobrine",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
  	end    
})
StandsTab:AddButton({
	Name = "The World Auternative Universe",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
  	end    
})
StandsTab:AddButton({
	Name = "The World Ova",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "theworldnew")
  	end    
})
StandsTab:AddButton({
	Name = "The World Ova (Over Heaven)",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
  	end    
})
StandsTab:AddButton({
	Name = "Neo The World Auternative Universe",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
  	end    
})

local Section = StandsTab:AddSection({
	Name = "Stand Farm"
})
getgenv().WantedStand = ""
getgenv().DelayInSeconds = 8
getgenv().Webhook = ""
StandsTab:AddTextbox({
	Name = "Stand Name",
	Default = "...",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().WantedStand = Value;
	end	  
})
StandsTab:AddButton({
	Name = "Start Stand Farm",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/asdlkasndklsa/StandFarm/main/StandFarm'))()
  	end    
})
StandsTab:AddDropdown({
	Name = "Stands Names: ",
	Default = "Not Selected",
	Options = StandsFarmName,
    Flag = "StandFarmNameDropDown",
	Callback = function(Value)

	end    
})
StandsTab:AddButton({
	Name = "Copy",
	Callback = function()
      	setclipboard(OrionLib.Flags["StandFarmNameDropDown"].Value)
  	end    
})




PlayerTab:AddToggle({
	Name = "Auto Block",
	Default = false,
	Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
            end
        end
	end    
})
PlayerTab:AddToggle({
	Name = "Anti Time Stop",
	Default = false,
	Callback = function(state)
        if settings then
            task.spawn(function ()
                repeat task.wait(1)
	                for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
	                	if v:IsA("BoolValue") and v.Name == "TS" then
	                		if ts.Value == true then
	                			wait(1)
	                			ts.Value = false
	                		end
	                	end
	                end
                until settings == false
            end)
        end
	end    
})
PlayerTab:AddToggle({
	Name = "Anti Disc",
	Default = false,
	Callback = function(state)
        if settings then
            while wait() and settings do
                for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "Disabled" then
                        if v.Value == true then wait(.25)
                            v.Value = false
                        end
                    end
                end
            end
        end
	end    
})
PlayerTab:AddButton({
	Name = "Active Pose",
	Callback = function()
		local args = {
			[1] = true
		}
		game:GetService("ReplicatedStorage").Main.Menacing:FireServer(unpack(args))
  	end    
})
