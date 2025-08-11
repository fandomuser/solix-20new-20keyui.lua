repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local creatorId = game.CreatorId
print("CreatorId:", creatorId)
local scriptUrl = getScriptLoaderUrl()
print("Script URL:", scriptUrl)

local function createNotification(title, content, duration, color, parent)
    duration = duration or 5
    color = color or Color3.fromRGB(255, 188, 254)
    
    local Notification = Instance.new("Frame")
    Notification.Name = "Notification"
    Notification.AnchorPoint = Vector2.new(1, 1)
    Notification.BackgroundTransparency = 0.06
    Notification.AutomaticSize = Enum.AutomaticSize.XY
    Notification.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(1, -25, 1, -25)
    Notification.Size = UDim2.fromOffset(232, 59)
    Notification.Parent = parent
    
    local NotifStroke = Instance.new("UIStroke")
    NotifStroke.Name = "_CHILD"
    NotifStroke.Color = Color3.fromRGB(158, 114, 158)
    NotifStroke.Transparency = 0.9
    NotifStroke.Parent = Notification
    
    local NotifAcrylic1 = Instance.new("ImageLabel")
    NotifAcrylic1.Name = "acrylicthing"
    NotifAcrylic1.Image = "rbxassetid://9968344105"
    NotifAcrylic1.ImageTransparency = 0.98
    NotifAcrylic1.ScaleType = Enum.ScaleType.Tile
    NotifAcrylic1.TileSize = UDim2.fromOffset(128, 128)
    NotifAcrylic1.BackgroundTransparency = 1
    NotifAcrylic1.Size = UDim2.fromScale(1, 1)
    
    local NotifAcrylicCorner1 = Instance.new("UICorner")
    NotifAcrylicCorner1.CornerRadius = UDim.new(0, 12)
    NotifAcrylicCorner1.Parent = NotifAcrylic1
    
    NotifAcrylic1.Parent = Notification
    
    local NotifAcrylic2 = Instance.new("ImageLabel")
    NotifAcrylic2.Name = "acrylicthing"
    NotifAcrylic2.Image = "rbxassetid://9968344227"
    NotifAcrylic2.ImageTransparency = 0.9
    NotifAcrylic2.ScaleType = Enum.ScaleType.Tile
    NotifAcrylic2.TileSize = UDim2.fromOffset(128, 128)
    NotifAcrylic2.BackgroundTransparency = 1
    NotifAcrylic2.Size = UDim2.fromScale(1, 1)
    
    local NotifAcrylicCorner2 = Instance.new("UICorner")
    NotifAcrylicCorner2.CornerRadius = UDim.new(0, 12)
    NotifAcrylicCorner2.Parent = NotifAcrylic2
    
    NotifAcrylic2.Parent = Notification
    
    local TextHolder = Instance.new("Frame")
    TextHolder.Name = "TextHolder"
    TextHolder.AutomaticSize = Enum.AutomaticSize.XY
    TextHolder.BackgroundTransparency = 1
    TextHolder.Position = UDim2.new(0, 7, 0.12, 0)
    TextHolder.Size = UDim2.fromOffset(20, 12)
    
    local TextLayout = Instance.new("UIListLayout")
    TextLayout.Padding = UDim.new(0, -4)
    TextLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TextLayout.Parent = TextHolder
    
    local TitleText = Instance.new("TextLabel")
    TitleText.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold)
    TitleText.Text = title
    TitleText.TextColor3 = Color3.fromRGB(199, 199, 203)
    TitleText.TextSize = 14
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.AutomaticSize = Enum.AutomaticSize.X
    TitleText.BackgroundTransparency = 1
    TitleText.Position = UDim2.fromOffset(10, 8)
    TitleText.Size = UDim2.fromOffset(212, 20)
    TitleText.Parent = TextHolder
    
    local ContentText = Instance.new("TextLabel")
    ContentText.Name = "TextLabel"
    ContentText.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    ContentText.Text = content
    ContentText.TextColor3 = Color3.fromRGB(127, 127, 130)
    ContentText.TextSize = 12
    ContentText.TextXAlignment = Enum.TextXAlignment.Left
    ContentText.AutomaticSize = Enum.AutomaticSize.X
    ContentText.BackgroundTransparency = 1
    ContentText.Position = UDim2.fromOffset(10, 8)
    ContentText.Size = UDim2.fromOffset(212, 20)
    ContentText.Parent = TextHolder
    
    local TextPadding = Instance.new("UIPadding")
    TextPadding.PaddingBottom = UDim.new(0, 25)
    TextPadding.Parent = TextHolder
    
    TextHolder.Parent = Notification
    
    local ProgressBar = Instance.new("Frame")
    ProgressBar.BackgroundColor3 = Color3.fromRGB(44, 38, 44)
    ProgressBar.BorderSizePixel = 0
    ProgressBar.Position = UDim2.fromScale(0.0282, 0.8)
    ProgressBar.Size = UDim2.new(1, -20, 0, 7)
    
    local ProgressLayout = Instance.new("UIListLayout")
    ProgressLayout.Name = "UIListLayout"
    ProgressLayout.Wraps = true
    ProgressLayout.FillDirection = Enum.FillDirection.Horizontal
    ProgressLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ProgressLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    ProgressLayout.Parent = ProgressBar
    
    local ProgressFill = Instance.new("Frame")
    ProgressFill.BackgroundColor3 = color
    ProgressFill.BorderSizePixel = 0
    ProgressFill.Size = UDim2.fromScale(1, 1)
    
    local ProgressFillCorner = Instance.new("UICorner")
    ProgressFillCorner.Parent = ProgressFill
    
    local ProgressGradient = Instance.new("UIGradient")
    ProgressGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(0.752, Color3.fromRGB(147, 147, 147)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(127, 127, 127))
    }
    ProgressGradient.Parent = ProgressFill
    
    ProgressFill.Parent = ProgressBar
    
    local ProgressBarCorner = Instance.new("UICorner")
    ProgressBarCorner.Parent = ProgressBar
    
    ProgressBar.Parent = Notification
    
    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0, 4)
    NotifCorner.Parent = Notification
    
    local NotifPadding = Instance.new("UIPadding")
    NotifPadding.PaddingBottom = UDim.new(0, 12)
    NotifPadding.Parent = Notification
    
    local DismissButton = Instance.new("TextButton")
    DismissButton.Name = "DismissButton"
    DismissButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    DismissButton.BackgroundTransparency = 1
    DismissButton.Size = UDim2.fromScale(1, 1)
    DismissButton.Text = ""
    DismissButton.Parent = Notification
    
    TweenService:Create(ProgressFill, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 0, 1, 0)}):Play()
    
    task.delay(duration, function()
        TweenService:Create(Notification, TweenInfo.new(0.5), {Position = UDim2.new(1, 25, 1, -25)}):Play()
        task.wait(0.5)
        Notification:Destroy()
    end)
    
    DismissButton.MouseButton1Click:Connect(function()
        TweenService:Create(Notification, TweenInfo.new(0.5), {Position = UDim2.new(1, 25, 1, -25)}):Play()
        task.wait(0.5)
        Notification:Destroy()
    end)
    
    DismissButton.MouseEnter:Connect(function()
        TweenService:Create(DismissButton, TweenInfo.new(0.1), {BackgroundTransparency = 0.65}):Play()
    end)
    
    DismissButton.MouseLeave:Connect(function()
        TweenService:Create(DismissButton, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
    end)
    
    return Notification
end

local function getScriptLoaderUrl()
    local creatorId = game.CreatorId
    
    local scriptMap = {
        [4372130] = "https://api.luarmor.net/files/v3/loaders/e2718ddebf562c5c4080dfce26b09398.lua", -- Blox Fruits
        [11867394] = "https://api.luarmor.net/files/v3/loaders/98f5c64a0a9ecca29517078597bbcbdb.lua", -- Dead Rails
        [4294803] = "https://api.luarmor.net/files/v3/loaders/9b64d07193c7c2aef970d57aeb286e70.lua", -- Demonfall
        [1226491] = "https://api.luarmor.net/files/v3/loaders/fefdf5088c44beb34ef52ed6b520507c.lua", -- Shindo Life
        [2613928] = "https://api.luarmor.net/files/v3/loaders/0e0166cb8f3c5c189c6a1f2532db2125.lua", -- Counterblox
        [3229308] = "https://api.luarmor.net/files/v3/loaders/4b2841eb3e1345dd1aa50da164ca2bbe.lua", -- Grand Piece Online
        [7381705] = "https://api.luarmor.net/files/v3/loaders/8bbc8a7c4e023bc0c80799fec3233162.lua", -- Fisch
        [15557357] = "https://api.luarmor.net/files/v3/loaders/4fe2dfc202115670b1813277df916ab2.lua", -- JJI
        [1848960] = "https://api.luarmor.net/files/v3/loaders/9c916252a9f79bbf5a108f97c531e807.lua", -- MM2
        [3959677] = "https://api.luarmor.net/files/v3/loaders/e95ef6f27596e636a7d706375c040de4.lua", -- PS99
        [3461453] = "https://api.luarmor.net/files/v3/loaders/3bb7969a9ecb9e317b0a24681327c2e2.lua", -- Rivals
        [17219742] = "https://api.luarmor.net/files/v3/loaders/25116432b45b1a5ea7811c264a731941.lua", -- ANime Vanugard
        [3059674] = "https://api.luarmor.net/files/v3/loaders/21ad7f491e4658e9dc9529a60c887c6e.lua", -- Jailbreak
        [34644452] = "https://api.luarmor.net/files/v3/loaders/0c8fdf9bb25a6a7071731b72a90e3c69.lua", -- Arise Crossover
        [3333298] = "https://api.luarmor.net/files/v3/loaders/e1d276b47f79a40a336a530f3bd6268c.lua", -- Bobule gum
        [35789249] = "https://api.luarmor.net/files/v3/loaders/e4ea33e9eaf0ae943d59ea98f2444ebe.lua", -- Grow a garden
        [34160477] = "https://api.luarmor.net/files/v3/loaders/22843f88cd6ebbd164621b3c115446c8.lua", -- Ghoul RE
        [35289532] = "https://api.luarmor.net/files/v3/loaders/17c644b9b443899c429c51b2af748fc6.lua", -- Dig
        [2782840] = "https://api.luarmor.net/files/v3/loaders/b3400f5a4e28cad1e1110b45004c3837.lua", -- Build a boat
        [35330702] = "https://api.luarmor.net/files/v3/loaders/036786acbfa6e6e030dce074faa1173f.lua", -- Volleyball pldpaldwdwa
        [6042520] = "https://api.luarmor.net/files/v3/loaders/00e140acb477c5ecde501c1d448df6f9.lua", -- 99 Days in forest
        [35558055] = "https://api.luarmor.net/files/v3/loaders/ba4595cfb82d2434a478b9003f3674b4.lua", -- Build a Plane
        [32740991] = "https://api.luarmor.net/files/v3/loaders/646e60921195f2b2d59015703b0b100a.lua", -- Type Soul
    }
    
    return scriptMap[creatorId]
end

local function isGameSupported()
    return getScriptLoaderUrl() ~= nil
end

local function executeScript()
    local scriptUrl = getScriptLoaderUrl()
    
    if not scriptUrl then
        return false, "Game not supported"
    end
    
    local success, result = pcall(function()
        return loadstring(game:HttpGet(scriptUrl))()
    end)
    
    if not success then
        return false, "Failed to execute script: " .. tostring(result)
    end
    
    return true
end

local function main()
    local notifGui = Instance.new("ScreenGui")
    notifGui.Name = "NotificationGui"
    notifGui.ResetOnSpawn = false
    notifGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    notifGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    if not isGameSupported() then
        createNotification("Error", "This game is not supported by SolixHub.", 5, Color3.fromRGB(255, 85, 85), notifGui)
        task.delay(1, function()
            notifGui:Destroy()
        end)
        return false
    end
    
    local execSuccess, execError = executeScript()
    
    if not execSuccess then
        createNotification("Script Error", execError, 5, Color3.fromRGB(255, 85, 85), notifGui)
        task.delay(1, function()
            notifGui:Destroy()
        end)
        return false
    end
    
    createNotification("Success", "Script executed successfully!", 3, Color3.fromRGB(85, 255, 127), notifGui)
    task.delay(1, function()
        notifGui:Destroy()
    end)
    
    return true
end

local function executeScript()
    local scriptUrl = getScriptLoaderUrl()
    if not scriptUrl then
        return false, "Игра не поддерживается"
    end
    
    local success, result = pcall(function()
        local response = game:HttpGet(scriptUrl)
        if response:find("<!DOCTYPE html>") then
            error("Получен HTML-ответ, вероятно, ошибка сервера")
        end
        return loadstring(response)()
    end)
    
    if not success then
        return false, "Не удалось выполнить скрипт: " .. tostring(result)
    end
    
    return true
end

main()
