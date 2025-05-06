local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local DiscordLabel = Instance.new("TextLabel")
local BondsLabel = Instance.new("TextLabel")
local CreditsLabel = Instance.new("TextLabel")
local StatusLabel = Instance.new("TextLabel")

ScreenGui.Name = "LockedScreenGUI"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui") -- Uses CoreGui
ScreenGui.Enabled = true -- **Ensures GUI is visible**

Frame.Size = UDim2.new(1, 0, 1, 0) -- Fullscreen
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Solid black

TitleLabel.Parent = Frame
TitleLabel.Size = UDim2.new(1, 0, 0.1, 0) -- Top 5% of screen
TitleLabel.Position = UDim2.new(0, 0, 0.05, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "RINGTA BOND FARM 5%"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true

DiscordLabel.Parent = Frame
DiscordLabel.Size = UDim2.new(1, 0, 0.1, 0) -- Middle 50% of screen
DiscordLabel.Position = UDim2.new(0, 0, 0.5, 0)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Text = "discord.gg/ringta"
DiscordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLabel.TextScaled = true

BondsLabel.Parent = Frame
BondsLabel.Size = UDim2.new(1, 0, 0.1, 0) -- Bottom 90% of screen
BondsLabel.Position = UDim2.new(0, 0, 0.9, 0)
BondsLabel.BackgroundTransparency = 1
BondsLabel.Text = "0 bonds collected"
BondsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
BondsLabel.TextScaled = true

CreditsLabel.Parent = Frame
CreditsLabel.Size = UDim2.new(1, 0, 0.1, 0) -- 40% screen height
CreditsLabel.Position = UDim2.new(0, 0, 0.4, 0)
CreditsLabel.BackgroundTransparency = 1
CreditsLabel.Text = "Made by Ringta and Akundisco"
CreditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsLabel.TextScaled = true

StatusLabel.Parent = Frame
StatusLabel.Size = UDim2.new(1, 0, 0.1, 0) -- 70% screen height
StatusLabel.Position = UDim2.new(0, 0, 0.7, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Getting ready to collect bonds"
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextScaled = true

-- Dynamic Status Updates
task.spawn(function()
    task.wait(1) -- At 1 second, update text
    StatusLabel.Text = "Getting ready to collect bonds"

    task.wait(10) -- At 11 seconds, update text
    StatusLabel.Text = "Collecting bonds"

    task.wait(69) -- At 80 seconds, update text
    StatusLabel.Text = "Restarting script soon"
end)

-- Bonds Collection Logic
local bonds = 1
local targetBonds = math.random(70, 90) -- Random target between 70-90 bonds
local totalTime = 85 -- Total time to reach the target (seconds)
local interval = totalTime / (targetBonds - bonds) -- Calculate interval for gradual climb

task.spawn(function()
    task.wait(12) -- Start at 12 seconds
    while bonds < targetBonds do
        task.wait(interval)
        bonds = math.min(bonds + math.random(2, 5), targetBonds)
        BondsLabel.Text = tostring(bonds) .. " bonds collected"
    end
end)
