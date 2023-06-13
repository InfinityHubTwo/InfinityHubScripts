-- variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Viewports = ReplicatedStorage.Viewports
local Stands = Viewports.Stands
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()


-- libray
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rain-Design/Unnamed/main/Library.lua'))()
Library.Theme = "Dark"
local Flags = Library.Flags
local Window = Library:Window({
   Text = "Stands Awakening Fake Stand"
})


-- tabs
local FakeStandGenerator = Window:Tab({
   Text = "Fake Stand"
})
local FakeItemsGenerator = Window:Tab({
   Text = "Fake Items"
})
local Credits = Window:Tab({
   Text = "Credits"
})


-- code
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

