--[[
Inifnity Hub Button Close / Open Hub
By InfinityMercury
]]

local Main = Instance.new("ScreenGui")
local Open = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

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
Open.Visible = true
Open.Image = "http://www.roblox.com/asset/?id=7733964640"

UICorner.CornerRadius = UDim.new(1, 8)
UICorner.Parent = Open

-- Scripts:

local function BZPQCRF_fake_script() -- Open.Main 
	local script = Instance.new('LocalScript', Open)

	local a = script.Parent
	a.MouseButton1Click:Connect(function ()
        local KeyPress = function(v)
           return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
        end
        KeyPress("J")
	end)
end
coroutine.wrap(BZPQCRF_fake_script)()
