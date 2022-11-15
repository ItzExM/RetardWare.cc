if game.ServerID == 706511299838351
repeat wait() until game:IsLoaded()
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "CDID Private",
	LoadingTitle = "Loading...",
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
	KeySystem = true,
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

local AutofarmTab = Window:CreateTab("Autofarm", 4483362458)
local ESPTab = Window:CreateTab("ESP", 4483362458)
local Tab = Window:CreateTab("Teleport", 4483362458)
