local Player = game.Players.LocalPlayer
local CoreGUI = Player.PlayerGui
local KickGUI = Instance.New("ScreenGUI",PlayerGUI)
KickGUI.Name = MainGUI
local KickFrame = Instance.New("Frame",CoreGUI.MainGUI)
KickFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
KickFrame.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
local TextLabel = Instance.New("TextLabel")
TextLabel.Parent = CoreGUI.MainGUI.KickFrame
TextLabel.Text = "Kick GUI"
TextLabel.Position = UDim2.new(1, 0, 1, 0)
local whotokick = Instance.New("TextBox",CoreGUI.MainGUI.KickFrame)
whotokick.Position = UDim2.new(0.5, 0, 0.5, 0)
whotokick.PlaceholderText = "insert username i guess"
whotokick.Text = ""
local KickButton = Instance.New("TextButton",CoreGUI.MainGUI.KickFrame)
KickButton.Position = UDim2.new(0.5, 0, 0.5, 0)
--actual scripts yay
local name = whotokick.Text
KickButton.MouseButton1Click:Connect(function()
local findplayer = game.Players:FindFirstChild(name)
local findplayer2 = game.workspace:FindFirstChild(name)
findplayer2:Remove()
findplayer:Remove()
end)
