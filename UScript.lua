local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("---UScript---", "RJTheme1")
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewSlider("SpeedHack", "0 minSpeed-1000 maxSpeed", 1000, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpHack", "0 minJump-1000 maxJump", 1000, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewSlider("GravityHack", "0 minGrav-1000 maxGrav", 1000, 0, function(s) 
    game.Workspace.Gravity = s

end)
Section:NewSlider("HeightHack", "0 minH-300 maxH", 300, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = s

end)
Section:NewButton("InfJump", "Inf and jump...", function()
    game:GetService("UserInputService").JumpRequest:connect(function()
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
end)

Section:NewButton("ClickTp", "Give you item 'Click teleport'\n(Doesn't work in all games)", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack

end)

local Tab = Window:NewTab("Render")
local Section = Tab:NewSection("ESP")
Section:NewToggle("ESP On/Off", "This feature lowers fps!!!", function(esptoggle)
    if esptoggle then
    espon = 1
            while wait(0.5) do
    if espon == 1 then
        for i, neko in ipairs(workspace:GetDescendants()) do
            if neko:FindFirstChild("Humanoid") then
                if not neko:FindFirstChild("EspBox") then
                    if neko ~= game.Players.LocalPlayer.Character then
                        local esp = Instance.new("BoxHandleAdornment", neko)
                        esp.Adornee = neko
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 2)
                        esp.Transparency = 0.40
                        esp.Color3 = Color3.fromRGB(205,38,38)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                    end
                end
            end
        end
    end
end
    else
        espon = 0
    end
end)






local Tab = Window:NewTab("Other")
local Section = Tab:NewSection("Other")
Section:NewButton("ResetCharacter", "KillYou", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
Section:NewButton("ReJoin", "Reconnection", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

local Section = Tab:NewSection("SPAM!")
Section:NewTextBox("ChatSpam", "WriteYourSpam", function(spamg)
        while true do wait(0)
    if spam == 1 then
    local A_1 = spamg local A_2 = "All" 
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) end end
end)

Section:NewToggle("Spam ON/OFF", "SPAM SPAM SPAM PAM", function(spame)
    if spame then
        spam = 1
    else
        spam = 0
    end
end)

local Section = Tab:NewSection("SPAM IN CONSOLE!")
Section:NewTextBox("ConSpam", "WriteYourSpam", function(conspam)
        while true do wait(0)
    if conspamint == 1 then

    print(conspam)
end
end
end)
Section:NewToggle("ConSpam ON/OFF", "SPAM SPAM SPAM PAM", function(spame)
    if spame then
        conspamint = 1
    else
        conspamint = 0
    end
end)
local Tab = Window:NewTab("LOGS")
local Section = Tab:NewSection("23.9.2022")
Section:NewButton("Add A New Section 'LOGS'", "!!!", function()
end)
Section:NewButton("Add A spam in console", "!!!", function()
end)
Section:NewToggle("AddToggle", "I Add Toggles", function(log)
    if log then

    else

    end
end)
local Tab = Window:NewTab("Creators")
local Section = Tab:NewSection("Coder: VRziy (@PROROGS_99999)")
local Section = Tab:NewSection("Tester: WEAW (@VRziy_99999)")
local Section = Tab:NewSection("Cheat final version 23.9.2022")
