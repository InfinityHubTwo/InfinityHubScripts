-- variables
local lp = game:GetService("Players").LocalPlayer
local ts = game:GetService("Lighting").TS


-- code
local CoastingLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/UI-Libraries/main/Coasting%20Ui%20Lib/source.lua"))()
local PvPTab = CoastingLibrary:CreateTab("PvP")


PvPTab:CreateToggle("Auto Block", function(state)
	Settings = state
	if Settings then
	    while wait() and Settings do
			local args = {
				[1] = "Alternate",
				[2] = "Block"
			}
			game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
		end
	end
end)
PvPTab:CreateToggle("Anti Ts", function(state)
	Settings = state
	if Settings then
	    while wait() and Settings do
			for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
				if v:IsA("BoolValue") and v.Name == "TS" then
					if ts.Value == true then
						wait(1.2)
						ts.Value = false
					end
				end
			end
		end
	end
end)
PvPTab:CreateToggle("God Mode", function(state)
	Settings = state
	if Settings then
	    while wait() and Settings do
		if Settings then
			while wait() and Settings do
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "Block" then
                        v:Destroy()
                    end
                end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("NumberValue") and v.Name == "BlockReduction" then
                        v:Destroy()
                    end
                end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "BootlegRTZ" then
                        v:Destroy()
                    end
                end
			end
		end

	else
		
		lp.Character.Head:Destroy()
	end
end)
PvPTab:CreateToggle("God Mode", function(state)
	Settings = state
	if Settings then
	    while wait() and Settings do
		if Settings then
			while wait() and Settings do
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("StringValue") and v.Name == "Marked" then
                        v:Destroy()
                    end
                end
			end
		end
	end
end)
