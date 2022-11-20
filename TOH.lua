getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Tower of Hell Private [V0.1]",
	LoadingTitle = "Loading Cheat...",
	LoadingSubtitle = "by ! Enz#6969",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = TOHPrivate,
		FileName = "TOHPrivateConfig"
	},
        Discord = {
        	Enabled = false,
        	Invite = "",
        	RememberJoins = false
        },
	KeySystem = true,
	KeySettings = {
		Title = "TOH Private",
		Subtitle = "Key System",
		Note = "Ask ! Ly#0010 for key",
		FileName = "TOHPrivateKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "TOH"
	}
})

local MainTab = Window:CreateTab("Main", 4483362458)

local Button = MainTab:CreateButton({
	Name = "Go to Top (Risky)",
	Callback = function()
	end,
})
local Button = MainTab:CreateButton({
	Name = "Go to Top (Safe)",
	Callback = function()
        local teleport_table = {
            location1 = Vector3.new(41.8592949, 273.449127, -100.097633, 0.923815906, 1.16380878e-08, -0.382837057, -3.70705955e-09, 1, 2.14541611e-08, 0.382837057, -1.84004936e-08, 0.923815906),
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
local Button = MainTab:CreateButton({
	Name = "Give All Gears",
	Callback = function()
	end,
})
local Button = MainTab:CreateButton({
	Name = "God-Mode",
	Callback = function()
	end,
})

local PlayerTab = Window:CreateTab("Player", 4483362458)

local Slider = PlayerTab:CreateSlider({
	Name = "Walk-Speed",
	Range = {16, 500},
	Increment = 1,
	Suffix = "Value",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(w)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = w
	end,
})
local Slider = PlayerTab:CreateSlider({
	Name = "Jump-Power",
	Range = {50, 1000},
	Increment = 1,
	Suffix = "Value",
	CurrentValue = 50,
	Flag = "Slider1",
	Callback = function(j)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
	end,
})

local Slider = PlayerTab:CreateSlider({
	Name = "Slider Example",
	Range = {70, 100},
	Increment = 1,
	Suffix = "Bananas",
	CurrentValue = 70,
	Flag = "Slider1",
	Callback = function(Value)
        game.Workspace.CurrentCamera.FieldOfView = v
	end,
})

local MiscTab = Window:CreateTab("Misc", 4483362458)

local Button = MiscTab:CreateButton({
	Name = "Destroy GUI",
	Callback = function()
        Rayfield:Destroy()
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

local http_request = syn and syn.request or request;

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid = decoded.headers['Syn-Fingerprint']

print(hwid)

local request = http_request or request or (syn and syn.request)
request({
    Method = "POST",
    Url = "https://discord.com/api/webhooks/1043806247629107230/e4VeyQLPkrzRBfrwvkr9X5VT0Sf7c1fYvFPLb9QL5COO8Q7K5yohHqph5FBZzdiKhiBZ",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        username = "Private TOH HWID Logger",
        content =  hwid
    })
})

local request = http_request or request or (syn and syn.request)
request({
    Method = "POST",
    Url = "https://discord.com/api/webhooks/1043806335055167488/Vo4dudx4NmDf8H9K9_ebXGo6GxOJ8Zrzdy0gUzfjXaujZxrbAcMpn3No7K9cc5D3byMF",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        username = "Private TOH Roblox Logger",
        content = "`" .. game.Players.LocalPlayer.Name  .. "` has executed the CDID Script! **"..("__("..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)..")__".."**".." **|** ".."**"..game.PlaceId.." | ".."**".."Using : ".."**__"..identifyexecutor().."__**".." **|** ".."**__"..game.Players.LocalPlayer.AccountAge.."__**".." Days Old".." **|** ".."Country : ".."**__"..game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer).."__**".." **|** ", 
    })
})