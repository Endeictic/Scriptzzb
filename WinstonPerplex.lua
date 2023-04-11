if syn then
   HttpRequest = syn.request
   else
   HttpRequest = http_request
end

local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local embed = {
        ['title'] = "User : "..game.Players.LocalPlayer.Name,
        ['description'] = getgenv().Message
        ["type"] = "rich",
        ["color"] = tonumber(getgenv().EmbedColor),
}
HttpRequest(
    {
    Url = ''..getgenv().DiscordWebhook..'',
       Headers = {['Content-Type'] = 'application/json'},
       Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
       Method = "POST"
    }
)
