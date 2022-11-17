getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Southwest Florida [V0.1]",
	LoadingTitle = "Loading Cheat...",
	LoadingSubtitle = "by ! Enz#6969",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = SWFLPrivate,
		FileName = "SWFLPrivateConfig"
	},
        Discord = {
        	Enabled = false,
        	Invite = "",
        	RememberJoins = false
        },
	KeySystem = true,
	KeySettings = {
		Title = "SWFL Private",
		Subtitle = "Key System",
		Note = "Ask ! Ly#0010 for key",
		FileName = "SWFLPrivateKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "SWFL"
	}
})

local LocalPlayerTab = Window:CreateTab("LocalPlayer", 4483362458)

local Slider = LocalPlayerTab:CreateSlider({
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
local Slider = LocalPlayerTab:CreateSlider({
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
local Button = LocalPlayerTab:CreateButton({
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

local CarTab = Window:CreateTab("Troll", 4483362458)

local MiscTab = Window:CreateTab("Misc", 4483362458)