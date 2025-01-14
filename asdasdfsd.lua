loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
print('made by c2vp/////////')

local function bypasser(input)
local mapping = {
    a = "а̯̻", b = "ƅ̯̻", c = "ᴄ̯̻", d = "d̯̻", e = "e̯̻", f = "f̯̻", g = "ɡ̯̻",
    h = "ḥ̯̻", i = "i̯̻", j = "ј̯̻", k = "ḳ̯̻", l = "l̯̻", m = "m̯̻", n = "n̯̻",
    o = "ο̯̻", p = "р̯̻", q = "q̯̻", r = "ɾ̯̻", s = "ѕ̯̻", t = "ṭ̯̻", u = "ụ̯̻",
    v = "ν̯̻", w = "w̯̻", x = "х̯̻", y = "у̯̻", z = "z̯̻", 
    A = "А̯̻", B = "В̯̻", C = "С̯̻", D = "Ɗ̯̻", E = "Е̯̻", F = "F̯̻", G = "Ġ̯̻",
    H = "Ӊ̯̻", I = "Ӏ̯̻", J = "Ј̯̻", K = "К̯̻", L = "L̯̻", M = "Ӎ̯̻", N = "Ņ̯̻",
    O = "О̯̻", P = "Р̯̻", Q = "Q̯̻", R = "Ṛ̯̻", S = "Ѕ̯̻", T = "Т̯̻", U = "Ụ̯̻",
    V = "V̯̻", W = "W̯̻", X = "Х̯̻", Y = "У̯̻", Z = "Z̯̻", ["1"] = "1̯̻",
    ["2"] = "2̯̻", ["3"] = "3̯̻", ["4"] = "Ӌ̯̻", ["5"] = "5̯̻", ["6"] = "6̯̻",
    ["7"] = "7̯̻", ["8"] = "8̯̻", ["9"] = "9̯̻", ["0"] = "0̯̻", ["!"] = "!̯̻",
    ["?"] = "?̯̻"
}

    return input:gsub(".", function(c)
        return mapping[c] or c
    end)
end

local screenGui = script.Parent
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 350, 0, 300)
frame.Position = UDim2.new(0.5, -175, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
frame.Active = true
frame.Draggable = true

local nineteendollafortnitecard = Instance.new("TextBox", frame)
nineteendollafortnitecard.Size = UDim2.new(0.8, 0, 0.2, 0)
nineteendollafortnitecard.Position = UDim2.new(0.1, 0, 0.1, 0)
nineteendollafortnitecard.PlaceholderText = "enter text here"
nineteendollafortnitecard.Text = ""
nineteendollafortnitecard.TextScaled = true
nineteendollafortnitecard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local idontfuckingknowwtf = Instance.new("TextLabel", frame)
idontfuckingknowwtf.Size = UDim2.new(0.8, 0, 0.2, 0)
idontfuckingknowwtf.Position = UDim2.new(0.1, 0, 0.4, 0)
idontfuckingknowwtf.Text = "c2vp was here"
idontfuckingknowwtf.TextScaled = true
idontfuckingknowwtf.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
idontfuckingknowwtf.TextWrapped = true

local chatbutton = Instance.new("TextButton", frame)
chatbutton.Size = UDim2.new(0.4, 0, 0.15, 0)
chatbutton.Position = UDim2.new(0.5, 0, 0.7, 0)
chatbutton.Text = "chat"
chatbutton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)

local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0.2, 0, 0.2, 0)
closeButton.Position = UDim2.new(0.9, -60, 0, 10)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)

closeButton.MouseButton1Click:Connect(function()
    frame:Destroy()
end)

nineteendollafortnitecard:GetPropertyChangedSignal("Text"):Connect(function()
    idontfuckingknowwtf.Text = bypasser(nineteendollafortnitecard.Text)
end)

chatbutton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local chatMessage = idontfuckingknowwtf.Text
    if chatMessage ~= "made by c2vp" and chatMessage ~= "" then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatMessage, "All")
    else
        warn("no text? (no bitches?)")
    end
end)
