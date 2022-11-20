local New_CFrame = game:GetService("Workspace").tower.sections.finish.FinishGlow.Cframe

local ts = game:GetService('TweenService')
local char = game.Players.LocalPlayer.Character

local part = Char.HumanoidRootPart
local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
local tp = {CFrame = New_CFrame}
ts:Create(part, ti, tp):Play()
