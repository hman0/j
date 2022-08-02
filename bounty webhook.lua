local max = false
local WebHook_URL = ""
local player = game:GetService("Players").LocalPlayer.Name

local function bountytext()
	local bountytext = (game:GetService("Players").LocalPlayer.PlayerGui.AppUI.Buttons.Bounty.Label.Text)
	return bountytext
end

while max == false do	
	if bountytext() == "Bounty: $50,000" then
		print("Max bounty reached")

		local url =
			"https://discord.com/api/webhooks/882251702051422248/qQiIGbxry7puyewnRgKW-cm7uI0IiTa0Q_EIb61PDKE3MS3xQxnyuQiAMnjSJKc_5mQt"
		local data = {
			["content"] = player.." has reached $50,000 bounty",
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)

		local headers = {
			["content-type"] = "application/json"
		}
		request = http_request or request or HttpPost or syn.request
		local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(abcdef)
		max = true
	end
	wait(30)
end

while max == true do
	if not bountytext() == "Bounty: $50,000" then
		max = false
	end
end

