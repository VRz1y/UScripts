local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("---UScript---", "RJTheme1")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Player(int)")
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


local Section = Tab:NewSection("Player(hack)")
Section:NewButton("InfJump", "Inf and jump...", function()
    game:GetService("UserInputService").JumpRequest:connect(function()
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
end)
Section:NewButton("ESP", "All players turn on the disco :D\n(CAN LOWER FPS!)", function()
    while wait(0.5) do

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


Section:NewButton("GodMode", "GiveYouInfHp", function()
	while true do wait(0)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = inf ---------------------------------------
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid.Health = inf
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
Section:NewButton("AutoClicker", "ByEzpi", function()
    --// Credits \\--
--[[ Ezpi#0474 - Creator of this script ]]--

--// Services \\--
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local Enabled = false
local Mouse = Player:GetMouse()
local X, Y = 0, 0
local LastC = Color3.new(1, 0, 0)
local LastU = tick()

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window = Library:CreateWindow("---UAutoClicker---")
Enabled_1 = Window:AddColor({
    text = 'Status:',
    flag = "Ezpi_1",
    color = Color3.new(1, 0, 0),
    callback = function(A_1)
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last or A_1 ~= NewColor then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
    end
})
Window:AddBind({
    text = 'Toggle',
    callback = function()
        -- Toggle
        Enabled = not Enabled
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
        -- Click Position
        if Enabled then
            -- Update Mouse Pos
            X, Y = Mouse.X, Mouse.Y + 10
            -- Update Box
            Box_1:SetValue()
        else
            X, Y = 0, 0
            Box_1:SetValue()
        end
        -- AutoClick
        while Enabled do
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
            wait(Library.flags.Interval)
        end
    end
})
Window:AddSlider({
    text = 'Interval',
    min = 0.01,
    max = 2,
    value = 1,
    float = 0.01
})
Box_1 = Window:AddBox({
    text = "AutoClick Position:",
    value = "X: " .. X .. ", Y: " .. Y,
    callback = function()
        if tick()-LastU > 0.1 then
            LastU = tick()
            Box_1:SetValue("X: " .. X .. ", Y: " .. Y)
        end
    end
})
Library:Init()
end)


local Tab = Window:NewTab("Creators")
local Section = Tab:NewSection("Coder: VRziy (@PROROGS_99999)")
local Section = Tab:NewSection("Tester: VRziy (@PROROGS_99999)")
local Section = Tab:NewSection("Cheat final version 22.9.2022")
Section:NewButton("ChatSpam", "PleaseTapThisButton!", function()
        while true do wait(0) 
    local A_1 = "Download: UCheat (BEST SCRIPT FOR ROBLOX!)" local A_2 = "All" 
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) end
end)

Section:NewTextBox("YourChatSpam", "WriteYourSpam", function(txt)
        while true do wait(0)
	local A_1 = txt local A_2 = "All" 
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) end
end)

