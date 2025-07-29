local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local JobId = game.JobId
local urlWebhook = "https://discord.com/api/webhooks/1396659724241338384638/hFkLnH1xjuS0NdlmJj9FpNAeEBq4zbhsBV7xKDlU3dPmFWPYzH-1tNXQD9m_70lYduXA"
local notificationSent = false

local function getHttpRequestFunction()
	local funcs = { http_request, (syn and syn.request), (http and http.request), request }
	for _, func in ipairs(funcs) do
		if typeof(func) == "function" then
			return func
		end
	end
	return nil
end

local function sendWebhookNotification(data)
	local jsonData = HttpService:JSONEncode(data)
	local httpRequest = getHttpRequestFunction()
	if httpRequest then
		local response = {
			Url = urlWebhook,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = jsonData
		}
		local success, result = pcall(function()
			return httpRequest(response)
		end)
		if not success then
			warn("Erro ao enviar webhook:", result)
		end
	else
		warn("Nenhuma função HTTP disponível.")
	end
end

local function formatTime(timestamp)
	local now = os.time()
	local difference = os.difftime(now, timestamp)
	if difference < 86400 then
		return "Hoje às " .. os.date("%H:%M", timestamp)
	elseif difference < 172800 then
		return "Ontem às " .. os.date("%H:%M", timestamp)
	else
		return os.date("%d/%m/%Y às %H:%M", timestamp)
	end
end

local function getGameName()
	local success, info = pcall(function()
		return MarketplaceService:GetProductInfo(game.PlaceId)
	end)
	return (success and info.Name) or "Jogo Desconhecido"
end

local function getAccountAge(player)
	return tostring(player.AccountAge) .. " Dias"
end

local function getExecutor()
	local success, result = pcall(function()
		return identifyexecutor and identifyexecutor()
	end)
	return success and result or "Desconhecido"
end

local function getPlayerThumbUrl(userId)
	return string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=150&height=150&format=png", userId)
end

local function notifyExecutingUser()
	if notificationSent then return end

	local user = Players.LocalPlayer
	if not user then return end

	local embedData = {
		username = user.Name,
		avatar_url = getPlayerThumbUrl(user.UserId),
		embeds = {{
			title = "Script Em Execução",
			description = "",
			color = 0x9932CC,
			thumbnail = {
				url = getPlayerThumbUrl(user.UserId)
			},
			footer = {
				text = "https://discord.gg/DripClient ┃ " .. formatTime(os.time())
			},
			fields = {
				{
					name = "Script Executado:",
					value = string.format("```Usuário: %s\nExecutor: %s\nJogo: %s\nDias Logado: %s```", user.Name, getExecutor(), getGameName(), getAccountAge(user)),
					inline = false
				},
				{
					name = "Quantidade de jogadores:",
					value = "```" .. tostring(#Players:GetPlayers()) .. "/20```",
					inline = false
				},
				{
					name = "Job-ID:",
					value = "```" .. JobId .. "```",
					inline = false
				}
			}
		}}
	}

	sendWebhookNotification(embedData)
	notificationSent = true
end

if Players.LocalPlayer then
	notifyExecutingUser()
end

Players.PlayerAdded:Connect(function()
	if Players.LocalPlayer then
		notifyExecutingUser()
	end
end)
