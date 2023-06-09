-- variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Viewports = ReplicatedStorage.Viewports
local Stands = Viewports.Stands


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
