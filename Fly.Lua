local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 200, 0, 65)

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = Frame

local frameStroke = Instance.new("UIStroke")
frameStroke.Color = Color3.fromRGB(138, 2, 242)
frameStroke.Thickness = 2
frameStroke.Parent = Frame

local frameGradient = Instance.new("UIGradient")
frameGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 30))
}
frameGradient.Rotation = 45
frameGradient.Parent = Frame

-- Botão fly/onof
onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
onof.BorderSizePixel = 0
onof.Position = UDim2.new(0.72, 0, 0.52, 0)
onof.Size = UDim2.new(0, 52, 0, 26)
onof.Font = Enum.Font.GothamBold
onof.Text = "FLY"
onof.TextColor3 = Color3.fromRGB(255, 255, 255)
onof.TextSize = 12.000
onof.TextStrokeTransparency = 0.8

local onofCorner = Instance.new("UICorner")
onofCorner.CornerRadius = UDim.new(0, 8)
onofCorner.Parent = onof

local onofStroke = Instance.new("UIStroke")
onofStroke.Color = Color3.fromRGB(45, 135, 56)
onofStroke.Thickness = 1
onofStroke.Parent = onof

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.35, 0, 0.05, 0)
TextLabel.Size = UDim2.new(0, 120, 0, 24)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = " ⚡ DRIP CLIENT ⚡"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextStrokeTransparency = 0.5

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
plus.BorderSizePixel = 0
plus.Position = UDim2.new(0.15, 0, 0.05, 0)
plus.Size = UDim2.new(0, 40, 0, 24)
plus.Font = Enum.Font.GothamBold
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(255, 255, 255)
plus.TextScaled = true
plus.TextSize = 16.000
plus.TextStrokeTransparency = 0.8

local plusCorner = Instance.new("UICorner")
plusCorner.CornerRadius = UDim.new(0, 6)
plusCorner.Parent = plus

local plusStroke = Instance.new("UIStroke")
plusStroke.Color = Color3.fromRGB(0, 120, 200)
plusStroke.Thickness = 1
plusStroke.Parent = plus


speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.39, 0, 0.52, 0)
speed.Size = UDim2.new(0, 42, 0, 26)
speed.Font = Enum.Font.GothamBold
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextStrokeTransparency = 0.8

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0, 6)
speedCorner.Parent = speed

local speedStroke = Instance.new("UIStroke")
speedStroke.Color = Color3.fromRGB(138, 2, 242)
speedStroke.Thickness = 1
speedStroke.Parent = speed


mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
mine.BorderSizePixel = 0
mine.Position = UDim2.new(0.15, 0, 0.52, 0)
mine.Size = UDim2.new(0, 40, 0, 26)
mine.Font = Enum.Font.GothamBold
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(255, 255, 255)
mine.TextScaled = true
mine.TextSize = 16.000
mine.TextStrokeTransparency = 0.8

local mineCorner = Instance.new("UICorner")
mineCorner.CornerRadius = UDim.new(0, 6)
mineCorner.Parent = mine

local mineStroke = Instance.new("UIStroke")
mineStroke.Color = Color3.fromRGB(200, 80, 80)
mineStroke.Thickness = 1
mineStroke.Parent = mine

closebutton.Name = "Close"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(220, 50, 47)
closebutton.BorderSizePixel = 0
closebutton.Font = Enum.Font.GothamBold
closebutton.Size = UDim2.new(0, 40, 0, 24)
closebutton.Text = "✕"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.TextSize = 14
closebutton.Position = UDim2.new(0, 0, 0, -26)
closebutton.TextStrokeTransparency = 0.8

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closebutton

local closeStroke = Instance.new("UIStroke")
closeStroke.Color = Color3.fromRGB(180, 40, 37)
closeStroke.Thickness = 1
closeStroke.Parent = closebutton

mini.Name = "minimize"
mini.Parent = Frame
mini.BackgroundColor3 = Color3.fromRGB(255, 195, 0)
mini.BorderSizePixel = 0
mini.Font = Enum.Font.GothamBold
mini.Size = UDim2.new(0, 40, 0, 24)
mini.Text = "−"
mini.TextColor3 = Color3.fromRGB(0, 0, 0)
mini.TextSize = 16
mini.Position = UDim2.new(0, 42, 0, -26)
mini.TextStrokeTransparency = 0.8

local miniCorner = Instance.new("UICorner")
miniCorner.CornerRadius = UDim.new(0, 6)
miniCorner.Parent = mini

local miniStroke = Instance.new("UIStroke")
miniStroke.Color = Color3.fromRGB(200, 160, 0)
miniStroke.Thickness = 1
miniStroke.Parent = mini

mini2.Name = "minimize2"
mini2.Parent = Frame
mini2.BackgroundColor3 = Color3.fromRGB(255, 195, 0)
mini2.BorderSizePixel = 0
mini2.Font = Enum.Font.GothamBold
mini2.Size = UDim2.new(0, 40, 0, 24)
mini2.Text = "□"
mini2.TextColor3 = Color3.fromRGB(0, 0, 0)
mini2.TextSize = 14
mini2.Position = UDim2.new(0, 42, 0, 4)
mini2.Visible = false
mini2.TextStrokeTransparency = 0.8

