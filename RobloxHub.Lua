--WORK ONLY IN "KRNL" OR "Synapse X"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The Universal Dark Hub V.1 By @leolion44444", "Ocean")

-- MAIN
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")


Section:NewButton("Fly (Click Here)", "Make You Fly", function()
    loadstring(game:HttpGet('https://github.com/S-E-S-S-O/SimpleFly/blob/main/SimpleFly.lua'))()

    Fly(true)
end)

MainSection:NewToggle("Super-Humain", "Go Fast And High-Jump", function(state)
    if state then
        game.Players.LocalPlayer.Charactor.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Charactor.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Charactor.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Charactor.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("Infinite Yeild", "FE Admin Commands", function()
    loadstring(game:HttpGet(('https//raw.githubusercontent.com/EdgeIY/Infiniteyeild/master/source'),true))()
end)


--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Tab:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Choose Your Speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Choose Your JumpPower", 350, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Reset To All Defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)


--Others
local Others = Window:NewTab("Others")
local OthersSection = Tab:NewSection("Others")

OthersSection:NewButton("Chat Spoofer", "Lets You Chat For Others People !", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li')))
end)
