-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CrimTPButton = Instance.new("TextButton")
local CafeTPButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local OpenButton = Instance.new("TextButton")

local UICornerMain = Instance.new("UICorner")
local UICornerCrim = Instance.new("UICorner")
local UICornerCafe = Instance.new("UICorner")
local UICornerOpen = Instance.new("UICorner")

-- Parent to CoreGui
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "HawzhirHub"

-- Main Frame (Menu)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 260, 0, 190)
MainFrame.Active = true
MainFrame.Draggable = true

UICornerMain.CornerRadius = UDim.new(0, 10)
UICornerMain.Parent = MainFrame

-- Title
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "HAWZHIR HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button (X)
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.TextSize = 20

-- Teleport to Criminal Base Button
CrimTPButton.Name = "CrimTPButton"
CrimTPButton.Parent = MainFrame
CrimTPButton.BackgroundColor3 = Color3.fromRGB(200, 35, 35)
CrimTPButton.Position = UDim2.new(0.08, 0, 0.28, 0)
CrimTPButton.Size = UDim2.new(0.84, 0, 0.30, 0)
CrimTPButton.Font = Enum.Font.SourceSansBold
CrimTPButton.Text = "Teleport to Criminal Base"
CrimTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CrimTPButton.TextSize = 15

UICornerCrim.CornerRadius = UDim.new(0, 8)
UICornerCrim.Parent = CrimTPButton

-- Teleport to Cafeteria Button
CafeTPButton.Name = "CafeTPButton"
CafeTPButton.Parent = MainFrame
CafeTPButton.BackgroundColor3 = Color3.fromRGB(35, 100, 200)
CafeTPButton.Position = UDim2.new(0.08, 0, 0.62, 0)
CafeTPButton.Size = UDim2.new(0.84, 0, 0.30, 0)
CafeTPButton.Font = Enum.Font.SourceSansBold
CafeTPButton.Text = "Teleport to Cafeteria"
CafeTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CafeTPButton.TextSize = 15

UICornerCafe.CornerRadius = UDim.new(0, 8)
UICornerCafe.Parent = CafeTPButton

-- Minimized Open Button (HB)
OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
OpenButton.Position = UDim2.new(0.1, 0, 0.2, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Font = Enum.Font.SourceSansBold
OpenButton.Text = "HB"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextSize = 20
OpenButton.Visible = false
OpenButton.Active = true
OpenButton.Draggable = true

UICornerOpen.CornerRadius = UDim.new(0, 10)
UICornerOpen.Parent = OpenButton

-- Criminal Teleport Action
CrimTPButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 94, 2055)
    end
end)

-- Cafeteria Teleport Action (شوێنی کافتریای زیندان)
CafeTPButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(961, 100, 2281)
    end
end)

-- Minimize Menu Action
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    OpenButton.Visible = true
end)

-- Open Menu Action
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    OpenButton.Visible = false
end)
