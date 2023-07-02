-- variables
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Extras/Anti-Cheat"))()  -- V.G Hub Credits
local Shindo = {4616652839, 4601350214, 4601350394, 4601350656, 4601350809, 5431071837, 5447073001, 5084678830, 5431069982, 4601350760, 6341670805, 6505734854, 6901575446, 6984568732, 6986372023, 5451398863, 7214033433, 5451401540, 5307141034, 7534339269, 5451410109, 6593187011, 6593188260, 5743370338, 5664805984, 5664803952, 8184506020, 8472733618, 7923764447, 9310522814, 5451405681, 7524809704, 7524811367, 6602058266, 5255237254, 6602103757, 5824792748, 4616652839, 4601350214, 4601350394, 4601350656, 4601350809, 5431071837, 5447073001, 5431069982, 4601350760, 6341670805, 6505734854, 6901575446, 6984568732, 6986372023, 5451398863, 7214033433, 5451401540, 5307141034, 7534339269, 5451410109, 6593187011, 6593188260, 5743370338, 5664805984, 5664803952, 8184506020, 8472733618, 7923764447, 9310522814, 5451405681, 7524809704, 7524811367, 6602058266, 5255237254, 6602103757, 5824792748}
local Stat = Player.statz
local Keys = {}
local Delete = {"CCoff", "custo", "conquer", "narutoshadowclone"}
local Pcall = pcall(function()
    for i,v in pairs(Delete) do
        Workspace:FindFirstChild(v,true):Destroy()
    end 
end)
local For = function(E)
    return Stat.main[tostring(E)]
end 
local Key = function(Key)
    return VirtualInputManager:SendKeyEvent(true,tostring(Key),true) and VirtualInputManager:SendKeyEvent(false,tostring(Key),false)
end 
local NoClip = function()
    return Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
end 
for i,v in pairs(Stat.presetkeys:GetChildren()) do
    if not table.find(Keys,v.Name) then
        table.insert(Keys,v.Name)
    end 
end 
local Old = pcall(function()
    local Dungon = {}
    for i=1,15 do 
        table.insert(Dungon,"dungeon" .. i)
    end 
end)
local VirtualInputManager = game:GetService('VirtualInputManager')



-- notification
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local hi = Instance.new("Sound")  hi.Name = "Notification_Sound"  hi.SoundId = "http://www.roblox.com/asset/?id=6026984224"  hi.Volume = 5  hi.archivable = false  hi.Parent = game.Workspace hi:Play() wait(.46)
Notification:Notify(
    {Title = "Script Executed", Description = [[
- Infinity Hub Executed,
- made by InfinityMercury, Darkzin and Cool
    ]]},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=13780014144", ImageColor = Color3.fromRGB(255, 255, 255)}
) wait(2)
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Stands%20Awakening/Webhook/Loader.lua'))("WebHook");



-- libray
local repo = 'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Linoria/'
local Libray = loadstring(game:HttpGet(repo .. 'Loader.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeMenager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveMenager.lua'))()
local Window = Library:CreateWindow({
    Title = 'Infinity Hub | '.. game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name or 'Game-'..game.PlaceId,
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})



-- tabs
local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}



