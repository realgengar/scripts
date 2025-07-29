local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local JobId = game.JobId
local urlWebhook = "https://discord.com/api/webhooks/1396659724241338388/hFkLnH1xjuS0NdlmJj9FpNAeEBq4zbhsBV7xKDlU3dPmFWPYzH-1tNXQD9m_70lYduXA"

-- Contador de execuções por JobId
local executionCounts = {}
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
		else
			print("Webhook enviado com sucesso!")
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
	return (success and info and info.Name) or "Jogo Desconhecido"
end

local function getAccountAge(player)
	return tostring(player.AccountAge) .. " Dias"
end

-- Função para obter executor de forma mais robusta
local function getExecutorName()
	if identifyexecutor then
		local success, executor = pcall(identifyexecutor)
		if success and executor then
			return executor
		end
	end
	return "Desconhecido"
end

local function incrementExecutionCount(jobId)
	if not executionCounts[jobId] then
		executionCounts[jobId] = 0
	end
	executionCounts[jobId] = executionCounts[jobId] + 1
	return executionCounts[jobId]
end

local function notifyExecutingUser()
	if notificationSent then return end

	local user = Players.LocalPlayer
	if not user then 
		warn("LocalPlayer não encontrado")
		return 
	end

	local executor = getExecutorName()
	local executionCount = incrementExecutionCount(JobId)
	local totalPlayers = #Players:GetPlayers()

	local embedData = {
		username = "Notify Users",
		avatar_url = "https://cdn.discordapp.com/attachments/1386503294536384632/1386509359139262616/channels4profile.jpg",
		embeds = {{
			title = "Script Em Execução",
			description = " ",
			color = 0x9932CC,
			thumbnail = {
				url = nil
			},
			footer = {
				text = "discord.gg/drip-client ┃ " .. formatTime(os.time())
			},
			fields = {
				{
					name = "Script Executado:",
					value = string.format("```Usuário: %s\nJogo: %s\nDias Logado: %s```", 
						user.Name, 
						getGameName(), 
						getAccountAge(user)
					),
					inline = false
				},
				{
					name = "Server:",
					value = string.format("> Players: **%d/12**\n> Executor: **%s**", 
						totalPlayers, 
						executor
					),
					inline = false
				},
				{
					name = "Job-Id:",
					value = "```" .. JobId .. "```",
					inline = false
				}
			}
		}}
	}

	print("Tentando enviar webhook...")
	sendWebhookNotification(embedData)
	notificationSent = true
end

-- Aguardar o LocalPlayer estar disponível
local function waitForLocalPlayer()
	local player = Players.LocalPlayer
	if player then
		notifyExecutingUser()
		return
	end
	
	-- Aguardar LocalPlayer aparecer
	local connection
	connection = Players.PlayerAdded:Connect(function(plr)
		if plr == Players.LocalPlayer then
			connection:Disconnect()
			notifyExecutingUser()
		end
	end)
	
	-- Timeout de segurança
	spawn(function()
		wait(10) -- Aguarda até 10 segundos
		if connection then
			connection:Disconnect()
		end
		if Players.LocalPlayer then
			notifyExecutingUser()
		end
	end)
end

-- Iniciar o script
waitForLocalPlayer()
