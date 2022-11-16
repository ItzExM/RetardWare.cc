getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "CDID Private",
	LoadingTitle = "Loading Cheat...",
	LoadingSubtitle = "by ! Ly",
	ConfigurationSaving = {
		Enabled = false,
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
	Callback = function(w)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = w
	end,
})
local Slider = MainTab:CreateSlider({
	Name = "Jump-Power [Do Not Press Shift]",
	Range = {50, 1000},
	Increment = 1,
	Suffix = "Value",
	CurrentValue = 50,
	Flag = "Slider1",
	Callback = function(j)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
	end,
})
local Button = MainTab:CreateButton({
	Name = "Infinite Jump",
	Callback = function()
        local g = getgenv()

if g._swim then
    g._swim:Disconnect()
    g._swim = nil
end

local u = game:GetService("UserInputService")
g._swim = u.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end

    if input.KeyCode == Enum.KeyCode.Space then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)
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

local Paragraph = TeleportTab:CreateParagraph({Title = "Player Teleport", Content = "[1] [Under Maintenance]"})

local plrs = {}
    local selectedPlr
     
for _, v in next, game:GetService("Players"):GetPlayers() do
    if v.Name ~= game.Players.LocalPlayer.Name then
        table.insert(plrs, v.Name)
    end
end

local Dropdown = TeleportTab:CreateDropdown({
	Name = "Select Players",
	Options = {"Option 1","Option 2"},
	CurrentOption = "Option 1",
	Flag = "Dropdown1",
	Callback = function(Option)
	end,
})
local Button = TeleportTab:CreateButton({
	Name = "TP to Player",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Players[selectedPlr].Character.HumanoidRootPart.CFrame
	end,
})

local Paragraph = TeleportTab:CreateParagraph({Title = "Normal Teleport", Content = "[2]"})

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
	Name = "Job Changer",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-25204.1465, 23.3692799, 8623.30957, 0.999999762, 9.01753197e-08, -0.000690595421, -9.01600714e-08, 1, 2.21099885e-08, 0.000690595421, -2.20477201e-08, 0.999999762),
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
	Name = "Modification",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-17283.9375, -14.4995031, 18840.0859, -0.507016718, -4.26286846e-08, -0.861936212, 4.39673116e-08, 1, -7.53197753e-08, 0.861936212, -7.60854064e-08, -0.507016718),
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
	Name = "Accessories",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-15159.7695, -96.8301239, 29652.707, -0.256434649, 5.64273535e-08, 0.966561556, -3.09453405e-08, 1, -6.65894575e-08, -0.966561556, -4.69864219e-08, -0.256434649),
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
	Name = "Premium Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-25489.3887, 26.1521072, 15257.7266, -0.256765902, 7.12753021e-08, 0.966473639, -1.40457095e-08, 1, -7.74793634e-08, -0.966473639, -3.3468865e-08, -0.256765902),
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
	Name = "Sumber Jaya Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-12388.7363, 47.5271683, 1894.16541, -0.480136365, 1.14372201e-08, -0.877193868, -2.45105767e-08, 1, 2.64544013e-08, 0.877193868, 3.42022481e-08, -0.480136365),
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
	Name = "Daihatsu Dealership",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(-15225.1602, -97.5758591, 30088.6719, 0.965309501, -3.04275289e-08, 0.261108309, 9.87720306e-09, 1, 8.00164841e-08, -0.261108309, -7.46616564e-08, 0.965309501),
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

local MiscTab = Window:CreateTab("Misc", 4483362458)

local Button = MiscTab:CreateButton({
	Name = "Destroy GUI",
	Callback = function()
        Rayfield:Destroy()
	end,
})
local Button = MiscTab:CreateButton({
	Name = "Remove Textures",
	Callback = function()
        for _, v in next, workspace:GetDescendants() do
            if v.ClassName == "Decal" then
                v:Destroy()
            end
        end
	end,
})
local Button = MiscTab:CreateButton({
	Name = "Headless",
	Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
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
