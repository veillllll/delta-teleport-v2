--// VINCENT SUKA MATCHA - PLAYER TELEPORT GUI
--// Delta Executor

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local HIDE_KEY = Enum.KeyCode.RightShift
local BACKGROUND_IMAGE = "rbxassetid://83700649049998"

--// GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeltaTeleportGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui")

--// Main Frame
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 240, 0, 135)
Main.Position = UDim2.new(0.5, -120, 0.5, -67)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = Main

--// Background
local Background = Instance.new("ImageLabel")
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundTransparency = 1
Background.Image = BACKGROUND_IMAGE
Background.ScaleType = Enum.ScaleType.Crop
Background.Parent = Main

local BackgroundCorner = Instance.new("UICorner")
BackgroundCorner.CornerRadius = UDim.new(0, 10)
BackgroundCorner.Parent = Background

--// Dark Overlay
local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.35
Overlay.BorderSizePixel = 0
Overlay.Parent = Main

local OverlayCorner = Instance.new("UICorner")
OverlayCorner.CornerRadius = UDim.new(0, 10)
OverlayCorner.Parent = Overlay

--// Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -45, 0, 35)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "VINCENT SUKA MATCHA"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Main

--// Main Close Button
local CloseMain = Instance.new("TextButton")
CloseMain.Size = UDim2.new(0, 28, 0, 28)
CloseMain.Position = UDim2.new(1, -33, 0, 4)
CloseMain.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
CloseMain.Text = "X"
CloseMain.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseMain.TextSize = 14
CloseMain.Font = Enum.Font.GothamBold
CloseMain.Parent = Main

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseMain

--// Players Button
local PlayersButton = Instance.new("TextButton")
PlayersButton.Size = UDim2.new(0, 185, 0, 40)
PlayersButton.Position = UDim2.new(0.5, -92, 0.5, -2)
PlayersButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlayersButton.BackgroundTransparency = 0.15
PlayersButton.Text = "[ Players ]"
PlayersButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayersButton.TextSize = 14
PlayersButton.Font = Enum.Font.GothamBold
PlayersButton.Parent = Main

local PlayersCorner = Instance.new("UICorner")
PlayersCorner.CornerRadius = UDim.new(0, 8)
PlayersCorner.Parent = PlayersButton

--// Player List Frame
local PlayerList = Instance.new("Frame")
PlayerList.Size = UDim2.new(0, 240, 0, 270)
PlayerList.Position = UDim2.new(0.5, -120, 0.5, -135)
PlayerList.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
PlayerList.BackgroundTransparency = 0.05
PlayerList.BorderSizePixel = 0
PlayerList.Visible = false
PlayerList.ZIndex = 10
PlayerList.Parent = ScreenGui

local ListCorner = Instance.new("UICorner")
ListCorner.CornerRadius = UDim.new(0, 10)
ListCorner.Parent = PlayerList

--// Player List Title
local ListTitle = Instance.new("TextLabel")
ListTitle.Size = UDim2.new(1, -45, 0, 35)
ListTitle.Position = UDim2.new(0, 10, 0, 0)
ListTitle.BackgroundTransparency = 1
ListTitle.Text = "SELECT PLAYER"
ListTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ListTitle.TextSize = 14
ListTitle.Font = Enum.Font.GothamBold
ListTitle.TextXAlignment = Enum.TextXAlignment.Left
ListTitle.ZIndex = 11
ListTitle.Parent = PlayerList

--// Player List Close
local CloseList = Instance.new("TextButton")
CloseList.Size = UDim2.new(0, 28, 0, 28)
CloseList.Position = UDim2.new(1, -33, 0, 4)
CloseList.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
CloseList.Text = "X"
CloseList.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseList.TextSize = 14
CloseList.Font = Enum.Font.GothamBold
CloseList.ZIndex = 11
CloseList.Parent = PlayerList

local ListCloseCorner = Instance.new("UICorner")
ListCloseCorner.CornerRadius = UDim.new(0, 7)
ListCloseCorner.Parent = CloseList

