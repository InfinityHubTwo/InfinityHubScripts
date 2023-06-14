--// Stands Awakening Pc







--// Notification Libray
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


-- Services
local Lighting 				= game:GetService("Lighting");
local ReplicatedStorage 	= game:GetService("ReplicatedStorage");
local workspace 			= game:GetService("Workspace");
local Players 				= game:GetService("Players");
local LocalPlayer 			= Players.LocalPlayer;
local Humanoid 				= LocalPlayer.Character.Humanoid
local Character 			= LocalPlayer.Character
local HumanoidRootPart 		= Character.HumanoidRootPart
local vim 					= game:service("VirtualInputManager");


--// Variables
local plr = game:GetService("Players").LocalPlayer
local plrId = plr.UserId
local mouse = plr:GetMouse()
local CheckSpeed = plr.Character.Humanoid.WalkSpeed
local CheckJump = plr.Character.Humanoid.JumpPower
local CheckHealth = plr.Character.Humanoid.Health
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
				wait(1.2)
				ts.Value = false
			end
		end
	end
end
local Settings


local function FeKill()
	plr.Character.Humanoid.Health = 0
end
local stands = {
	"The World",
	"Star Platinum",
	"Star Platinum Ova",
	"Omt",
}
getgenv().Stands = nil
local function StandFarm()
	if getgenv().Stands == "The World" then
		loadstring(
			game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/tw')
		)()

	elseif getgenv().Stands == "Star Platinum" then
		loadstring(
			game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/jp')
		)()

	elseif getgenv().Stands == "Star Platinum Ova" then
		loadstring(
			game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/jpova')
		)()

	elseif getgenv().Stands == "Omt" then
		loadstring(
			game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/OMT%20Farm')
		)()

	end
end


-- settings
getgenv().Settings = {
    Kill_Player = {
        Player_Name = "",
    },
    Skill ={
        e = false,
        r = false,
        t = false,
        f = false,
        h = false,
        v = false,
        b = false,
    }
}


-- functions
local KeyPress = function(v)
    return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
end


--// Prints
print[[
	.

	--<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>
	|.	Infinity Hub Loaded v 1.0.2					 						.|
	|.	Have fun							 								.|
	|.	Credits libray: Rayfield Libray / Discord Server: Sirius		 	.|
	--<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>---<>
]]



--// Rayfiel Libray
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/Rayfield/Main.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "Infinity Hub  |  @Darkzin, @Cool",
   LoadingTitle = "Infinity Hub",
   LoadingSubtitle = "by darkzin and cool",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Infinity Hub",
      Subtitle = "Key System",
      Note = "Private Key",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "qy&nBDu=mWJkrJ9D4T7!=i&=7mBQ62"
   }
})




--// Welcome Main
local Tab = Window:CreateTab("Welcome", 12827783428)
local Paragraph = Tab:CreateParagraph({Title = "Bem Vindo", Content = [[
Bem vindo ao Infinity Hub.
Espero que goste e Aproveite :>

Se quiser pode ler as regras a baixo
]]})

local Section = Tab:CreateSection("--// Regras: ", true)
local Paragraph = Tab:CreateParagraph({Title = "Regras", Content = [[
Regras = { 
	[1] - | Não compartilhe a Gui com NINGUEM |
	[2] - | Não abuse muito das opções se quiser você quem sabe |
	[3] - | So toma cuidado mesmo 👍 |
}
]]})





--// Stands Main
local Stands = Window:CreateTab("Stands", 7072724538)
local Paragraph = Stands:CreateParagraph({Title = "Stands", Content = [[
Nesta opções os stands abaixo terão o seus TS(Time Stop) com certa de 15 a 20 segundos.
]]})


local StandSection = Stands:CreateSection("--// Options: Stand", true)
Stands:CreateButton({
   Name = "Shadow Dio",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "ShadowTheWorld" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "JSP",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "JSP" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "EVA 01",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "EVA01" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "The World Over Heaven",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldOverHeavenStand" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "Steve",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "StevePlatinum" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "Herobrine",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "Herobrine" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "The World Auternative Universe",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldAlternateUniverse" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "The World Ova",
   Interact = 'Interact.',
   Callback = function()
	  --// Check Stand
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldOVA" then
			game:GetService("ReplicatedStorage").Main.Timestop:FireServer(
    				20, 
    				"theworldnew"
			)
		  end
	  end
   end
})
Stands:CreateButton({
   Name = "The World Ova ( Over Heaven )",
   Interact = 'Interact.',
   Callback = function()
	   for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	   	if v:IsA("LocalScript") and v.Name == "TheWorldOVAH" then
	   		Time = 20
	   		game:GetService("ReplicatedStorage").Main.Timestop:FireServer(
	   			Time, "diooh"
	   		)
	   	end
	   end
   end
})
Stands:CreateButton({
   Name = "Neo The World Auternative Universe",
   Interact = 'Interact.',
   Callback = function()
	   for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	   	if v:IsA("LocalScript") and v.Name == "NTWAU" then
	   		Time = 20
	   		game:GetService("ReplicatedStorage").Main.Timestop:FireServer(
	   			Time, "diego"
	   		)
	   	end
	   end
   end
})

