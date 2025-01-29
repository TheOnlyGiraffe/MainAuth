local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

-- Parent the UI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "DiscordUI"

-- Frame Setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.4, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)

-- Gradient Effect
UIGradient.Parent = Frame
UIGradient.Rotation = 45
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25))
}

-- Title Label
Title.Parent = Frame
Title.Text = "Join the Discord for the Script!"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Size = UDim2.new(1, 0, 0.5, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold

-- Copy Button
CopyButton.Parent = Frame
CopyButton.Text = "Copy Discord"
CopyButton.TextScaled = true
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Size = UDim2.new(0.8, 0, 0.3, 0)
CopyButton.Position = UDim2.new(0.1, 0, 0.6, 0)
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CopyButton.Font = Enum.Font.GothamBold

-- Button Rounded Corners
UICorner.Parent = CopyButton
UICorner.CornerRadius = UDim.new(0, 8)

-- Button Functionality
CopyButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/3dFjP68vYg") -- Replace with your Discord invite link
    CopyButton.Text = "Copied!"
    wait(1)
    CopyButton.Text = "Copy Discord"
end)
