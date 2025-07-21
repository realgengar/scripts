--[[
  Creator: kyoshi
  https/github/realgengar
  by:kyoshi
--]]
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
Frame.Position = UDim2.new(0.5, -175, 0.5, -125)

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
Title2.Size = UDim2.new(0, 250, 0, 60)
Title2.Position = UDim2.new(0.2, -50, 0, 180)
Title2.BackgroundTransparency = 1
Title2.Text = "working in both versions"
Title2.TextColor3 = Color3.new(1, 1, 1)
Title2.Font = Enum.Font.BuilderSansBold
Title2.TextSize = 20
Title2.TextXAlignment = Enum.TextXAlignment.Left

Button1.Parent = Frame
Button1.BackgroundColor3 = Color3.new(0, 0, 0)
Button1.BorderSizePixel = 3
Button1.BorderColor3 = Color3.fromRGB(252, 3, 223)
Button1.Size = UDim2.new(0, 330, 0, 45)
Button1.Position = UDim2.new(0.5, -165, 0, 80)
Button1.TextColor3 = Color3.fromRGB(3, 252, 244)
Button1.Text = "português"
Button1.TextSize = 23

Button2.Parent = Frame
Button2.BackgroundColor3 = Color3.new(0, 0, 0)
Button2.BorderSizePixel = 3
Button2.BorderColor3 = Color3.fromRGB(252, 3, 223)
Button2.Size = UDim2.new(0, 330, 0, 45)
Button2.Position = UDim2.new(0.5, -165, 0, 140)
Button2.TextColor3 = Color3.fromRGB(3, 252, 244)
Button2.Text = "english"
Button2.TextSize = 23

Button1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.lua'),true))()
    ScreenGui:Destroy()
end)

Button2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source2.lua'),true))()
    ScreenGui:Destroy()
end)

wait(5)
if ScreenGui then
    ScreenGui:Destroy()
end
loadstring(game:HttpGet("https://pastebin.com/raw/ngXWsMTu"))()
