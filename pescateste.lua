repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

print("[AutoFish] Rodando... Aguardando UI de pesca.")

-- detecta mudanças na interface
local function scan()
    for _, v in ipairs(gui:GetDescendants()) do
        if v.Visible == true then
            if v:IsA("TextButton") or v:IsA("ImageButton") then
                if v.AbsoluteSize.X > 40 and v.AbsoluteSize.Y > 20 then
                    pcall(function()
                        v:Activate()
                        print("[AutoFish] Clicado em:", v.Name)
                    end)
                end
            end
        end
    end
end

while task.wait(0.05) do
    scan()
end
