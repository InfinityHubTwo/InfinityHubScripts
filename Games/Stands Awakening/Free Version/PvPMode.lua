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
	Name = "God Mode",
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
	Name = "Anti Sans Marked",
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
