-- libray
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InfHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Infinity Hub", IntroIcon = "rbxassetid://7733964640"})

local lp = Window:MakeTab({
	Name = "local Player",
	Icon = "rbxassetid://8797391485",
	PremiumOnly = false
})
local Section = lp:AddSection({
	Name = "Local Player Script"
})
lp:AddToggle({
	Name = "Auto Block",
	Default = false,
	Callback = function(state)
		Settings = state
		if Settings then
			while wait() and Settings do
				wait(1)
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		end
	end    
})
lp:AddToggle({
	Name = "Anti Time Stop",
	Default = false,
	Callback = function(state)
		Settings = state
		if Settings then
			while wait() and Settings do
				for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
					if v:IsA("BoolValue") and v.Name == "TS" then
						if game:GetService("Lighting").TS.Value == true then
							wait(1.2)
							game:GetService("Lighting").TS.Value = false
						end
					end
				end
			end
		end
	end    
})
lp:AddToggle({
	Name = "God Mode ( Mobile Dont Work )",
	Default = false,
	Callback = function(state)
		Settings = state
		if Settings then
			while wait() and Settings do
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "Block" then
                        v:Remove()
                    end
                end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("NumberValue") and v.Name == "BlockReduction" then
                        v:Remove()
                    end
                end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "BootlegRTZ" then
                        v:Remove()
                    end
                end
			end
		end
	end    
})
lp:AddToggle({
	Name = "Anti Sans Marked ( Mobile Dont Work )",
	Default = false,
	Callback = function(state)
		Settings = state
		if Settings then
			while wait() and Settings do
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("StringValue") and v.Name == "Marked" then
                        v:Remove()
                    end
                end
			end
		end
	end    
})



local ts = Window:MakeTab({
	Name = "Ts Universal",
	Icon = "rbxassetid://8797391485",
	PremiumOnly = false
})
local Section = ts:AddSection({
	Name = "Time Stop Universal"
})

ts:AddButton({
	Name = "Shadow Dio",
	Callback = function()
      	game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
  	end    
})



local boss = Window:MakeTab({
	Name = "Boss",
	Icon = "rbxassetid://8797391485",
	PremiumOnly = false
})
local Section = boss:AddSection({
	Name = "Auto Boss Options"
})
boss:AddButton({
	Name = "Start Auto boss",
	Callback = function()
  	    getgenv().WaitTime = 240
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()
  	end    
})
boss:AddButton({
	Name = "Sword No Cooldown",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
  	end    
})
