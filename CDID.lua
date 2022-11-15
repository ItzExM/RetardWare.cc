getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "CDID Private",
	LoadingTitle = "Loading Cheat...",
	LoadingSubtitle = "by ! Ly",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "CDIDPrivateConfig"
	},
        Discord = {
        	Enabled = false,
        	Invite = "",
        	RememberJoins = false
        },
	KeySystem = false,
	KeySettings = {
		Title = "CDID Private",
		Subtitle = "Key System",
		Note = "Ask ! Ly#0010 for key",
		FileName = "CDIDPrivateKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "CDID"
	}
})

local MainTab = Window:CreateTab("Main", 4483362458)

local Slider = MainTab:CreateSlider({
	Name = "Walk-Speed [Do Not Press Shift]",
	Range = {16, 500},
	Increment = 1,
	Suffix = "Value",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})
local Slider = MainTab:CreateSlider({
	Name = "Jump-Power [Do Not Press Shift]",
	Range = {50, 1000},
	Increment = 1,
	Suffix = "Value",
	CurrentValue = 50,
	Flag = "Slider1",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})
local Button = MainTab:CreateButton({
	Name = "Rejoin Server [Doesn't work in VIP]",
	Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end,
})
local Button = MainTab:CreateButton({
	Name = "Server Hop [Doesn't work in VIP]",
	Callback = function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

        module:Teleport(game.PlaceId)
	end,
})
local Button = MainTab:CreateButton({
	Name = "Anti-AFK [Press F9 to check if it works]",
	Callback = function()
        local GC = getconnections or get_signal_cons
local Players = game:GetService("Players")
if GC then
    for i, v in pairs(GC(Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    Players.LocalPlayer.Idled:Connect(
        function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end
    )
end
print("Anti-AFK Enabled!")
	end,
})

local ESPTab = Window:CreateTab("ESP", 4483362458)

getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false

local Toggle = ESPTab:CreateToggle({
	Name = "Enable ESP",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
		getgenv().Visibility = Value
	end,
})
local Toggle = ESPTab:CreateToggle({
	Name = "Enable Box ESP",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
		getgenv().boxESP = Value
	end,
})
local Toggle = ESPTab:CreateToggle({
	Name = "Enable Name ESP",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
		getgenv().nameESP = Value
	end,
})
local Toggle = ESPTab:CreateToggle({
	Name = "Enable Chams ESP",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
		getgenv().cham = Value
	end,
})
local Toggle = ESPTab:CreateToggle({
	Name = "Enable Team Color",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        getgenv().useTeamColor = Value
	end,
})

local TeleportTab = Window:CreateTab("Teleport", 4483362458)

local Button = TeleportTab:CreateButton({
	Name = "Spawn",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-25370.9609, 23.3736992, 8801.875, 0.897247016, 9.69659055e-08, -0.441528946, -9.3646392e-08, 1, 2.93116909e-08, 0.441528946, 1.50477675e-08, 0.897247016),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "Daily Requirement",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-23885.793, 21.9585762, 5660.65869, 0.480038643, -7.33639354e-08, 0.877247334, -1.39590899e-08, 1, 9.12682552e-08, -0.877247334, -5.60578641e-08, 0.480038643),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "Toyota Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-21689.0801, 21.9424076, 2682.00391, 0.495662719, -9.94112703e-09, 0.868515074, -1.04604458e-08, 1, 1.74159087e-08, -0.868515074, -1.77174719e-08, 0.495662719),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "Mitsubishi Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-21598.1035, 22.0680752, 2500.32031, 0.469726264, -7.49041931e-08, 0.882812083, 5.88435825e-08, 1, 5.35378e-08, -0.882812083, 2.67997144e-08, 0.469726264),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "Lexus Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-21486.0488, 21.3252335, 2374.33032, 0.466673553, -1.90798417e-08, 0.884429634, -5.21274295e-08, 1, 4.90783343e-08, -0.884429634, -6.90066031e-08, 0.466673553),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "BMW Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-21395.5293, 27.1173248, 2094.42603, 0.498100877, 1.04606258e-07, 0.867119074, -4.77773554e-08, 1, -9.31917086e-08, -0.867119074, 4.99021624e-09, 0.498100877),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "Mercedes Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-20743.6113, 23.0739155, 1761.18176, -0.558056355, -7.24943803e-08, -0.82980305, -6.59051791e-09, 1, -8.29311233e-08, 0.82980305, -4.08114111e-08, -0.558056355),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(3,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)
	end,
})

local MetamethodHolder = {
    AntiFlag = nil
}

MetamethodHolder.AntiFlag = hookmetamethod(game, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    if tostring(Method) == "PreloadAsync" and not checkcaller() then
        return
    end    
   
    return MetamethodHolder.AntiFlag(self, ...)    
end)
