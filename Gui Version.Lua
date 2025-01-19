--[[
  Creator: realgengar
  https/github/realgengar
  by:Rocks
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
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(0, 300, 0, 50)
Title.Position = UDim2.new(0.5, -150, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "Shadow Hub"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 40

Button1.Parent = Frame
Button1.BackgroundColor3 = Color3.new(0, 0, 0)
Button1.BorderSizePixel = 2
Button1.BorderColor3 = Color3.new(1, 1, 1)
Button1.Size = UDim2.new(0, 280, 0, 40)
Button1.Position = UDim2.new(0.5, -140, 0, 70)
Button1.TextColor3 = Color3.fromRGB(3, 252, 244)
Button1.Text = "Português"

Button2.Parent = Frame
Button2.BackgroundColor3 = Color3.new(0, 0, 0)
Button2.BorderSizePixel = 2
Button2.BorderColor3 = Color3.new(1, 1, 1)
Button2.Size = UDim2.new(0, 280, 0, 40)
Button2.Position = UDim2.new(0.5, -140, 0, 120)
Button2.TextColor3 = Color3.fromRGB(3, 252, 244)
Button2.Text = "Inglês"

Button1.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.lua"))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.lua'),true))()
ScreenGui:Destroy()
end)

Button2.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source2.lua"))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source2.lua'),true))()
    ScreenGui:Destroy()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/GZswxyMS"))()
