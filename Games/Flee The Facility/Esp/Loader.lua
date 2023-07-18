function GetSizeOfObject(Obj)
    if Obj:IsA("BasePart") then
    return Obj.Size
    elseif Obj:IsA("Model") then
    return Obj:GetExtentsSize()
    end
    end
    
    local ESP = Instance.new("Folder",workspace)
    ESP.Name = "ESP"
    
    
    function CreateESPPart(BodyPart,r,g,b)
    local ESPPartparent = BodyPart
    local Box = Instance.new("BoxHandleAdornment")
    Box.Size = GetSizeOfObject(ESPPartparent) + Vector3.new(0.1, 0.1, 0.1)
    Box.Name = "ESPPart"
    Box.Adornee = ESPPartparent
    Box.Color3 = Color3.fromRGB(r,g,b)
    Box.AlwaysOnTop = true
    Box.ZIndex = 5
    Box.Transparency = 0.4
    Box.Parent = ESP
    if BodyPart.Parent.Name == game.Players.LocalPlayer.Name then
    Box:remove()
    spawn (function()
    while true do
    wait(0.1)
    if BodyPart ~= nil then
    Box:remove()
    end
    end
    end)
    end
    end
    
    
    local player = game.Players:GetChildren()
    for i =1, #player do
    local bodyparts = player[i].Character:GetChildren()
    for i =1, #bodyparts do
    if bodyparts[i].ClassName == "Part" then
    if bodyparts[i].Parent:findFirstChild("BeastPowers") then
    CreateESPPart(bodyparts[i],255,0,0)
    else
    CreateESPPart(bodyparts[i],170,170,255)
    end
    end
    end
    end