--// Search Box
local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(1, -20, 0, 32)
SearchBox.Position = UDim2.new(0, 10, 0, 38)
SearchBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SearchBox.BackgroundTransparency = 0.05
SearchBox.BorderSizePixel = 0
SearchBox.PlaceholderText = "Cari player..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextSize = 13
SearchBox.Font = Enum.Font.Gotham
SearchBox.ClearTextOnFocus = false
SearchBox.ZIndex = 11
SearchBox.Parent = PlayerList

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 7)
SearchCorner.Parent = SearchBox

--// Scrolling Player List
local Scrolling = Instance.new("ScrollingFrame")
Scrolling.Size = UDim2.new(1, -20, 1, -82)
Scrolling.Position = UDim2.new(0, 10, 0, 76)
Scrolling.BackgroundTransparency = 1
Scrolling.BorderSizePixel = 0
Scrolling.ScrollBarThickness = 4
Scrolling.CanvasSize = UDim2.new(0, 0, 0, 0)
Scrolling.ZIndex = 11
Scrolling.Parent = PlayerList

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0, 5)
Layout.SortOrder = Enum.SortOrder.Name
Layout.Parent = Scrolling

local Padding = Instance.new("UIPadding")
Padding.PaddingTop = UDim.new(0, 3)
Padding.PaddingBottom = UDim.new(0, 3)
Padding.Parent = Scrolling

--// Update Canvas
local function UpdateCanvas()
    Scrolling.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 8)
end

Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateCanvas)

--// Teleport To Player
local function TeleportToPlayer(targetPlayer)
    if not targetPlayer or targetPlayer == LocalPlayer then
        return
    end

    local character = LocalPlayer.Character
    local targetCharacter = targetPlayer.Character

    if character and targetCharacter then
        local root = targetCharacter:FindFirstChild("HumanoidRootPart")
        if root then
            character:PivotTo(root.CFrame + Vector3.new(0, 3, 0))
        end
    end
end

--// Refresh Player List
local function RefreshPlayers()
    local query = string.lower(SearchBox.Text or "")

    for _, child in ipairs(Scrolling:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local displayName = string.lower(player.DisplayName)
            local username = string.lower(player.Name)

            if query == ""
                or string.find(displayName, query, 1, true)
                or string.find(username, query, 1, true) then

                local PlayerButton = Instance.new("TextButton")
                PlayerButton.Size = UDim2.new(1, -5, 0, 36)
                PlayerButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                PlayerButton.BackgroundTransparency = 0.1
                PlayerButton.Text = player.DisplayName .. "  @" .. player.Name
                PlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerButton.TextSize = 12
                PlayerButton.Font = Enum.Font.Gotham
                PlayerButton.ZIndex = 12
                PlayerButton.Parent = Scrolling

                local ButtonCorner = Instance.new("UICorner")
                ButtonCorner.CornerRadius = UDim.new(0, 6)
                ButtonCorner.Parent = PlayerButton

                PlayerButton.MouseButton1Click:Connect(function()
                    TeleportToPlayer(player)
                end)
            end
        end
    end

    UpdateCanvas()
end

--// Open Player List
PlayersButton.MouseButton1Click:Connect(function()
    PlayerList.Visible = not PlayerList.Visible
    if PlayerList.Visible then
        SearchBox.Text = ""
        RefreshPlayers()
    end
end)

--// Search
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    if PlayerList.Visible then
        RefreshPlayers()
    end
end)

--// Close Player List
CloseList.MouseButton1Click:Connect(function()
    PlayerList.Visible = false
end)

--// Close Entire GUI
CloseMain.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

--// Refresh when players join
Players.PlayerAdded:Connect(function()
    if PlayerList.Visible then
        RefreshPlayers()
    end
end)

--// Refresh when players leave
Players.PlayerRemoving:Connect(function()
    if PlayerList.Visible then
        RefreshPlayers()
    end
end)

--// Dragging Main GUI
local dragging = false
local dragStart
local startPos
local dragInput

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

--// RightShift Hide / Show
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.KeyCode == HIDE_KEY then
        Main.Visible = not Main.Visible

        if not Main.Visible then
            PlayerList.Visible = false
        end
    end
end)
