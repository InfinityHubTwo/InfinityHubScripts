--variables
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()



-- libray
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rain-Design/Unnamed/main/Library.lua'))()
Library.Theme = "Dark"
local Flags = Library.Flags
local Window = Library:Window({
   Text = "Stands Awakening Auto Boss"
})



--tabs
local AutoBossTab = Window:Tab({
   Text = "AutoBoss"
})



--code
local AutoBossSection = AutoBossTab:Section({
   Text = "Auto Boss"
})
AutoBossSection:Button({
   Text = "Active Auto Boss",
   Callback = function()
        local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=6026984224" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
        hi:Play() wait(.46)
        Notification:Notify( {Title = "Auto Boss", Description = "Modded by Infinity Mercury"}, {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"}, {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(179, 255, 2), Callback = function(State) print(tostring(State)) end} ) wait(.25) workspace.Notification_Sound:Destroy()
        wait(.5)
  	    getgenv().WaitTime = 240
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()
   end
})
AutoBossSection:Button({
   Text = "Sword No CD (Made by Anya)",
   Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
   end
})
