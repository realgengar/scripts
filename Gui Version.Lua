--[[
  Creator: kyoshi
  https/github/realgengar
  by:kyoshi
--]]
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")

ScreenGui.Name = "ScriptExecutorGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.BorderSizePixel = 2
Frame.Size = UDim2.new(0, 350, 0, 250)
Frame.Position = UDim2.new(0.5, -175, 1.2, 0)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = Frame

local LogoImage = Instance.new("ImageLabel")
LogoImage.Parent = Frame
LogoImage.Size = UDim2.new(0, 59, 0, 50)
LogoImage.Position = UDim2.new(0.81, 0, 0, 10)
LogoImage.BackgroundTransparency = 1
LogoImage.Image = "rbxassetid://72495850369898"

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(0, 250, 0, 60)
Title.Position = UDim2.new(0.2, -50, 0, 9)
Title.BackgroundTransparency = 1
Title.Text = "CLIENT"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 37
Title.TextXAlignment = Enum.TextXAlignment.Left

local Title2 = Instance.new("TextLabel")
Title2.Parent = Frame
Title2.Size = UDim2.new(0, 330, 0, 25)
Title2.Position = UDim2.new(0.5, -165, 0, 190) 
Title2.BackgroundTransparency = 1
Title2.Text = "Working in both versions"
Title2.TextColor3 = Color3.new(1, 1, 1)
Title2.Font = Enum.Font.BuilderSansBold
Title2.TextSize = 18
Title2.TextXAlignment = Enum.TextXAlignment.Center

local function styleButton(button)
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.BorderSizePixel = 0 
	button.Size = UDim2.new(0, 330, 0, 45)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 23

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 6)
	corner.Parent = button

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(150, 90, 60) -- marrom claro
	stroke.Thickness = 2.5
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Parent = button

	-- Hover animation
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			Size = UDim2.new(0, 340, 0, 50)
		}):Play()
	end)

	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.new(0, 0, 0),
			Size = UDim2.new(0, 330, 0, 45)
		}):Play()
	end)
	button.MouseButton1Click:Connect(function()
		local clickAnim = TweenService:Create(button, TweenInfo.new(0.1), {
			Size = UDim2.new(0, 325, 0, 42)
		})
		clickAnim:Play()
		clickAnim.Completed:Wait()
		TweenService:Create(button, TweenInfo.new(0.1), {
			Size = UDim2.new(0, 330, 0, 45)
		}):Play()
	end)
end

Button1.Parent = Frame
Button1.Position = UDim2.new(0.5, -165, 0, 80)
Button1.Text = "Português"
styleButton(Button1)

Button2.Parent = Frame
Button2.Position = UDim2.new(0.5, -165, 0, 140)
Button2.Text = "English"
styleButton(Button2)

Button1.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.lua'), true))()
	ScreenGui:Destroy()
end)

Button2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source2.lua'), true))()
	ScreenGui:Destroy()
end)

Frame.BackgroundTransparency = 1
Title.TextTransparency = 1
Title2.TextTransparency = 1
Button1.TextTransparency = 1
Button2.TextTransparency = 1
LogoImage.ImageTransparency = 1

TweenService:Create(Frame, TweenInfo.new(0.4), {
	Position = UDim2.new(0.5, -175, 0.5, -125),
	BackgroundTransparency = 0
}):Play()

TweenService:Create(Title, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(Title2, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(Button1, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(Button2, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(LogoImage, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
task.delay(5, function()
	if ScreenGui then
		ScreenGui:Destroy()
	end
end)
wait(0.1)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/scripts/refs/heads/main/users.lua'),true))()