local Section = Stands:CreateSection("--// Option: D4C", true)
local Button = Stands:CreateButton({
   Name = "D4C Clones",
   Info = "Spawn 1 Clone", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = "Alternate",
			[2] = "Clone"
		}	
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args)) 
   end,
})






--// Main
local Tab = Window:CreateTab("Main", 12834994204)
local Paragraph = Tab:CreateParagraph({Title = "Main", Content = [[
Aqui são as opções para você usa em si mesmo no caso no Player, ou no seu stand.

Tem funções para muitos stands para usar o quanto quiser.
]]})


local Section = Tab:CreateSection("--// Options: Player", true)
local Toggle = Tab:CreateToggle({
   Name = "Auto Block",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(AutoBlock)
		if AutoBlock then
			getgenv().ToggleAutoBlock = true
			while getgenv().ToggleAutoBlock do
				wait(1)
	    		local args = {
					[1] = "Alternate",
					[2] = "Block"
				}

				game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		else
			getgenv().ToggleAutoBlock = false
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Anti Time Stop",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				AntiTs()
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Anti Knock",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
				for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "Knock" then
                        v:Destroy()
                    end
                end
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Anti Disc",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
		Settings = State 
		if Settings then
			while wait() and Settings do
                for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BoolValue") and v.Name == "Disabled" then
                        if v.Value == true then wait(.25)
                            v.Value = false
                        end
                    end
                end
			end
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Pose",
   Info = "Player infinite pose", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = true
		}
	
		game:GetService("ReplicatedStorage").Main.Menacing:FireServer(unpack(args))
   end,
})

local Section = Tab:CreateSection("--// Options: GER, GE", true)
local Button = Tab:CreateButton({
   Name = "Infinite Damage Reflect / Goldem Expirience Requiem",
   Info = "Infinite Damage Reflect", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   		local ohString1 = "Alternate"
		local ohString2 = "RTZ"
		local ohBoolean3 = true

		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohBoolean3)
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Damage Deflect / Goldem Expirience",
   Info = "Infinite Damage Deflect", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local ohString1 = "Alternate"
		local ohString2 = "Deflect"
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2)
   end,
})


local Section = Tab:CreateSection("--// Options: Shadow Dio", true)
local Button = Tab:CreateButton({
   Name = "Shadow Dio Infinite Kinifes",
   Info = "Use Q first", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'))()
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Kinifes",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(LoopSTWK)
		if LoopSTWK then
			getgenv().ToggleLoopSTWK = true
			while getgenv().ToggleLoopSTWK do
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'))()
			end
		else
			getgenv().ToggleLoopSTWK = false
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Shadow Dio Infinite H",
   Info = "STWRTZ ", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   		local args = {
	  		[1] = "Alternate",
	  		[2] = "STWRTZ",
	  		[3] = true
		}
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Effect",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(StwIE)
		if StwIE then
			getgenv().ToggleStwIE = true
			while getgenv().ToggleStwIE do
				wait(2)
				local ohInstance1 = workspace.Reset43354776.Stand.FakeTorso.particle.Pixelate
				local ohBoolean2 = true

				game:GetService("ReplicatedStorage").Trail:FireServer(ohInstance1, ohBoolean2)
			end
		else
			getgenv().ToggleStwIE = false
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Shadow Dio Infinite Fake Stand",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(StwFS)
		if StwFS then
			getgenv().ToggleStwFS = true
			while getgenv().ToggleStwFS do
				wait(1)
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
		else
			getgenv().ToggleStwFS = false
		end
   end,
})


local Section = Tab:CreateSection("--// Option: One More Time, Solar One More Time", true)
local Button = Tab:CreateButton({
   Name = "Aura Drill attack (Z)",
   Info = "Drill Attack", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
	  		[1] = "Alternate",
	   		[2] = "Drill"
		}
	
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})


local Section = Tab:CreateSection("--// Options: Sans", true)
local Button = Tab:CreateButton({
   Name = "Sans teleport player limbo",
   Info = "Players teleport to limbo", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
			[1] = "Alternate",
			[2] = "Teleport",
			[3] = false,
			[4] = Vector3.new(621, -75, 235)
		}

		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})


local Section = Tab:CreateSection("--// Options: Made In Heaven", true)
local Button = Tab:CreateButton({
   Name = "Made in Heaven Universe Reset",
   Info = "Universe Reset", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "UniverseReset"
	    }
	
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Loop Made in Heaven Universe Reset",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(LoopUNVR)
		if LoopUNVR then
			getgenv().ToggleLoopUNVR = true
			while getgenv().ToggleLoopUNVR do
				wait(10)
	    		local args = {
	    		    [1] = "Alternate",
	    		    [2] = "UniverseReset"
	    		}

	    		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
			end
		else
			getgenv().ToggleLoopUNVR = false
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Made in Heaven Time Accel",
   Info = "No cooldown", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Alternate",
		    [2] = "TimeAccel"
		}
		
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Made in Heaven invisible",
   Info = "Need MIH Hallow", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "Appear",
	        [3] = false
	    }
	
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end,
})


