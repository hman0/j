--outside prison spawn
local spawn1 = Instance.new("Part")    

spawn1.Anchored = true
spawn1.Position = Vector3.new(-1212, 19, -1550)
spawn1.Parent = workspace


--inside prison spawn
local spawn2 = Instance.new("Part")    

spawn2.Anchored = true
spawn2.Position = Vector3.new(-1164, 19, -1593)
spawn2.Parent = workspace


--kill player
spawn1.Touched:Connect(function(Hit)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

spawn2.Touched:Connect(function(Hit)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)