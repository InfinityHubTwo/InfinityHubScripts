--[[
    New Infinity Hub Stands Awakening version 8.0

    Credits
        . Darkzin
        . InfinityMercury
]]





-- variables
local plr = game:GetService("Players").LocalPlayer
local plrId = plr.UserId
local mouse = plr:GetMouse()
local CheckSpeed = plr.Character.Humanoid.WalkSpeed
local CheckJump = plr.Character.Humanoid.JumpPower
local CheckHealth = plr.Character.Humanoid.Health
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local function CheckStand()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("LocalScript") and v.Name ~= "ResetLighting" then
			print(v)
		end
	end
end
local ts = game:GetService("Lighting").TS
local function AntiTs()
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("BoolValue") and v.Name == "TS" then
			if ts.Value == true then
				wait(1)
				ts.Value = false
			end
		end
	end
end
local Settings



-- libray
local repo = 'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Linoria/'
local Libray = loadstring(game:HttpGet(repo .. 'Loader.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeMenager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveMenager.lua'))()
local Window = Library:CreateWindow({
    Title = 'Infinity Hub | Stands Awakening',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})



-- tabs
local Tabs = {
    Stands = Window:AddTab('Stands'),
    LP = Window:AddTab('Player'),
    Items = Window:AddTab('Items'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



-- code
local StandsBox = Tabs.Stands:AddLeftGroupbox('15 Second Time Stop')
local Button = StandsBox:AddButton({
    Text = 'Shadow Dio',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'JSP',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'EVA01',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'The World Over Heaven',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'Steve',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'Herobrine',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'The World Auternative Universe',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'The World Ova',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "theworldnew")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'The World Ova ( Over Heaven )',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})
local Button = StandsBox:AddButton({
    Text = 'Neo The World Auternative Universe',
    Func = function()
        game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a 15-second time stop'
})


local GoldemExpirienceBox = Tabs.Stands:AddLeftGroupbox('Goldem Expirience (GER)')
local Button = GoldemExpirienceBox:AddButton({
    Text = 'Infinite Damage Reflect',
    Func = function()
   		local ohString1 = "Alternate"
		local ohString2 = "RTZ"
		local ohBoolean3 = true
		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohBoolean3)
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a Infinite Damage Reflect'
})
local Button = GoldemExpirienceBox:AddButton({
    Text = 'Infinite Damage Deflect',
    Func = function()
		local ohString1 = "Alternate"
		local ohString2 = "Deflect"
		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2)
    end,
    DoubleClick = false,
    Tooltip = 'Click to use a Infinite Damage Deflect'
})