local Section = Tab:CreateSection("--// Options: Oni", true)
local Toggle = Tab:CreateToggle({
   Name = "Oni Loop Dodge",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(State)
	Settings = State
	if Settings then
	    while wait() and Settings do
		local args = {
    		    [1] = "Alternate",
    		    [2] = "Dodge"
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Input"):FireServer(unpack(args))
	    end
	end
   end,
})





--// Server
local Tab = Window:CreateTab("Server", 12828674545)
local Paragraph = Tab:CreateParagraph({Title = "Server", Content = [[
Aqui as opções que você iniciar irá prejuticar o servidor EX Lag Server
]]})

local Section = Tab:CreateSection("--// Options: Lag Server", true)
local Button = Tab:CreateButton({
   Name = "Lag Server",
   Info = "Need hierophant green", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
	    Rayfield:Notify({
        Title = "Lag Server",
        Content = "O lag server é preciso ter o stand hierophant green, e tambem você não ira conseguir para-lo, então tem certeza que quer continuar?",
        Duration = 6.5,
        Image = 7733964640,
        Actions = { -- Notification Buttons
            Ignore = {
               Name = "Execute",
                Callback = function()
                Rayfield:Notify({
                   Title = "Lag Server",
                   Content = "Ao aperta em executar, fice spamando a tecla (E). Cuidado para não ser denunciado.",
                   Duration = 6.5,
                   Image = 7733964640,
                   Actions = { -- Notification Buttons
                      Ignore = {
                         Name = "Executar",
                         Callback = function()

                         local key = game:GetService("UserInputService") --- this is meant for KAT but works for any game

                         key.InputBegan:Connect(function(input)
                         if input.KeyCode == Enum.KeyCode.E then
                         for i,v in pairs(game.Players:GetChildren()) do
                             if v ~= game.Players.LocalPlayer then
                                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame * CFrame.new(0,0,.4)
                                  wait(0.1)
                             end
                         end
                         end
                         end)

                         loadstring(game:HttpGet("https://raw.githubusercontent.com/XInfiniteHub/teste/main/LagServer/InfiniteEsmeral"))()
                      end
                   },
                },
                })
            end
          },
       },
    })
   end,
})

local Section = Tab:CreateSection("--// Options: Kill Player", true)
local Paragraph = Tab:CreateParagraph({Title = "Kill Player ( Skills Soon )", Content = [[
Lembrando que esta opção ainda esta em Beta.

Instruções: Coloque o nome do Player na caixa de texto, coloque o nome da pessoa se nao ele seleciona alguem aleatorio no mapa e mata.
Obs: Se você desativa a toggle o seu Player respawnará.
]]})

local Input = Tab:CreateInput({
   Name = "Player Name",
   PlaceholderText = "Name",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
    getgenv().Settings.Kill_Player.Player_Name = Text;
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Kill Player",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
		Settings = state 
		if Settings then
            task.spawn(function()
                repeat task.wait()
                    -- kill player
                    plr.Character.HumanoidRootPart.CFrame = game.Players[getgenv().Settings.Kill_Player. Player_Name].Character.HumanoidRootPart.CFrame
                    local ohString1 = "Damage"
                    local ohString2 = "Punch"
                    local ohNil3 = nil
                    local ohNil4 = nil
                    local ohInstance5 = game.Players[getgenv().Settings.Kill_Player.Player_Name].Character.Humanoid
                    game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohNil3, ohNil4, ohInstance5)
                    
                    -- active skills
                    if getgenv().Settings.Skill.e then
                        KeyPress("E")
                    end
                    if getgenv().Settings.Skill.r then
                        KeyPress("R")
                    end
                    if getgenv().Settings.Skill.t then
                        KeyPress("T")
                    end
                    if getgenv().Settings.Skill.f then
                        KeyPress("F")
                    end
                    if getgenv().Settings.Skill.h then
                        KeyPress("H")
                    end
                    if getgenv().Settings.Skill.v then
                        KeyPress("V")
                    end
                    if getgenv().Settings.Skill.b then
                        KeyPress("B")
                    end
                until plr.Character.Humanoid.Health == 0 or game.Players[getgenv().Settings.Kill_Player.Player_Name].Character.Humanoid.Health == 0
            end)

        else

			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end
   end,
})



--// Buy Items
local Tab = Window:CreateTab("Buy Items", 12828624122)
local Paragraph = Tab:CreateParagraph({Title = "Buy Item", Content = [[
Aqui você compra os items abaixo.
]]})

local Button = Tab:CreateButton({
   Name = "Arrow",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Arrow"
		}		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Rokakaka Fruit",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Rokakaka Fruit"
		}		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Shiny Arrow",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local args = {
		    [1] = "Shiny Arrow"
		}
		
		game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Ticket",
   Info = "Click to buy", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local ohString1 = "Ticket"
		game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
   end,
})





--// Auto Boss
local Tab = Window:CreateTab("Auto Boss", 12828636851)
local Paragraph = Tab:CreateParagraph({Title = "Auto Boss", Content = "Execute o auto boss quando estiver no mapa contra o boss, execute a mesma loadstring que iniciara uma nova gui com o auto boss"})





