-- (VOID) : Gui to Lua
-- Version: 1.4

-- Instances:

local Main = Instance.new("ScreenGui")
local Open = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local Close = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Main.Name = "Main"
Main.Parent = (game:GetService("CoreGui") or gethui())
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = Main
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 1.000
Open.Position = UDim2.new(0.0592734218, 0, 0.098484844, 0)
Open.Size = UDim2.new(0, 49, 0, 48)
Open.Visible = false
Open.Image = "http://www.roblox.com/asset/?id=13404230870"

UICorner.CornerRadius = UDim.new(1, 8)
UICorner.Parent = Open

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.0592734218, 0, 0.098484844, 0)
Close.Size = UDim2.new(0, 49, 0, 48)
Close.Image = "http://www.roblox.com/asset/?id=13404230870"

UICorner_2.CornerRadius = UDim.new(1, 8)
UICorner_2.Parent = Close

-- Scripts:

local function BZPQCRF_fake_script() -- Open.Main 
	local script = Instance.new('LocalScript', Open)

	local a = script.Parent
	local b = script.Parent.Parent.Close
	a.MouseButton1Click:Connect(function ()
		game:GetService("CoreGui").Rayfield.Enabled = true
		a.Visible = false
		b.Visible = true
	end)
end
coroutine.wrap(BZPQCRF_fake_script)()
local function SKPDGJ_fake_script() -- Close.Main 
	local script = Instance.new('LocalScript', Close)

	local a = script.Parent
	local b = script.Parent.Parent.Open
	a.MouseButton1Click:Connect(function ()
		game:GetService("CoreGui").Rayfield.Enabled = false
		a.Visible = false
		b.Visible = true
	end)
end
coroutine.wrap(SKPDGJ_fake_script)()