-- code
local FarmingBox = Tabs.Main:AddLeftGroupbox('Farming')
FarmingBox:AddToggle('AFB', {
    Text = 'Auto Farm Boss',
    Default = false,
    Tooltip = 'Turn on to farm all bosses',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        NoClip()
                    end
                end
            )
            spawn(
                function()
                    while Settings do
                        pcall(
                            function()
                                wait()
                                if
                                    not Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible
                                 then
                                    for i, v in pairs(Workspace.bossdropmission.missions:GetChildren()) do
                                        for i, v in pairs(v:GetChildren()) do
                                            if v:IsA("Model") and v:FindFirstChild("Head") and not v:FindFirstChild("rpaw") then
                                                if
                                                    Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                        "Missionstory"
                                                    ).Visible == false
                                                 then
                                                    Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                        CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                                    wait(0.5)
                                                    v:FindFirstChild("CLIENTTALK"):FireServer()
                                                    v:FindFirstChild("CLIENTTALK"):FireServer("accept")
                                                end
                                            end
                                        end
                                    end
                                end
                                if Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible then
                                    for i, v in pairs(Workspace.npc:GetChildren()) do
                                        if
                                            v:IsA("Model") and v:FindFirstChild("npctype") and
                                                not v.Head.mob.fram.name.info.Text:find("Spirit") and not v:FindFirstChild("rpaw") and
                                                string.find(
                                                    Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                        "Missionstory"
                                                    ).bg.name.Text,
                                                    v.Head.mob.fram.name.info.Text
                                                ) and
                                            v.Head.CFrame.Y > -1000
                                         then
                                            if
                                                Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).Visible == true
                                             then
                                                Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                    CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                                Player.Character.combat.update:FireServer("mouse1", true)
                                                Player.Character.combat.update:FireServer("mouse1", false)
            
                                            end
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            )
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Susanoo Insta Kill',
    Default = false,
    Tooltip = 'Turn on to insta kill susanoo',
    Callback = function(state)
        Settings = state
        if Settings then
            spawn(function()
                while Settings do wait()
                    pcall(function()
                        for i,v in pairs(Workspace.npc:GetChildren()) do
                            if v:IsA("Model") and v:FindFirstChildWhichIsA("Humanoid") then
                                local Humanoid = v:FindFirstChildWhichIsA("Humanoid")
                                if Humanoid.Health < Humanoid.MaxHealth then
                                    Humanoid.Health = 0 
                                end 
                            end 
                        end 
                    end)
                end 
            end)
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Farm Logs',
    Default = false,
    Tooltip = 'Turn on to farm logs',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        NoClip()
                    end
                end
            )
            spawn(function()
                while Settings do
                    wait()
                    pcall(
                        function()
                            Player.Character.HumanoidRootPart.CFrame =
                            Workspace.npc.logtraining.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            Player.Character.combat.update:FireServer("mouse1", true)
                            Player.Character.combat.update:FireServer("mouse1", false)
                        end
                    )
                end
            end)
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Farm Mobs',
    Default = false,
    Tooltip = 'Turn on to farm mobs',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        pcall(
                            function()
                                NoClip()
                            end
                        )
                    end
                end
            )
            spawn(
                function()
                    while Settings do
                        wait()
                        pcall(
                            function()
                                if
                                    not Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible
                                then
                                    for i, v in pairs(Workspace.missiongivers:GetChildren()) do
                                        if
                                            v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission") and
                                            v.Head.givemission.Enabled and
                                            v.Head.givemission:FindFirstChild("color").Image ==
                                            "http://www.roblox.com/asset/?id=5459241648"
                                        then
                                            if
                                                Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).Visible == false
                                            then
                                                repeat
                                                    wait()
                                                    Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                        CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                                    v:FindFirstChild("CLIENTTALK"):FireServer()
                                                    v:FindFirstChild("CLIENTTALK"):FireServer("accept")
                                                until Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).Visible 
                                            end
                                        end
                                    end
                                end
                                if Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory").Visible then
                                    for i, v in pairs(Workspace.npc:GetChildren()) do
                                        if
                                            v:IsA("Model") and v:FindFirstChild("npctype") and
                                            string.find(Player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild(
                                                    "Missionstory"
                                                ).bg.name.Text,
                                                v.Head.mob.fram.name.info.Text

                                            ) and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v:FindFirstChild("Humanoid") and
                                            v.Head.CFrame.Y > -1000
                                        then
                                            pcall(
                                                function()
                                                    wait(0.2)
                                                    Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                        CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, 0, 3)) 



                                                    wait(0.2)
                                                    Player.Character.combat.update:FireServer("mouse1", true)
                                                    Player.Character.combat.update:FireServer("mouse1", false)
                                                    local Humanoid = v:FindFirstChildWhichIsA("Humanoid")

                                                end
                                            )
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            )
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Farm Dungeon',
    Default = false,
    Tooltip = 'Turn on to farm dungeon',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        pcall(
                            function()
                                NoClip()
                            end
                        )
                    end
                end
            )
            spawn(
                function()
                    while Settings do
                        wait()
                        pcall(
                            function()
                                for i, v in pairs(Workspace.npc:GetChildren()) do
                                    if v:FindFirstChild("npctype") then
                                        return
                                    end
                                    if
                                        v:IsA("Model") and v:FindFirstChild("npctype") and v:FindFirstChild("HumanoidRootPart") and
                                            v:FindFirstChild("Humanoid") and
                                            v.Head.CFrame.Y > -1000
                                     then
                                        pcall(
                                            function()
                                                Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                    CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)



                                                Player.Character.combat.update:FireServer("mouse1", true)
                                                Player.Character.combat.update:FireServer("mouse1", false)

                                            end
                                        )
                                    end
                                end
                            end
                        )
                    end
                end
            )
        end
    end
})
FarmingBox:AddToggle('AB', {
    Text = 'Auto Farm Scroll',
    Default = false,
    Tooltip = 'Turn on to farm scroll',
    Callback = function(state)
        Settings = state
        if Settings then
            spawn(function()
                while Settings do
                    wait()
                    pcall(
                    function()
                        for i, v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
                            if
                                v:IsA("Model") and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and
                                    v.sh.Position.Y < 2000
                             then
                                Player.Character.HumanoidRootPart.CFrame = v.sh.CFrame
                                fireclickdetector(v.sh:FindFirstChildWhichIsA("ClickDetector"))
                            end
                        end
                            for i, v in pairs(game.workspace:GetChildren()) do
                                if
                                    v:IsA("Model") and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and
                                    v.sh.Position.Y < 2000
                                then
                                    Player.Character.HumanoidRootPart.CFrame = v.sh.CFrame
                                    fireclickdetector(v.sh:FindFirstChildWhichIsA("ClickDetector"))
                                end
                            end
                        end
                    )
                end
            end)
        end
    end
})