--// Stand Farm Main
local Tab = Window:CreateTab("Stand Farm", 7072707588)
local Paragraph = Tab:CreateParagraph({Title = "Stand Farm", Content = [[
Aqui aonde você farma stands
]]})
local Section = Tab:CreateSection("--// Option: Stand Farm", true)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Stand",
   Options = stands,
   CurrentOption = "",
   Flag = "Dropdown1", 
   Callback = function(Option)
		getgenv().Stands = Option
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Start Stand Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(State)
		Settings = State
		if Settings then
			StandFarm()
		else
			FeKill()
			Notify({
				Description = "Player reseted for desactive stand farm.";
				Title = "Player Reseted";
				Duration = 5;
			});
		end
   end,
})


local Section = Tab:CreateSection("--// Option: Item No Animation", true)
local Button = Tab:CreateButton({
   Name = "Arrow",
   Info = "Need arrow in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.Arrow:FireServer()
   end,
})
local Button = Tab:CreateButton({
   Name = "Rokakaka ",
   Info = "Need Rokakaka in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.Roka:FireServer()
   end,
})
local Button = Tab:CreateButton({
   Name = "Shiny Arrow ",
   Info = "Need Shiny Arrow in your hand", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game:GetService("ReplicatedStorage").ItemEvents.ShinyArrow:FireServer()
   end,
})




--// Item Farm
local Tab = Window:CreateTab("Item Farm", 7072707588)
local Paragraph = Tab:CreateParagraph({Title = "Buy Item", Content = [[
Aqui você farma items
]]})
local Section = Tab:CreateSection("--// Options: Item Farm and Grab Tools", true)
local Toggle = Tab:CreateToggle({
   Name = "Start Item Farm / Stop",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(ItemFarm)
		if ItemFarm then
			getgenv().ToggleItemFarm = true
			while getgenv().ToggleItemFarm do
				wait(0.1)
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if v:IsA("Tool") and v:FindFirstChild("Handle") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
					end
				end
			end
		else
			getgenv().ToggleItemFarm = false
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Grab Tools",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(GrabTools)
		if GrabTools then
			getgenv().ToggleGrabTools = true
			while getgenv().ToggleGrabTools do
				local Human = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				
				wait(.5)

				for _, v in ipairs(workspace:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						Human:EquipTool(v)
					end
				end
				if grabtoolsFunc then grabtoolsFunc:Disconnect() end
				grabtoolsFunc = workspace.ChildAdded:Connect(function(v)
					if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
					end
				end)
			end
		else
			getgenv().ToggleGrabTools = false
		end
   end,
})











--// Teleport Main
local Tab = Window:CreateTab("Teleports", 10090587519)
local Paragraph = Tab:CreateParagraph({Title = "Buy Item", Content = [[
Aqui nas opções você da teleport nas opções a baixo
]]})
local Section = Tab:CreateSection("--// Options: Teleports", true)
local Button = Tab:CreateButton({
   Name = "Bank ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1342.28, 584.95, -546.44))
   end,
})
local Button = Tab:CreateButton({
   Name = "Farm Zone ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-316.59, 466.42, -1502.53))
   end,
})
local Button = Tab:CreateButton({
   Name = "Timmy ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1395.74, 581.69, -218.97))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Boss ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1099, 589, -738))
   end,
})
local Button = Tab:CreateButton({
   Name = "D4C Place ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3093, 464, -428))
   end,
})
local Button = Tab:CreateButton({
   Name = "Arena 1v1 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1247.95, 581.04, -279.96))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Spawm 1 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1043.8, 591.63, -185.03))
   end,
})
local Button = Tab:CreateButton({
   Name = "Key Spawm 2 ",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1617.95, 588.23, -755.87))
   end,
})
local Button = Tab:CreateButton({
   Name = "Started Place",
   Info = "Click to teleport", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2113.084716796875, 643.97119140625, -576.4493408203125))
   end,
})




