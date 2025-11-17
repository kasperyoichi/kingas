-- Auto Fish King Legacy (Simples e Seguro)
-- By: você :)

repeat wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

print("[AutoFish] Iniciado.")

-- Função que tenta clicar automaticamente
local function tryClick()
    for _, v in pairs(gui:GetDescendants()) do
        if v:IsA("TextButton") or v:IsA("ImageButton") then
            if string.find(string.lower(v.Name), "fish") 
            or string.find(string.lower(v.Name), "click") 
            or string.find(string.lower(v.Name), "press") then
                if v.Visible == true then
                    pcall(function()
                        v:Activate()
                        print("[AutoFish] Clicou!", v.Name)
                    end)
                end
            end
        end
    end
end

-- Loop infinito de pesca
while true do
    tryClick()
    wait(0.05)  -- rápido mas seguro
end