local mini2Corner = Instance.new("UICorner")
mini2Corner.CornerRadius = UDim.new(0, 6)
mini2Corner.Parent = mini2

local mini2Stroke = Instance.new("UIStroke")
mini2Stroke.Color = Color3.fromRGB(200, 160, 0)
mini2Stroke.Thickness = 1
mini2Stroke.Parent = mini2

speeds = 1
local speaker = game:GetService("Players").LocalPlayer
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "🚀 Fly GUI Ativado";
    Text = "Drip Client v2.0 - Use WASD para voar!";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150";
    Duration = 5;
})

Frame.Active = true
Frame.Draggable = true

onof.MouseButton1Down:connect(function()
    if nowe == true then
        nowe = false
        onof.Text = "FLY"
        onof.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
        
        
        if speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
            local humanoid = speaker.Character.Humanoid
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
        end
    else 
        nowe = true
        onof.Text = "STOP"
        onof.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        
        for i = 1, speeds do
            spawn(function()
                local hb = game:GetService("RunService").Heartbeat	
                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end
            end)
        end
        
        if speaker.Character then
            speaker.Character.Animate.Disabled = true
            local Char = speaker.Character
            local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

            for i,v in next, Hum:GetPlayingAnimationTracks() do
                v:AdjustSpeed(0)
            end
            
            local humanoid = speaker.Character.Humanoid
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
            humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end
    end

    
    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Torso
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 0

        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = torso.CFrame
        local bv = Instance.new("BodyVelocity", torso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        
        if nowe == true then
            plr.Character.Humanoid.PlatformStand = true
        end
        
        while nowe == true and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 do
            game:GetService("RunService").RenderStepped:Wait()

            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                speed = speed+.5+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                speed = speed-1
                if speed < 0 then
                    speed = 0
                end
            end
            
            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0,0)
            end
            
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
        end
        
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        tpwalking = false
        
    else
        local plr = game.Players.LocalPlayer
        local UpperTorso = plr.Character.UpperTorso
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 0

        local bg = Instance.new("BodyGyro", UpperTorso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = UpperTorso.CFrame
        local bv = Instance.new("BodyVelocity", UpperTorso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        
        if nowe == true then
            plr.Character.Humanoid.PlatformStand = true
        end
        
        while nowe == true and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 do
            wait()

            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                speed = speed+.5+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                speed = speed-1
                if speed < 0 then
                    speed = 0
                end
            end
            
            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0,0)
            end

            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
        end
        
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        tpwalking = false
    end
end)

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end)

plus.MouseButton1Down:connect(function()
    speeds = speeds + 1
    speed.Text = speeds
    plus.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
    wait(0.1)
    plus.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    
    if nowe == true then
        tpwalking = false
        for i = 1, speeds do
            spawn(function()
                local hb = game:GetService("RunService").Heartbeat	
                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end
            end)
        end
    end
end)

mine.MouseButton1Down:connect(function()
    if speeds == 1 then
        speed.Text = 'MIN = 1'
        mine.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
        wait(1)
        speed.Text = speeds
        mine.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    else
        speeds = speeds - 1
        speed.Text = speeds
        

        mine.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
        wait(0.1)
        mine.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        
        if nowe == true then
            tpwalking = false
            for i = 1, speeds do
                spawn(function()
                    local hb = game:GetService("RunService").Heartbeat	
                    tpwalking = true
                    local chr = game.Players.LocalPlayer.Character
                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                        if hum.MoveDirection.Magnitude > 0 then
                            chr:TranslateBy(hum.MoveDirection)
                        end
                    end
                end)
            end
        end
    end
end)

closebutton.MouseButton1Click:Connect(function()
    for i = 0, 1, 0.1 do
        main.Frame.BackgroundTransparency = i
        for _, child in pairs(main.Frame:GetChildren()) do
            if child:IsA("GuiObject") then
                child.BackgroundTransparency = i
                if child:IsA("TextLabel") or child:IsA("TextButton") then
                    child.TextTransparency = i
                end
            end
        end
        wait(0.02)
    end
    main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
    onof.Visible = false
    plus.Visible = false
    speed.Visible = false
    mine.Visible = false
    TextLabel.Visible = false
    mini.Visible = false
    mini2.Visible = true
    Frame.BackgroundTransparency = 0.8
    closebutton.Position = UDim2.new(0, 0, 0, 4)
    Frame:TweenSize(UDim2.new(0, 84, 0, 28), "Out", "Quad", 0.3, true)
end)

mini2.MouseButton1Click:Connect(function()
    onof.Visible = true
    plus.Visible = true
    speed.Visible = true
    mine.Visible = true
    TextLabel.Visible = true
    mini.Visible = true
    mini2.Visible = false
    Frame.BackgroundTransparency = 0
    closebutton.Position = UDim2.new(0, 0, 0, -26)
    Frame:TweenSize(UDim2.new(0, 200, 0, 65), "Out", "Quad", 0.3, true)
end)