--// Local Player Main
local Tab = Window:CreateTab("Local Player", 8797391485)
local Paragraph = Tab:CreateParagraph({Title = "Buy Item", Content = [[
Aqui as opções vão ser executadas no LocalPlayer(Ou seja você)
]]})
local Section = Tab:CreateSection("--// Options: LocalPlayer", true)
local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 500},
   Increment = 16,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Speed)
		plr.Character.Humanoid.WalkSpeed = Speed
   end,
})
local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 50,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(jump)
		plr.Character.Humanoid.JumpPower = jump
   end,
})
local Button = Tab:CreateButton({
   Name = "Click Tp Tool ",
   Info = "Give a click teleport tool", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"

		tool.Activated:Connect(function()
		local root = plr.Character.HumanoidRootPart
		local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
		local offset = pos-root.Position
		root.CFrame = root.CFrame+offset
		end)

		tool.Parent = plr.Backpack
   end,
})
local Button = Tab:CreateButton({
   Name = "Player Info",
   Info = "Click to check player info.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		Notify({
			Description = "Coletando dados";
			Title = "Player Info";
			Duration = 5;
		});
		 wait(3)
		if plr then
			Notify({
				Description = "dados coletados, se quiser ver seus dados aperte F9";
				Title = "Player Info";
				Duration = 5;
			});
			print("------------------------------------------------------------------------")
            print("{Player Info} Name:", plr)
            print("{Player Info} User Id:", plrId)
            print("{Player Info} Health:", CheckHealth)
            print("{Player Info} WalkSpeed:", CheckSpeed)
            print("{Player Info} JumpPower:", CheckJump)
            print("{Player Info} Stand = {")
				CheckStand()
			print("}")
         print("------------------------------------------------------------------------")
		else
			Notify({
				Description = "Desculpe eu não consegui achar seu Humanoid, talvez porquer você não seja um jogador :(";
				Title = "Player Info Error";
				Duration = 5;
			});
		end
   end,
})
local Button = Tab:CreateButton({
   Name = "Force respawn",
   Info = "If player as buged, use this", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		Notify({
			Description = "Player respawned.";
			Title = "Player Info";
			Duration = 5;
		});
		game:GetService("Players").LocalPlayer.Character:Destroy()
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Jump",
   Info = "Click to Infinite Jump", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
		local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';

		function Action(Object, Function) if Object ~= nil then Function(Object); end end

		UIS.InputBegan:connect(function(UserInput)
		    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
		        Action(Player.Character.Humanoid, function(self)
		            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
		                Action(self.Parent.HumanoidRootPart, function(self)
		                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
		                end)
		            end
		        end)
		    end
		end)

		wait(.4)

		task.spawn(function ()
	  		local Slider = Tab:CreateSlider({
	  		Name = "Jump Height",
	  		Range = {50, 500},
	  		Increment = 50,
	  		Suffix = "Jump",
	  		CurrentValue = 50,
	  		Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	  		Callback = function(JumpHeight)
				_G.JumpHeight = JumpHeight;
	  		end,
	  		})
		end)
   end,
})





--// Item Notifier Main
local Tab = Window:CreateTab("Item Notifier", 12828647854)
local Paragraph = Tab:CreateParagraph({Title = "item Notifier", Content = [[
Aqui nas opções ele ira demonstra se tem o item no mapa ou não

Obs: Se der "CallBack Error" quer dizer que nãp tem
]]})
local Section = Tab:CreateSection("--// Option: Items", true)
local Button = Tab:CreateButton({
   Name = "Check Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local Arrow = game:GetService("Workspace").Arrow.ClassName == "Tool"
        if Arrow then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem arrow no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Rokakaka Fruit",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local roka = game:GetService("Workspace")["Rokakaka Fruit"].ClassName == "Tool"
		if roka then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem Rokakaka Fruit no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Requiem Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local RArrow = game:GetService("Workspace")["Requiem Arrow"].ClassName == "Tool"
        if RArrow then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem requiem arrow no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check DIO's Diary",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local DioDiary = game:GetService("Workspace")["DIO's Diary"].ClassName == "Tool"
        if DioDiary then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem Dio's Diary no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check DIO's Skull 2",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local DS = game:GetService("Workspace")["DIO's Skull 2"].ClassName == "Tool"
        if DS then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem Dio's Skull 2 no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Hell Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local HellArrow = game:GetService("Workspace")["Hell Arrow"].ClassName == "Tool"
        if HellArrow then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem hell arrow no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Camera",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local cam = game:GetService("Workspace").Camera.ClassName == "Tool"
        if cam then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem camera no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Uncanny Key",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local key = game:GetService("Workspace")["Uncanny Key"].ClassName == "Tool"
        if key then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem Uncanny Key no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Pot Platinum's Diary",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local pot = game:GetService("Workspace")["Pot Platinum's Diary"].ClassName == "Tool"
        if pot then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem POT no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check Red Heart",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local redh = game:GetService("Workspace")["Red Heart"].ClassName == "Tool"
        if redh then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem Red Heart no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})
local Button = Tab:CreateButton({
   Name = "Check True Requiem Arrow",
   Info = "Click to check", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
        local trarrow = game:GetService("Workspace")["True Requiem Arrow"].ClassName == "Tool"
        if trarrow then
      		Rayfield:Notify({
      		   Title = "Item Notifier",
      		   Content = "Tem True Requiem Arrow no mapa, deseja se teleporta para ela? ",
      		   Duration = 6.5,
      		   Image = 12828647854,
      		   Actions = { -- Notification Buttons
      		       Ignore = {
      		           Name = "Sim",
      		           Callback = function()
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
								if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name == "Arrow" then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
								end
							end
      		           end
      		       },
      		       Hi = {
      		           Name = "Não",
      		           Callback = function()
      		           end
      		       },
      		   },
     		})
        end
   end,
})





--// Troll Main
local Tab = Window:CreateTab("Troll", 12828699755)
local Paragraph = Tab:CreateParagraph({Title = "Troll Main", Content = [[
Aqui tem opções para você trollar as pessoas no server em que esta,
lembrando que tem opções FE e opções visuais 

A maioria feito por mim.
]]})

