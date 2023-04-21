local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local function Box_Name()
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[9].Name = "Box1"
    game:GetService("Workspace").Item_Spawnner.Box.Spawn_Location.Name   = "Box2"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[5].Name = "Box3"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[2].Name = "Box4"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[7].Name = "Box5"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[6].Name = "Box6"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[8].Name = "Box7"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[4].Name = "Box8"
    game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[3].Name = "box9"
end
local function Collect_Boxes(Box)
    for _, v in pairs(game:GetService("Workspace").Item_Spawnner.Box:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == Box then
            hrp.CFrame = v.CFrame wait(.5)
            fireclickdetector(v.Box.Base.ClickDetector)
        end
    end
end
if getgenv().Settings["Farm Boxes"] then
    while wait() and getgenv().Settings["Farm Boxes"] do
        Collect_Boxes("Box1")
        Collect_Boxes("Box2")
        Collect_Boxes("Box3")
        Collect_Boxes("Box4")
        Collect_Boxes("Box5")
        Collect_Boxes("Box6")
        Collect_Boxes("Box7")
        Collect_Boxes("Box8")
        Collect_Boxes("Box9")
    end

else

    print("Auto Box Desatived.")
end
