-- init
local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("Big paintball gui", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Big Paintball", 5012544693)
local section1 = page:addSection("Big Paintball ")
local section2 = page:addSection("Fun stuff")

section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
section1:addButton("Delete Spawn Protecters", function()
for i,v in pairs(game:GetService("Workspace").__MAP.SpawnShields:GetDescendants()) do 
    if v.Name == "Left" then 
        v:Destroy()
    end 
end 
for i,v in pairs(game:GetService("Workspace").__MAP.SpawnShields:GetDescendants()) do 
    if v.Name == "Right" then 
        v:Destroy()
    end 
end 
for i,v in pairs(game:GetService("Workspace").__MAP.SpawnShields:GetDescendants()) do 
    if v.Name == "Shield" then 
        v:Destroy()
    end 
    Print("Worked")
end 
end)

section2:addButton("Walk really fast", function()
local checks={ "Ammo", "ammo", "Damage", "damage", "Firerate", "firerate", "FireRate", "fireRate", "Recoil", "recoil", "Spread", "spread", "ability", "Ability" }
for i,v in pairs(getgc(true))do
  for x=1,#checks do
      if type(v)=="table" and rawget(v,checks[x]) then
          v.additionalSpeed=200
end
end
end
end)
section1:addButton("Hitbox expander (NOT WORKING FOR NOW)", function()
    while wait(0.5) do
        end
local cum = workspace:getDescendants()
for i=1,#cum do
if cum[i].Name == "Hitbox" then
if cum[i].Parent.Name ~= game.Players.LocalPlayer.name then
cum[i].Massless = true
cum[i].Size = Vector3.new(100,100,100)
cum[i].Transparency = 0.5
end
end
end
end)