local Section = Tab:CreateSection("--// Options: Fe Scripts", true)
local Button = Tab:CreateButton({
   Name = "FE Creeper",
   Info = "Click to use Creeper script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()

      print("{Infinity Hub} Executing Creeper FE Script")

      plr.Character.Humanoid.WalkSpeed = 0
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Loading script... ";
            Text = " Wait a moment ";
         })
      end
      wait(2)
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Script executed ";
            Text = " ... ";
         })
      end

      wait(.8)

      _G.CreeperMode = true
      --// Variables
      local LocalPlr = game:GetService("Players").LocalPlayer.Character
      local LeftArm = LocalPlr["Left Arm"]
      local RightArm = LocalPlr["Right Arm"]
      --// Main Code
      RightArm:Destroy()
      LeftArm:Destroy()


      LocalPlr.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=5339301922"
      LocalPlr.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=3597049463"

      plr.Character.Humanoid.WalkSpeed = 16

      print("{Infinity Hub} FE Creeper Script Executed")
   end,
})
local Button = Tab:CreateButton({
   Name = "FE Head Fly",
   Info = "Click to use Head Fly script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      print("{Infinity Hub} Executing Head Fly FE Script")

      plr.Character.Humanoid.WalkSpeed = 0
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Loading script... ";
            Text = " Wait a moment ";
         })
      end
      wait(2)
      if game:GetService("Workspace").FilteringEnabled == true then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = " Script executed ";
            Text = " ... ";
         })
      end

      _G.HeadFlyFe = true
      --// Variables
      local LocalPlr = game:GetService("Players").LocalPlayer.Character
      local LeftArm = LocalPlr["Left Arm"]
      local RightArm = LocalPlr["Right Arm"]
      local RightLeg = LocalPlr["Right Leg"]
      local LeftLeg = LocalPlr["Left Leg"]
      local Torso = LocalPlr.Torso
      --// Main Code
      LeftLeg:Destroy()
      RightLeg:Destroy()
      RightArm:Destroy()
      LeftArm:Destroy()
      Torso.Transparency = 1

      plr.Character.Humanoid.WalkSpeed = 16
   end,
})
local Button = Tab:CreateButton({
   Name = "FE Invisible",
   Info = "Click to use Invisible script FE.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
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
})
local Button = Tab:CreateButton({
   Name = "Money Locker",
   Info = "Click to lock your money.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      Rayfield:Notify({
         Title = "Money Locker, Waring!",
         Content = "O money locker so funciona as vezes, então pode ser que não funcione, tem certeza que quer executar?",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
             Ignore = {
                 Name = "Sim",
                 Callback = function()
                     --// Main Variables
                     local plrMoney = game:GetService("Players").LocalPlayer.Data.Money.Value

                     wait(8)
					 Notify({
					 	Description = "Aguarde um momento";
					 	Title = "Player Money";
					 	Duration = 5;
					 });
                     wait(4)
					 Notify({
					 	Description = "dados coletados, se quiser ver seus dados aperte F9";
					 	Title = "Player Info";
					 	Duration = 5;
					 });
                     --// Prints
                     print("------------------------------------------------------------------------")
                        
                        print("{Player Info} Say:", plrMoney, "<-- your money")
                        print("{Player Info} Collect Money |", plrMoney, "<-- your money")

                     print("------------------------------------------------------------------------")

                     --end

                     --// Variables
                     local Money1 = game:GetService("Players").LocalPlayer.PlayerGui.MenuGUI.Background.Money.TextLabel.Money
                     local Money2 = game:GetService("StarterGui").MenuGUI.Background.Money.TextLabel.Money
                     --// Main Code
                     wait(6.5)
					 Notify({
					 	Description = "Criando variaveis aguarde um momento";
					 	Title = "Variables";
					 	Duration = 5;
					 });
                     wait(4)
					 Notify({
					 	Description = "Variaveis criadas";
					 	Title = "Variables";
					 	Duration = 5;
					 });
                     wait(4)
                     Notify({
					 	Description = "Money Locker gerado";
					 	Title = "Money Locker";
					 	Duration = 5;
					 });
                     if Money1 and Money2 then
                        Money1:Destroy()
                        Money2:Destroy()
                     end


                     --// Important Menssage
                     wait(5.5)
					 Notify({
					 	Description = "Mensagem importante";
					 	Title = "WARING! ";
					 	Duration = 5;
					 });
                     wait(2)
					 Notify({
					 	Description = "Money locker pode ser notado pelo jogo, então você so tem 5 minutos para user, depois disso você será relogado";
					 	Title = "Player Info";
					 	Duration = 5;
					 });
                     wait(300)
                     game:GetService("TeleportService"):Teleport(game.PlaceId, player)
                 end
             },
             Hi = {
                 Name = "Não",
                 Callback = function()
                     print("{Player} say: No!")
                 end
             },
         },
     })
   end,
})


------------------------------------------------


