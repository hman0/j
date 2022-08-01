-- Variables:

local toggled = false

-- Instances:

local Toggle3DRendering = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

Toggle3DRendering.Name = "Toggle3DRendering"
Toggle3DRendering.Parent = game.CoreGui
Toggle3DRendering.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Toggle3DRendering
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(138, 0, 0)
Frame.BorderSizePixel = 8
Frame.Position = UDim2.new(0.726322234, 0, 0.455324411, 0)
Frame.Size = UDim2.new(0, 251, 0, 72)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 251, 0, 72)
TextButton.Font = Enum.Font.Bangers
TextButton.Text = "Toggle Rendering"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 36.000
TextButton.TextStrokeTransparency = 0.880
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
	if toggled == false then
		game:GetService("RunService"):Set3dRenderingEnabled(false)
		
		Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Frame.BorderColor3 = Color3.fromRGB(0, 138, 0)
		
		toggled = true
	else 
		game:GetService("RunService"):Set3dRenderingEnabled(true)

		Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Frame.BorderColor3 = Color3.fromRGB(138, 0, 0)

		toggled = false
	end
end)