local TabBox = Tabs.Main:AddRightTabbox()
local BossTab = TabBox:AddTab('Boss Tab')
BossTab:AddToggle('AB', {
    Text = 'Event Boss',
    Default = false,
    Tooltip = 'Turn on to farm Event Boss',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        NoClip()
                    end
                end
            )
            spawn(
                function()
                    while wait() and Settings do
                        pcall(function()
                            for i, v in pairs(Workspace.npc:GetChildren()) do
                                if v.Name ~= "logtraining" and v:FindFirstChild("Head") and v.Head.CFrame.Y > -1000 then
                                    repeat wait()
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                        Player.Character.combat.update:FireServer("mouse1", true)
                                        Player.Character.combat.update:FireServer("mouse1", false)
                                    until v.Humanoid.Health == 0 or not v or not Settings.EventBosses
                                end
                            end
                        end)
                    end
                end
            )
        end
    end
})
BossTab:AddToggle('AB', {
    Text = 'Event Boss Auto Hit',
    Default = false,
    Tooltip = 'Turn on to farm Event Boss',
    Callback = function(state)
        Settings = state
        if Settings then
            RunService.Stepped:connect(
                function()
                    if Settings then
                        NoClip()
                    end
                end
            )
            spawn(
                function()
                    while wait() and Settings do
                        for i, v in pairs(Workspace.npc:GetChildren()) do
                            if v.Name == "npc1" then
                                repeat
                                    wait()
                                    pcall(
                                        function()
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                CFrame.new(v.HumanoidRootPart.Position) * CFrame.new(0, -5, 3)
                                            Player.Character.combat.update:FireServer("mouse1", true)
                                            Player.Character.combat.update:FireServer("mouse1", false)

                                        end
                                    )
                                until v.Humanoid.Health == 0 or not v or not Settings.Jin
                            end
                        end
                    end
                end
            )
        end
    end
})


