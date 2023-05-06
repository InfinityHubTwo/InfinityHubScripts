local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local Window = Material.Load({
	Title = "Infinity Hub Mobile",
	Style = 3,
	SizeX = 300,
	SizeY = 300,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})
local lptab = Window.New({
	Title = "Player"
})
local Toggle = lptab.Toggle({
	Text = "Auto Block",
	Callback = function(state)
		if state then
			while wait() and state do
				local args = {
					[1] = "Alternate",
					[2] = "Block"
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		end
	end,
	Enabled = false
})
local Toggle = lptab.Toggle({
	Text = "Anti Time Stop",
	Callback = function(state)
		if state then
			while wait() and state do
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
	end,
	Enabled = false
})
local Toggle = lptab.Toggle({
	Text = "God Mode",
	Callback = function(state)
		if state then
			while wait() and state do
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
	end,
	Enabled = false
})
