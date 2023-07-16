local url = "https://discord.com/api/webhooks/1120487967245475980/2aWLRDZp0Gp2A1ZL7pImpdmMfwOzPIPgITt2qxYEm_aRyj1Ebf6HsJgbn3_E59zXYMfP"
local data = {
   ["username"] = "Script Viwer Bot",
   --["content"] = "",
   ["embeds"] = {
       {
           ["title"] = game:GetService('Players').LocalPlayer.Name,
           ["url"] = "https://roblox.com/users/"..game:GetService('Players').LocalPlayer.UserId.."/profile",
           ["description"] = "this player run the script",
           ["type"] = "rich",
           ["color"] = tonumber(0xff0000),
           ["fields"] = {
               {
                   ["name"] = "Informations",
                   ["value"] = "Game: ".. game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                   ["inline"] = true
               },
           },
       }
   }
}

-- finish
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
   ["content-type"] = "application/json"
}

request = http_request or request or HttpPost or syn.request
local fulldata = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(fulldata)