local Section = Tab:CreateSection("--// Options: Visual Scripts", true)
local Button = Tab:CreateButton({
   Name = "Jumpscare (Golden Freddy)",
   Info = "Click to Jumpscare.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE.Visible = true
      game:GetService("Players").LocalPlayer.PlayerGui.backup.FUNNY:Play()
      wait(8)
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE.Visible = false
   end,
})
local Button = Tab:CreateButton({
   Name = "Jumpscare (Luigi Distorced)",
   Info = "Click to Jumpscare.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE2.Visible = true
      game:GetService("Players").LocalPlayer.PlayerGui.backup.FUNNY2:Play()
      wait(5)
      game:GetService("Players").LocalPlayer.PlayerGui.backup.LOSE2.Visible = false
   end,
})
local Button = Tab:CreateButton({
   Name = "Make Creator",
   Info = "Click this for your make a creator.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      if game.CreatorType == Enum.CreatorType.User then
         game.Players.LocalPlayer.UserId = game.CreatorId
      end
      if game.CreatorType == Enum.CreatorType.Group then
         game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
      end
   end,
})
local Button = Tab:CreateButton({
   Name = "Infinite Money",
   Info = "Click this get inf money.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.Data.Money.Value = 4198237189273980213
   end,
})
local Toggle = Tab:CreateToggle({
   Name = 'Fake Ts',
   CurrentValue = false,
   Flag = "Fake_Ts",
   Callback = function(state)
		Settings = state
		if Settings then
			for i, v in pairs (game:GetService("ReplicatedStorage").Effects:GetChildren()) do
			    if v:IsA("MeshPart") and v.Name == "TSEffect" then
					-- clone
					v:Clone()
					v.Parent = game:GetService("Workspace")
					v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

					-- size
					if v.Size then
						v.Size = Vector3.new(750, 750, 750)
					end
			    end
			end

		else
			
			for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v:IsA("MeshPart") and v.Name == "TSEffect" then
					-- clone
					v:Clone()
					v.Parent = game:GetService("ReplicatedStorage").Effects

					-- normal size
					if v.Size then
						v.Size = Vector3.new(1.27, 1.27, 1.27)
					end
				end
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = 'Boss Map ( Beta )',
   CurrentValue = false,
   Flag = "toggle",
   Callback = function(state)
		Settings = state
		if Settings then
			-- Enable Boss
			if game:GetService("Players").LocalPlayer.Data.BossTP.Value == false then
				game:GetService("Players").LocalPlayer.Data.BossTP.Value = true
			end
			if game:GetService("Workspace").Map.Arena.Checker.Enabled.Value == false then
				game:GetService("Workspace").Map.Arena.Checker.Enabled.Value = true
			end


			-- Size Map
			for _, v in pairs(game:GetService("ReplicatedStorage").ZonePlusWorldModel.Model:GetChildren()) do
				if v:IsA("Part") and v.Name == "Part" then
					v.Size = Vector3.new(2000, 2000, 2000)
				end
			end


		else

			-- Disable Boss
			if game:GetService("Players").LocalPlayer.Data.BossTP.Value == true then
				game:GetService("Players").LocalPlayer.Data.BossTP.Value = false
			end
			if game:GetService("Workspace").Map.Arena.Checker.Enabled.Value == true then
				game:GetService("Workspace").Map.Arena.Checker.Enabled.Value = false
			end


			-- Normal Size Map
			for _, v in pairs(game:GetService("ReplicatedStorage").ZonePlusWorldModel.Model:GetChildren()) do
				if v:IsA("Part") and v.Name == "Part" then
					v.Size = Vector3.new(150, 150, 150)
				end
			end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = 'Btools Op',
   CurrentValue = false,
   Flag = "a",
   Callback = function(state)
		Settings = state
		if Settings then
			Notify({
				Description = "Destroy Part: Left Control; Replace Part: Left Alt";
				Title = "Btools Op";
				Duration = 5;
			});
			local HoldToSelect  = Enum.KeyCode.LeftControl
			local HoldToUndoAll = Enum.KeyCode.LeftAlt
			local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
			local Parts = {}
			local Box = Instance.new("SelectionBox",game.Workspace)
			local Sound0 = Instance.new("Sound")
			local Sound1 = Instance.new("Sound")
			Box.Name="Box"Box.LineThickness=0.01;Box.Adornee=nil;Box.Color3=Color3.fromRGB(255,0,0)Box.Visible=true;Sound1.Name="Sound"Sound1.SoundId="http://www.roblox.com/asset/?id=773858658"Sound1.Volume=1;Sound1.Looped=false;Sound1.archivable=false;Sound1.Parent=game.CoreGui;Sound0.Name="Sound"Sound0.SoundId="http://www.roblox.com/asset/?id=4676738150"Sound0.Volume=1;Sound0.Looped=false;Sound0.archivable=false;Sound0.Parent=game.CoreGui;for a,b in pairs(game.Workspace:GetDescendants())do if b.ClassName=="Part"then b.Locked=false end end;Mouse.Button1Down:connect(function()if game:GetService("UserInputService"):IsKeyDown(HoldToSelect)then table.insert(Parts,Mouse.Target)Mouse.Target.Parent=game.CoreGui;Sound0:Play()end end)while wait()do Box.Adornee=nil;if game:GetService("UserInputService"):IsKeyDown(HoldToSelect)then Box.Adornee=Mouse.Target or nil end;if game:GetService("UserInputService"):IsKeyDown(HoldToUndoAll)then local c=0;for a,b in pairs(Parts)do c=a end;pcall(function()Parts[c].Parent=workspace;table.remove(Parts,c)Sound1:Play()end)wait(.1)end end
		end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Black Dtw, Dtw Ova",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveBD)
      if ActiveBD then
         getgenv().ActiveBDToggle = true
         game:GetService("Players").LocalPlayer.Character.Stand["Meshes/18"].Name = "Neon"
         game:GetService("Players").LocalPlayer.Character.Stand["Meshes/18"].Name = "Neon"
         while getgenv().ActiveBDToggle do
            wait(0.01)
            game:GetService("Players").LocalPlayer.Character.Stand.Neon:Remove()
         end
      else
         getgenv().ActiveBDToggle = false
         plr.Character:Destroy()
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = '"Cosmic" JSP',
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveCMB)
      if ActiveCMB then
         getgenv().ActiveCMBToggle = true
         while getgenv().ActiveCMBToggle do
            wait(0.01)
            game:GetService("Players").LocalPlayer.Character.Stand["Neon."]:Destroy()
         end
      else
         getgenv().ActiveCMBToggle = false
         plr.Character:Destroy()
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = 'Ws Au 😳',
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(ActiveWsAuT)
      if ActiveWsAuT then
         getgenv().ActiveWsAuTToggle = true
         while getgenv().ActiveWsAuTToggle do
            game:GetService("Players").LocalPlayer.Character.Stand.Gold:Remove()
            game:GetService("Players").LocalPlayer.Character.Stand.Leather:Remove() 
            game:GetService("Players").LocalPlayer.Character.Stand.Leather:Remove()
         end
      else
         getgenv().ActiveWsAuTToggle = false
         plr.Character:Destroy()
      end
   end,
})