local ShadowDioBox = Tabs.Stands:AddLeftGroupbox('Shadow Dio')
local Button = ShadowDioBox:AddButton({
    Text = 'Shadow Dio 100 Knives',
    Func = function()
        loadstring(
            game:HttpGet(
                'https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'
            )
        )()
    end,
    DoubleClick = false,
    Tooltip = 'click to launch 100 knives'
})
local Button = ShadowDioBox:AddButton({
    Text = 'Active Shadow Dio STWRTZ',
    Func = function()
   		local args = {
	  		[1] = "Alternate",
	  		[2] = "STWRTZ",
	  		[3] = true
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'STWRTZ'
})
ShadowDioBox:AddToggle('STWFS', {
    Text = 'Shadow Dio Fake Stand',
    Default = false,
    Tooltip = '',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
				-- Head
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeHead,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Torso
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeTorso,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Right Arm
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeRightArm,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
				-- Left Arm
				local args = {
				    [1] = game:GetService("Players").LocalPlayer.Character.Stand.FakeLeftArm,
				    [2] = 0
				}
				game:GetService("ReplicatedStorage").Main.Transparency:FireServer(unpack(args))
            end
        end
    end
})


local SansBox = Tabs.Stands:AddRightGroupbox('Sans')
local Button = SansBox:AddButton({
    Text = 'Teleport Player To Limbo',
    Func = function()
		local args = {
			[1] = "Alternate",
			[2] = "Teleport",
			[3] = false,
			[4] = Vector3.new(621, -75, 235)
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'press the button next to a player to teleport him to limbo'
})


local MadeInHeavenBox = Tabs.Stands:AddRightGroupbox('Made In Heaven')
local Button = MadeInHeavenBox:AddButton({
    Text = 'Reset Universe',
    Func = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "UniverseReset"
	    }	
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'click to reset the universe'
})
local Button = MadeInHeavenBox:AddButton({
    Text = 'Time Accel',
    Func = function()
		local args = {
		    [1] = "Alternate",
		    [2] = "TimeAccel"
		}		
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'no cooldown'
})




local PlayerOptionsBox = Tabs.LP:AddLeftGroupbox('Player Game Functions')
PlayerOptionsBox:AddToggle('AB', {
    Text = 'Auto Block',
    Default = false,
    Tooltip = 'Turn on to be locked',

    Callback = function(state)
        settings = state
        if settings then
            while wait(.5) and settings do
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}
				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
            end
        end
    end
})
PlayerOptionsBox:AddToggle('ATS', {
    Text = 'Anti Time Stop',
    Default = false,
    Tooltip = 'Turn on to Anti TS',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                AntiTs()
            end
        end
    end
})
PlayerOptionsBox:AddToggle('AD', {
    Text = 'Anti Disc',
    Default = false,
    Tooltip = 'Turn on to Anti Disc',

    Callback = function(state)
        settings = state
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
PlayerOptionsBox:AddToggle('AD', {
    Text = 'God Mode',
    Default = false,
    Tooltip = 'Debug Version, then sometimes it cant work',

    Callback = function(state)
        settings = state
        if settings then
            while wait() and settings do
                print(".")
            end
        end
    end
})
local Button = PlayerOptionsBox:AddButton({
    Text = 'Active Pose',
    Func = function()
		local args = {
			[1] = true
		}
		game:GetService("ReplicatedStorage").Main.Menacing:FireServer(unpack(args))
    end,
    DoubleClick = false,
    Tooltip = 'press to create the effects of the pose'
})


local PlayerNormalOptionsBox = Tabs.LP:AddRightGroupbox('Player Normal Functions')
local Button = PlayerNormalOptionsBox:AddButton({
    Text = 'Respawn',
    Func = function()
        plr.Character.Head:Destroy()
    end,
    DoubleClick = false,
    Tooltip = 'click to respawn'
})
PlayerNormalOptionsBox:AddSlider('Speed', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(x)
        plr.Character.Humanoid.WalkSpeed = x;
    end
})
PlayerNormalOptionsBox:AddSlider('Jump', {
    Text = 'JumpPower',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(x)
        plr.Character.Humanoid.JumpPower = x;
    end
})


local FePlayerOptionsBox = Tabs.LP:AddLeftGroupbox('Fe Options')
local Button = FePlayerOptionsBox:AddButton({
    Text = 'Fe Invisible',
    Func = function()
        local offset = 1100 --how far you are away from your camera when invisible
        local LocalPlayer = game.Players.LocalPlayer
        local Backpack = LocalPlayer.Backpack
        local Character = LocalPlayer.Character
        local invisible = false
        local grips = {}
        local heldTool
        local gripChanged
        local handle
        local weld
        function setDisplayDistance(distance)
           for _,player in pairs(game.Players:GetPlayers()) do if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance end end
        end
        local tool = Instance.new("Tool", Backpack)
        tool.Name = "Ghostify [Disabled]"
        tool.RequiresHandle = false
        tool.CanBeDropped = false
        tool.Equipped:Connect(function() wait()
           if not invisible then
               invisible = true
               tool.Name = "Ghostify [Enabled]"
               if handle then handle:Destroy() end if weld then weld:Destroy() end
               handle = Instance.new("Part", workspace) handle.Name = "Handle" handle.Transparency = 1 handle.CanCollide = false handle.Size = Vector3.new(2, 1, 1)
               weld = Instance.new("Weld", handle) weld.Part0 = handle weld.Part1 = Character.HumanoidRootPart weld.C0 = CFrame.new(0, offset-1.5, 0)
               setDisplayDistance(offset+100)
               workspace.CurrentCamera.CameraSubject = handle
               Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
               Character.Humanoid.HipHeight = offset
               Character.Humanoid:ChangeState(11)
               for _,child in pairs(Backpack:GetChildren()) do if child:IsA("Tool") and child ~= tool then grips[child] = child.Grip end end
           elseif invisible then
               invisible = false
               tool.Name = "Ghostify [Disabled]"
               if handle then handle:Destroy() end if weld then weld:Destroy() end
               for _,child in pairs(Character:GetChildren()) do if child:IsA("Tool") then child.Parent = Backpack end end
               for tool,grip in pairs(grips) do if tool then tool.Grip = grip end end
               heldTool = nil
               setDisplayDistance(100)
               workspace.CurrentCamera.CameraSubject = Character.Humanoid
               Character.Animate.Disabled = false
               Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
               Character.Humanoid.HipHeight = 0
               Character.Humanoid:ChangeState(11)
           end
           tool.Parent = Backpack
        end)
        Character.ChildAdded:Connect(function(child) wait()
           if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
               heldTool = child
               local lastGrip = heldTool.Grip
               if not grips[heldTool] then grips[heldTool] = lastGrip end
               for _,track in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do track:Stop() end
               Character.Animate.Disabled = true
               heldTool.Grip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
               heldTool.Parent = Backpack
               heldTool.Parent = Character
               if gripChanged then gripChanged:Disconnect() end
               gripChanged = heldTool:GetPropertyChangedSignal("Grip"):Connect(function() wait()
                   if not invisible then gripChanged:Disconnect() end
                   if heldTool.Grip ~= lastGrip then
                       lastGrip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
                       heldTool.Grip = lastGrip
                       heldTool.Parent = Backpack
                       heldTool.Parent = Character
                   end
               end)
           end
        end)
    end,
    DoubleClick = false,
    Tooltip = 'fe invisible tool'
})
local Button = FePlayerOptionsBox:AddButton({
    Text = 'Fe Character Creator',
    Func = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/rouxhaver/scripts-3/main/FE%20character%20creator.lua'))();
    end,
    DoubleClick = false,
    Tooltip = 'click to create your character'
})




local ItemFarmBox = Tabs.Items:AddLeftGroupbox('Item Farm')
local Button = ItemFarmBox:AddButton({
    Text = 'Grab Tools',
    Func = function()
        for _, v in pairs(workspace:GetChildren()) do
            if v:IsA("Tool") then
                plr.Character.Humanoid:EquipTool(v)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'click to grab all tools'
})
local Button = ItemFarmBox:AddButton({
    Text = 'Teleport Tools',
    Func = function()
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
			end
		end
    end,
    DoubleClick = false,
    Tooltip = 'click to teleport to random tools'
})
ItemsName = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Viewports.Items:GetChildren()) do if v:IsA("Model") then table.insert(ItemsName, v.Name) end end
ItemFarmBox:AddDropdown('ItemSniperDrop', {
    Values = ItemsName,
    Default = 1,
    Multi = false,

    Text = 'Item Sniper',
    Tooltip = 'Select a item',

    Callback = function(Value)
    end
})
local Button = ItemFarmBox:AddButton({
    Text = 'Item Sniper',
    Func = function()
        for _, v in pairs(workspace:GetChildren()) do
            if v:IsA("Tool") and v.Name == Options.ItemSniperDrop.Value then
                plr.Character.Humanoid:EquipTool(v)
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'click to grab item selected'
})


local ItemNotifierBox = Tabs.Items:AddRightGroupbox('Item Notifier')
for _, v in pairs(game:GetService("ReplicatedStorage").Viewports.Items:GetChildren()) do
    if v:IsA("Model") and v.Name ~= "Nothing" then
        local Button = ItemNotifierBox:AddButton({
            Text = v.Name,
            Func = function()
                if workspace[v.Name] then
                    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
                    hi:Play() wait(.46)
                    Notification:Notify(
                        {Title = "Item Notifier", Description = "The item: ".. v.Name ..", is spawned"},
                        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
                        {Image = "http://www.roblox.com/asset/?id=13780014144", ImageColor = Color3.fromRGB(255, 84, 84)}
                    )
                end
            end,
            DoubleClick = false,
            Tooltip = 'click to see if the item is spawned'
        })
    end
end
