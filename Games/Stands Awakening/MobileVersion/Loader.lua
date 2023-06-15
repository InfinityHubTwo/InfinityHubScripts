-- variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Viewports = ReplicatedStorage.Viewports
local Stands = Viewports.Stands
local Items = Viewports.Items
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local ts = game:GetService("Lighting").TS
local settings



-- libray
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rain-Design/Unnamed/main/Library.lua'))()
Library.Theme = "Dark"
local Flags = Library.Flags
local Window = Library:Window({
   Text = "Stands Awakening Mobile Version"
})



-- tabs
local StandsTab = Window:Tab({
   Text = "Stands"
})
local MainTab = Window:Tab({
   Text = "Main"
})
local ItemFarmTab = Window:Tab({
   Text = "Item Farm"
})
local FakeStandGenerator = Window:Tab({
   Text = "Fake Stand"
})
local Credits = Window:Tab({
   Text = "Credits"
})



-- code
local StandsSection = StandsTab:Section({
   Text = "Stands"
})
StandsSection:Button({
   Text = "Shadow Dio",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "ShadowTheWorld" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "shadowdio")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "JSP",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "JSP" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "EVA O1",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "EVA01" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "The World Over Heaven",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldOverHeaven" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diooh")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "Steve",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "StevePlatinum" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "Herobrine",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "Herobrine" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "jotaro")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "The World Auternative Universe",
   Callback = function()
	  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("LocalScript") and v.Name ~= "ResetLighting" and v.Name == "TheWorldAlternateUniverse" then
			  game:GetService("ReplicatedStorage").Main.Timestop:FireServer(20, "diego")
		  end
	  end
   end
})
StandsSection:Button({
   Text = "The World Ova",
   Callback = function()
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
StandsSection:Button({
   Text = "The World Ova (Over Heaven)",
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
StandsSection:Button({
   Text = "Neo The World Auternative Universe",
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









local PlayerSection = MainTab:Section({
   Text = "Player Option"
})
PlayerSection:Toggle({
   Text = "Auto Block",
   Callback = function(state)
       settings = state;
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
PlayerSection:Toggle({
   Text = "Anti Time Stop",
   Callback = function(state)
       settings = state;
       if settings then
            while wait() and settings do
	            for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
	            	if v:IsA("BoolValue") and v.Name == "TS" then
	            		if ts.Value == true then
	            			wait(1.2)
	            			ts.Value = false
	            		end
	            	end
	            end
            end
       end
   end
})
PlayerSection:Toggle({
   Text = "Anti Disc",
   Callback = function(state)
       settings = state;
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
PlayerSection:Button({
   Text = "Active Pose",
   Callback = function()
		local args = {
			[1] = true
		}
		game:GetService("ReplicatedStorage").Main.Menacing:FireServer(unpack(args))
   end
})


local GerGeSection = MainTab:Section({
   Text = "GER / GE"
})
GerGeSection:Button({
   Text = "Infinite Damage Reflect",
   Callback = function()
   		local ohString1 = "Alternate"
		local ohString2 = "RTZ"
		local ohBoolean3 = true
		game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2, ohBoolean3)
   end
})
GerGeSection:Button({
   Text = "Infinite Damage Deflect",
   Callback = function()
	    local ohString1 = "Alternate"
	    local ohString2 = "Deflect"
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(ohString1, ohString2)   
    end
})


local ShadowTheWorldSection = MainTab:Section({
   Text = "Shadow The World"
})
ShadowTheWorldSection:Button({
   Text = "STW Mega Knives",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alonebr/Sad-GuiV3/main/Shadow%20Inf%20Kinifes'))()
   end
})
ShadowTheWorldSection:Button({
   Text = "STW Infinite H",
   Callback = function()
        local args = {
	  		[1] = "Alternate",
	  		[2] = "STWRTZ",
	  		[3] = true
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end
})
ShadowTheWorldSection:Toggle({
   Text = "Shadow Dio Fake Stand",
   Callback = function(state)
       settings = state;
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


local SomtAndsOmtSection = MainTab:Section({
   Text = "One More Time (or Somt)"
})
SomtAndsOmtSection:Button({
   Text = "Drill Aura (z)",
   Callback = function()
		local args = {
	  		[1] = "Alternate",
	   		[2] = "Drill"
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end
})


local SansSection = MainTab:Section({
   Text = "Sans"
})
SansSection:Button({
   Text = "Teleport Player To Limbo",
   Callback = function()
		local args = {
			[1] = "Alternate",
			[2] = "Teleport",
			[3] = false,
			[4] = Vector3.new(621, -75, 235)
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end
})


local MadeInHeavenSection = MainTab:Section({
   Text = "Made In Heaven"
})
MadeInHeavenSection:Button({
   Text = "Universe Reset",
   Callback = function()
	    local args = {
	        [1] = "Alternate",
	        [2] = "UniverseReset"
	    }
	    game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end
})
MadeInHeavenSection:Button({
   Text = "Time Accel (No Cooldown)",
   Callback = function()
		local args = {
		    [1] = "Alternate",
		    [2] = "TimeAccel"
		}
		game:GetService("ReplicatedStorage").Main.Input:FireServer(unpack(args))
   end
})









local ItemFarmSection = ItemFarmTab:Section({
   Text = "Item Farm"
})
ItemFarmSection:Button({
   Text = "Grab Tools",
   Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Tool") then
                game:GetService(
                    "Players"
                ).LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
   end
})









getgenv().Fake_Stand = {
   ["Settings"] = {
       ["Stand Name"] = "",
       ["Select Slot"] = "",
   },
};
local FakeStandSection = FakeStandGenerator:Section({
   Text = "Fake Stand Options"
})
FakeStandSection:Input({
   Text = "Stand Name: ",
   Callback = function(Text)
      getgenv().Fake_Stand["Settings"]["Stand Name"] = Text;
   end
})
FakeStandSection:Input({
   Text = "Select Slot: ",
   Callback = function(Text)
      getgenv().Fake_Stand["Settings"]["Select Slot"] = Text;
   end
})
FakeStandSection:Button({
   Text = "Genarete Fake Stand",
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
      -- settings
      local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
      hi:Play() wait(.46)
      Notification:Notify( {Title = "successfully", Description = "The stand you selected was successfully generated. | stand you selected: ".. tostring(getgenv().Fake_Stand["Settings"]["Stand Name"])}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 23), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
   end
})


local StandName = FakeStandGenerator:Section({
   Text = "Stands Names"
})
for _, v in pairs(game:GetService("ReplicatedStorage").Viewports.Stands:GetChildren()) do
   if v:IsA("Model") then
      StandName:Button({
         Text = v.Name,
         Callback = function()
            setclipboard(v.Name)
            local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
            hi:Play() wait(.46)
            Notification:Notify( {Title = "Stand Name", Description = "Stand copied in your clip board, stand: ".. tostring(v.Name)}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 23), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
         end
      })
   end
end


local CreditsSection = Credits:Section({
   Text = "Credits"
})
CreditsSection:Button({
   Text = "Made By: Infinity Mercury",
   Callback = function()
      print("yeahhhhh")
   end
})