local PlayerTab = TabBox:AddTab('Player Tab')
PlayerTab:AddToggle('AB', {
    Text = 'Auto Rank',
    Default = false,
    Tooltip = 'Turn on to active auto rank',
    Callback = function(state)
        Settings = state
        if Settings then
            spawn(
                function()
                    while wait() and Settings do
                        if Player.statz.lvl:FindFirstChild("lvl").Value == 1000 then
                            if Player.statz.prestige.maxlvlpres.Value >= 1 then
                                repeat
                                    wait()
                                    Player.startevent:FireServer("maxlvlpres")
                                until Player.statz.lvl:FindFirstChild("lvl").Value == 1 or not Settings
                            else
                                repeat
                                    wait()
                                    Player.startevent:FireServer("rankup")
                                until Player.statz.lvl:FindFirstChild("lvl").Value == 1 or not Settings
                            end
                        end
                    end
                end
            )
        end
    end
})
PlayerTab:AddToggle('AB', {
    Text = 'God Mode',
    Default = false,
    Tooltip = 'Turn on to active god mode',
    Callback = function(state)
        Settings = state
        if Settings then
            spawn(function()
                while wait() and Settings do
                    pcall(function()
                        if Player.Character:FindFirstChild("fakehealth") then
                            Player.Character.fakehealth:Destroy()
                        end
                    end)
                end
            end)
        end
    end
})
PlayerTab:AddSlider('Speed', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(x)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = x;
    end
})
PlayerTab:AddSlider('Jump', {
    Text = 'JumpPower',
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(x)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = x;
    end
})
local Button = PlayerTab:AddButton({
    Text = 'Anti Lag',
    Func = function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                v.Material = Enum.Material.SmoothPlastic
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
        end
    end,
    DoubleClick = false,
    Tooltip = 'Click to active anti lag'
})


local StatsBox = Tabs.Main:AddLeftGroupbox('Status')
StatsBox:AddToggle('AB', {
    Text = 'Auto Upgrade Health',
    Default = false,
    Tooltip = 'Turn on to active auto status',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Player.startevent:FireServer("addstat", "health", 5)
            end
        end
    end
})
StatsBox:AddToggle('AB', {
    Text = 'Auto Upgrade Ninjutsu',
    Default = false,
    Tooltip = 'Turn on to active auto status',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Player.startevent:FireServer("addstat", "ninjutsu", 5)
            end
        end
    end
})
StatsBox:AddToggle('AB', {
    Text = 'Auto Upgrade Taijutsu',
    Default = false,
    Tooltip = 'Turn on to active auto status',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Player.startevent:FireServer("addstat", "taijutsu", 5)
            end
        end
    end
})
StatsBox:AddToggle('AB', {
    Text = 'Auto Upgrade Chakra',
    Default = false,
    Tooltip = 'Turn on to active auto status',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                Player.startevent:FireServer("addstat", "chakra", 5)
            end
        end
    end
})


local AutoPressKeyBox = Tabs.Main:AddRightGroupbox('Press Key')
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key R',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "R", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key T',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "T", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key Y',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "Y", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key F',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "F", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key G',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "G", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key H',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "H", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key Q',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "Q", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key E',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "E", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key V',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "V", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key B',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "B", false, uwu)
            end
        end
    end
})
AutoPressKeyBox:AddToggle('AB', {
    Text = 'Auto Press Key N',
    Default = false,
    Tooltip = 'Turn on to active auto press key',
    Callback = function(state)
        Settings = state
        if Settings then
            while wait() and Settings do
                VirtualInputManager:SendKeyEvent(true, "N", false, uwu)
            end
        end
    end
})



-- libray settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
