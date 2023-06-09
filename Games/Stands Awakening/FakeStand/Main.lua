-- variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Viewports = ReplicatedStorage.Viewports
local Stands = Viewports.Stands
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()



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
