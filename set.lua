local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local button = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.182384551, 0, 0.174563587, 0)
Frame.Size = UDim2.new(0, 295, 0, 173)
UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = Frame
Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Text.Size = UDim2.new(0, 295, 0, 42)
Text.Font = Enum.Font.FredokaOne
Text.Text = "How to Get key?"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 30.000
Text.TextWrapped = true
UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = Text
Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.Position = UDim2.new(0.159322038, 0, 0.346820831, 0)
Button.Size = UDim2.new(0, 200, 0, 35)
Button.Font = Enum.Font.FredokaOne
Button.Text = "Tutorial"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 24.000
UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = Button
button.Name = "button"
button.Parent = Frame
button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
button.Position = UDim2.new(0.159322038, 0, 0.635838151, 0)
button.Size = UDim2.new(0, 200, 0, 35)
button.Font = Enum.Font.FredokaOne
button.Text = "Discord"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 24.000
UICorner_4.CornerRadius = UDim.new(0, 16)
UICorner_4.Parent = button
Button.MouseButton1Down:connect(function()
    setclipboard("Not have video tutorial yet.")
    Button.Text = "Link Copied!"
    wait(2)
    Button.Text = "Tutorial"
end)

button.MouseButton1Down:connect(function()
    setclipboard("https://discord.gg/hEQUXRdFRv")
    button.Text = "Link Copied!"
    wait(2)
    button.Text = "Discord"
end)
wait()
local t = 1 -- 1=open, 2=close
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(inputObject, processed)
    if inputObject.KeyCode == Enum.KeyCode.RightAlt then
        if t == 1 then
            t = 2
            Frame.Visible = false
        else
            t = 1
            Frame.Visible = true
        end
    end
end)