--// Fake Stand Main
local ReplicatedStorage = game:GetService("ReplicatedStorage") local Viewports = ReplicatedStorage.Viewports local Stands = Viewports.Stands local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
getgenv().Fake_Stand = {
    ["Settings"] = {
        ["Stand Name"] = "",
        ["Select Slot"] = "",
    },
};
local Tab = Window:CreateTab("Fake Stand", 13712116589)
local Section = Tab:CreateSection("--// Fake Stand", true)
local Input = Tab:CreateInput({
    Name = "Stand Name: ",
    PlaceholderText = "...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().Fake_Stand["Settings"]["Stand Name"] = Text;
    end,
})
local Input = Tab:CreateInput({
    Name = "Select Slot: ",
    PlaceholderText = "...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().Fake_Stand["Settings"]["Select Slot"] = Text;
    end,
})
local Button = Tab:CreateButton({
    Name = "Generate Fake Stand",
    Callback = function()
        -- notifications
        local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
        hi:Play() wait(.46)
        Notification:Notify( {Title = "Fake Stand", Description = "generating stand..."}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(179, 255, 2), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
        wait(4)
            
            
            
        -- destroy stand in slot
        for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[getgenv().Fake_Stand["Settings"]["Select Slot"]].ViewportFrame.WorldModel:GetChildren()) do
            if v:IsA("Model") then
                v:Destroy()
            end
        end
        wait(1)
        
        
        
        -- dupe stand
        for _, v in pairs(Stands:GetChildren()) do
            if v:IsA("Model") and v.Name == getgenv().Fake_Stand["Settings"]["Stand Name"] then
                local clone = v:Clone() wait(.25)
                clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[getgenv().Fake_Stand["Settings"]["Select Slot"]].ViewportFrame.WorldModel
                game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[getgenv().Fake_Stand["Settings"]["Select Slot"]].ItemName.Value = getgenv().Fake_Stand["Settings"]["Stand Name"]
                
                -- rarity
                game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[getgenv().Fake_Stand["Settings"]["Select Slot"]].Button.Overlay.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[getgenv().Fake_Stand["Settings"]["Select Slot"]].Button.ExoticTier.Visible = true
            end
        end
        wait(1)
        
        
        
        -- clone animation
        for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.ports:GetChildren()) do
            if v:IsA("Model") and v.Name == "npc" then
                local npcClone = v:Clone() wait(.25)
                npcClone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Right.ImageLabel.ItemSlots.Slots[
                    getgenv().Fake_Stand["Settings"]["Select Slot"]
                ].ViewportFrame.WorldModel[getgenv().Fake_Stand["Settings"]["Stand Name"]]
            end
        end
        
        
        
        -- credits
        local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
        hi:Play() wait(.46)
        Notification:Notify( {Title = "successfully", Description = "The stand you selected was successfully generated. | stand you selected: ".. tostring(getgenv().Fake_Stand["Settings"]["Stand Name"])}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 23), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
        wait(1)
        local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
        hi:Play() wait(.46)
        Notification:Notify( {Title = "Credits", Description = "Made by InfinityMercury "}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 23), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
        wait(1)
    end,
})


local Section = Tab:CreateSection("--// Stands Name", true)
for _, v in pairs(Stands:GetChildren()) do
    if v:IsA("Model") then
        local Button = Tab:CreateButton({
            Name = v.Name,
            Callback = function()
                setclipboard(v.Name)
                local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
                hi:Play() wait(.46)
                Notification:Notify( {Title = "Notification", Description = "Stand: ".. tostring(v.Name) ..", copy in your clipboard"}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 23), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
            end,
        })
    end
end



--// Settings Main
local Tab = Window:CreateTab("Settings", 7734053495)
local Paragraph = Tab:CreateParagraph({Title = "Settings", Content = [[
Em Breve 💤
]]})






--// End Script......











-- more soon -- 
