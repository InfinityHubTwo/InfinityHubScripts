local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local Window = Material.Load({
	Title = "Infinity Hub Mobile",
	Style = 3,
	SizeX = 300,
	SizeY = 300,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(204,0,0)
	}
})
local ik = Window.New({
	Title = "Insta Kill"
})
local Toggle = ik.Toggle({
	Text = "Insta Kill ( Vergil )",
	Callback = function(state)
		if state then
            local Mob = "Vergil" -- Mob Name
            task.spawn(function ()
                repeat task.wait()
                    Enemies = workspace.Enemies:GetChildren()
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
            local ohString1 = "MouseButton1"
            game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
            wait(.25)
            workspace.Enemies.Vergil.Head:Destroy()
		end
	end,
	Enabled = false
})
local Toggle = ik.Toggle({
	Text = "Insta Kill ( Dio )",
	Callback = function(state)
		if state then
            local Mob = "DIO" -- Mob Name
            task.spawn(function ()
                repeat task.wait()
                    Enemies = workspace.Enemies:GetChildren()
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
            local ohString1 = "MouseButton1"
            game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
            wait(.25)
            workspace.Enemies.DIO.Head:Destroy()
		end
	end,
	Enabled = false
})
local Toggle = ik.Toggle({
	Text = "Insta Kill ( Garou )",
	Callback = function(state)
		if state then
            local Mob = "Garou" -- Mob Name
            task.spawn(function ()
                repeat task.wait()
                    Enemies = workspace.Enemies:GetChildren()
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
            local ohString1 = "MouseButton1"
            game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1)
            wait(.25)
            workspace.Enemies.Garou.Head:Destroy()
		end
	end,
	Enabled = false
})
