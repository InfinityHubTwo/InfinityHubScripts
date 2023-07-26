-- Libray settings
getgenv().SecureMode = true
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Ui%20Libray/ArrayField/Modded.lua'))()
local Window = ArrayField:CreateWindow({
   Name = "Infinity Hub | "..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
   LoadingTitle = "Infinity Hub",
   LoadingSubtitle = "by infinity mercury",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "__InfinityHub"
   },
   Discord = {
      Enabled = true,
      Invite = "no invite link",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Infinity Hub",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = true,
      Actions = {
            [1] = {
                Text = '> - <',
                OnPress = function()
                    setclipboard([[> - <]])
                end,
                }
            },
      Key = {"a"}
   }
})
wait(1)
for _, v in pairs(game:GetService('CoreGui'):GetDescendants()) do
	if v:IsA('ScreenGui') and v.Name == 'ArrayField' then
		v.Main.Topbar.BackgroundColor3 = Color3.new(0.058823, 0.007843, 0.494117) wait(.5) v.Main.Topbar.CornerRepair.BackgroundColor3 = Color3.new(0.058823, 0.007843, 0.494117) wait(.5) v.Main.Topbar.Divider.BackgroundColor3 = Color3.new(0.007843, 0.333333, 0.6)
	end
end
