local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Seven7-lua/Roblox/refs/heads/main/Librarys/Orion/Orion.lua')))()
local Players, Stats, ReplicatedStorage, Workspace, RunService, SoundService, TweenService, CoreGui, UIS = 
    game:GetService("Players"), game:GetService("Stats"), game:GetService("ReplicatedStorage"), 
    game:GetService("Workspace"), game:GetService("RunService"), game:GetService("SoundService"), 
    game:GetService("TweenService"), game:GetService("CoreGui"), game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local rEvents = ReplicatedStorage:WaitForChild("rEvents", 10)
local equipPetEvent = rEvents and rEvents:WaitForChild("equipPetEvent", 5)
local rebirthRemote = rEvents and rEvents:WaitForChild("rebirthRemote", 5)
local machineRemote = rEvents and rEvents:WaitForChild("machineInteractRemote", 5)
local areaTravelRemote = rEvents and rEvents:WaitForChild("areaTravelRemote", 5)
local guiDamageEvent = rEvents and rEvents:WaitForChild("guiDamageEvent", 5)

local Window = OrionLib:MakeWindow({Name = "DEVIL HUB", SaveConfig = false, IntroText = "DEVIL HUB", IntroIcon = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)})

-- DAMAGE UI
local damageUIVisible = true
local damageScreenGui = Instance.new("ScreenGui", pcall(function() return CoreGui end) and CoreGui or PlayerGui)
damageScreenGui.Name, damageScreenGui.ResetOnSpawn = "DamageTrackerUI", false

local function formatNum(v)
    if type(v) ~= "number" then return tostring(v) end
    local a = math.abs(v)
    if a >= 1e21 then return string.format("%.2fSx", v/1e21) elseif a >= 1e18 then return string.format("%.2fQi", v/1e18)
    elseif a >= 1e15 then return string.format("%.2fQa", v/1e15) elseif a >= 1e12 then return string.format("%.2fT", v/1e12)
    elseif a >= 1e9 then return string.format("%.2fB", v/1e9) elseif a >= 1e6 then return string.format("%.2fM", v/1e6)
    elseif a >= 1e3 then return string.format("%.2fK", v/1e3) else return tostring(math.floor(v)) end
end

local function createDamageUI(dmg, isBoss)
    if not damageUIVisible then return end
    local card = Instance.new("Frame", damageScreenGui)
    card.Size, card.Position, card.BackgroundColor3, card.BackgroundTransparency = UDim2.new(0,220,0,60), UDim2.new(math.random(35,60)/100, 0, math.random(30,60)/100, 0), Color3.fromRGB(15,15,20), 0.15
    Instance.new("UICorner", card).CornerRadius = UDim.new(0,10)
    
    local stroke = Instance.new("UIStroke", card)
    stroke.Color, stroke.Thickness = isBoss and Color3.fromRGB(255,170,0) or Color3.fromRGB(255,60,60), 2

    local tLbl = Instance.new("TextLabel", card)
    tLbl.Size, tLbl.Position, tLbl.BackgroundTransparency, tLbl.Text, tLbl.TextColor3, tLbl.TextSize, tLbl.Font = UDim2.new(1,0,0.35,0), UDim2.new(0,0,0.05,0), 1, isBoss and "BOSS DAMAGE" or "DAMAGE DEALT", isBoss and Color3.fromRGB(255,200,100) or Color3.fromRGB(200,200,200), 12, Enum.Font.GothamBold

    local dLbl = Instance.new("TextLabel", card)
    dLbl.Size, dLbl.Position, dLbl.BackgroundTransparency, dLbl.Text, dLbl.TextColor3, dLbl.TextSize, dLbl.Font = UDim2.new(1,0,0.55,0), UDim2.new(0,0,0.4,0), 1, "-"..formatNum(dmg), isBoss and Color3.fromRGB(255,215,0) or Color3.fromRGB(255,85,85), 22, Enum.Font.GothamBlack

    local tw = TweenService:Create(card, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = card.Position + UDim2.new(0,0,0,-40)})
    tw:Play()
    task.delay(0.8, function()
        for _, obj in pairs({card, stroke, tLbl, dLbl}) do TweenService:Create(obj, TweenInfo.new(0.6), {Transparency = 1}):Play() end
        task.wait(0.6) card:Destroy()
    end)
end

if guiDamageEvent then
    guiDamageEvent.OnClientEvent:Connect(function(act, _, a2)
        if tonumber(a2) then createDamageUI(tonumber(a2), act == "bossDamageShow") end
    end)
end

-- GLOBALS & HELPERS
local fastStrengthSmooth, fastStrengthFast, autoRebirth, autoLeaveForBoss = false, false, false, true
_G.autoPunchActive = false
local previousStates = {StrSmooth = false, StrFast = false, FastReb = false}
local StrSmoothToggle, StrFastToggle, FastRebToggle, FastPunchToggle

local function setFastPunchState(st)
    _G.autoPunchActive = st
    if st then
        task.spawn(function()
            while _G.autoPunchActive do
                local bp = Player:FindFirstChild("Backpack")
                local p = bp and bp:FindFirstChild("Punch")
                if p then p.Parent = Player.Character if p:FindFirstChild("attackTime") then p.attackTime.Value = 0 end end
                task.wait()
            end
        end)
        task.spawn(function()
            while _G.autoPunchActive do
                local p = Player.Character and Player.Character:FindFirstChild("Punch")
                if p then p:Activate() end
                task.wait()
            end
        end)
    else
        local p = Player.Character and Player.Character:FindFirstChild("Punch")
        if p and Player:FindFirstChild("Backpack") then p.Parent = Player.Backpack end
    end
end

local lowPingTime = 0
local function getAdaptiveRepCount(target)
    local p = Stats.Network.ServerStatsItem:FindFirstChild("Data Ping")
    local ping = p and p:GetValue() or 0
    if ping >= 300 then lowPingTime = 0 return 10
    else if lowPingTime == 0 then lowPingTime = os.clock() end return (os.clock() - lowPingTime >= 2) and target or 10 end
end

local function unequipAllPets()
    if not equipPetEvent then return end
    local pf = Player:FindFirstChild("petsFolder") or Player:FindFirstChild("Pets")
    if pf then for _, h in pairs(pf:GetChildren()) do if h:IsA("Folder") then for _, j in pairs(h:GetChildren()) do equipPetEvent:FireServer("unequipPet", j) end end end end
    task.wait(0.1)
end

local function equipPets(list)
    if not equipPetEvent then return end
    unequipAllPets()
    local pf = Player:FindFirstChild("petsFolder") or Player:FindFirstChild("Pets")
    if not pf then return end
    for _, name in ipairs(list) do
        for _, f in pairs(pf:GetChildren()) do
            if f:IsA("Folder") then for _, p in pairs(f:GetChildren()) do if p.Name == name then equipPetEvent:FireServer("equipPet", p) task.wait(0.02) end end end
        end
    end
end

local function getStatValue(name)
    local ls = Player:FindFirstChild("leaderstats")
    if ls and ls:FindFirstChild(name) then return ls[name].Value end
    local d = Player:FindFirstChild("durability")
    return (d and d.Name == name) and d.Value or 0
end

local function stopAndExitMachine()
    if machineRemote then pcall(function() machineRemote:InvokeServer("leaveMachine") end) end
end

local function autoTravelAndEquipBoulder()
    pcall(function()
        local c1 = Workspace:FindFirstChild("areaCircles") and Workspace.areaCircles:FindFirstChild("areaCircle1")
        if c1 and areaTravelRemote then areaTravelRemote:InvokeServer("travelToArea", c1) task.wait(0.5) end
        local char = Player.Character or Workspace:FindFirstChild(Player.Name)
        if char and char:FindFirstChild("HumanoidRootPart") then char.HumanoidRootPart.CFrame = CFrame.new(-5455, 61, 5236) task.wait(0.5) end
        local b = Workspace:FindFirstChild("machinesFolder") and Workspace.machinesFolder:FindFirstChild("Industrial Boulder")
        if b and b:FindFirstChild("interactSeat") and machineRemote then machineRemote:InvokeServer("useMachine", b.interactSeat) end
    end)
end

-- TABS
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://7733674079"})
local StrengthTab = Window:MakeTab({Name = "Auto Strength", Icon = "rbxassetid://7733674079"})
local RebirthTab = Window:MakeTab({Name = "Auto Rebirth", Icon = "rbxassetid://7733674079"})
local BossTab = Window:MakeTab({Name = "World Boss", Icon = "rbxassetid://7733674079"})

-- MAIN
MainTab:AddSection({Name = "UI Options"})
MainTab:AddToggle({Name = "Show Damage", Default = true, Callback = function(s) damageUIVisible, damageScreenGui.Enabled = s, s end})
MainTab:AddSection({Name = "Pet Equipper Pack"})
MainTab:AddButton({Name = "Equip Rep Pack", Callback = function() equipPets({"Swift Samurai", "Rare Boss Pet", "Common Boss Pet"}) end})
MainTab:AddButton({Name = "Equip Health Pack", Callback = function() equipPets({"Mighty Monster"}) end})
MainTab:AddButton({Name = "Equip Damage Pack", Callback = function() equipPets({"Wild Wizard"}) end})
MainTab:AddButton({Name = "Equip Rebirth Pack", Callback = function() equipPets({"Tribal Overlord"}) end})
MainTab:AddSection({Name = "Machine Controller"})
MainTab:AddButton({Name = "Leave Machine", Callback = stopAndExitMachine})

-- STRENGTH
StrengthTab:AddSection({Name = "Strength Farming"})
StrSmoothToggle = StrengthTab:AddToggle({Name = "Fast Strength (Smooth)", Default = false, Callback = function(s)
    fastStrengthSmooth = s
    if s then task.spawn(function() while fastStrengthSmooth do local me = Player:FindFirstChild("muscleEvent") if me then for _=1, getAdaptiveRepCount(20) do if not fastStrengthSmooth then break end me:FireServer("rep") end end task.wait() end end) end
end})

StrFastToggle = StrengthTab:AddToggle({Name = "Fast Strength (Fast)", Default = false, Callback = function(s)
    fastStrengthFast = s
    if s then task.spawn(function() while fastStrengthFast do local me = Player:FindFirstChild("muscleEvent") if me then for _=1, 1200 do if not fastStrengthFast then break end me:FireServer("rep") end end task.wait() end end) end
end})

StrengthTab:AddSection({Name = "Strength Routine & Calculator"})
local StrTimerLbl = StrengthTab:AddLabel("Strength Routine Time: Waiting for +1T Gain...")
local StrRateLbl = StrengthTab:AddLabel("Strength / Hour: +0 | / Day: +0")
local DurRateLbl = StrengthTab:AddLabel("Durability / Hour: +0 | / Day: +0")

local startStr, startDur, strRoutineStarted, strGrindTime = 0, 0, false, 0
task.spawn(function() while true do task.wait(1) if strRoutineStarted then strGrindTime = strGrindTime + 1 StrTimerLbl:Set(string.format("Strength Routine Time: %02d:%02d:%02d", strGrindTime/3600, (strGrindTime%3600)/60, strGrindTime%60)) end end end)
task.spawn(function()
    task.wait(1) startStr, startDur = getStatValue("Strength"), getStatValue("Durability")
    while true do
        task.wait(5)
        local cStr = getStatValue("Strength")
        local gStr = cStr - (startStr or cStr)
        if not strRoutineStarted then
            if gStr >= 1e12 then strRoutineStarted = true startStr, startDur = cStr, getStatValue("Durability")
            else StrTimerLbl:Set("Strength Routine Time: Waiting (+ " .. formatNum(gStr) .. " / 1T)") end
        end
        if strRoutineStarted and strGrindTime > 0 then
            local cgStr, cgDur = cStr - startStr, getStatValue("Durability") - startDur
            StrRateLbl:Set("Strength / Hour: +" .. formatNum((cgStr/strGrindTime)*3600) .. " | / Day: +" .. formatNum((cgStr/strGrindTime)*86400))
            DurRateLbl:Set("Durability / Hour: +" .. formatNum((cgDur/strGrindTime)*3600) .. " | / Day: +" .. formatNum((cgDur/strGrindTime)*86400))
        end
    end
end)

-- REBIRTH
RebirthTab:AddSection({Name = "Equipped Pet Boost Multipliers"})
local EquippedRepSpeedLbl = RebirthTab:AddLabel("Total Rep Speed Boost: +0%")
local EquippedRebirthBoostLbl = RebirthTab:AddLabel("Total Rebirth Boost: 1x")
RebirthTab:AddSection({Name = "Live Stats (0 Delay)"})
local StrLbl = RebirthTab:AddLabel("Strength: 0 / +0")
local DurLbl = RebirthTab:AddLabel("Durability: 0 / +0")
local RebLbl = RebirthTab:AddLabel("Rebirths: 0 / +0")
RebirthTab:AddSection({Name = "Auto Rebirth"})

local rebRoutineStarted, rebGrindTime = false, 0
local RebTimerLbl = RebirthTab:AddLabel("Rebirth Routine Time: 00:00:00")
local RebRateLbl = RebirthTab:AddLabel("Rebirths / Hour: +0 | / Day: +0")

FastRebToggle = RebirthTab:AddToggle({Name = "Fast Rebirth", Default = false, Callback = function(s)
    autoRebirth, rebRoutineStarted = s, s
    if s then task.spawn(function()
        while autoRebirth do
            local ls = Player:FindFirstChild("leaderstats")
            local rebirths = ls and ls:FindFirstChild("Rebirths") and ls.Rebirths.Value or 0
            local reqStr = 10000 + (5000 * rebirths)
            local gR = Player:FindFirstChild("ultimatesFolder") and Player.ultimatesFolder:FindFirstChild("Golden Rebirth")
            if gR then reqStr = math.floor(reqStr * (1 - gR.Value * 0.1)) end

            equipPets({"Swift Samurai", "Rare Boss Pet", "Common Boss Pet"})
            while autoRebirth and ls and ls:FindFirstChild("Strength") do
                if ls.Strength.Value >= reqStr then break end
                local me = Player:FindFirstChild("muscleEvent")
                if me then for _=1, getAdaptiveRepCount(50) do if ls.Strength.Value >= reqStr or not autoRebirth then break end me:FireServer("rep") end end
                task.wait()
            end
            if not autoRebirth then break end
            equipPets({"Tribal Overlord"}) task.wait(0.05)
            local bReb = ls and ls.Rebirths.Value or 0
            repeat if rebirthRemote then rebirthRemote:InvokeServer("rebirthRequest") end task.wait(0.02) until not autoRebirth or (ls and ls.Rebirths.Value > bReb)
            task.wait()
        end
    end) end
end})

task.spawn(function() while true do task.wait(1) if rebRoutineStarted then rebGrindTime = rebGrindTime + 1 RebTimerLbl:Set(string.format("Rebirth Routine Time: %02d:%02d:%02d", rebGrindTime/3600, (rebGrindTime%3600)/60, rebGrindTime%60)) end end end)

local startRebBaseline = 0
task.spawn(function()
    task.wait(1) startRebBaseline = getStatValue("Rebirths")
    while true do
        task.wait(5)
        if rebRoutineStarted and rebGrindTime > 0 then
            local gReb = getStatValue("Rebirths") - startRebBaseline
            RebRateLbl:Set("Rebirths / Hour: +" .. formatNum((gReb/rebGrindTime)*3600) .. " | / Day: +" .. formatNum((gReb/rebGrindTime)*86400))
        end
    end
end)

task.spawn(function()
    while true do
        local sam, rBoss, cBoss, rebP = 0, 0, 0, 0
        local char = Player.Character or Workspace:FindFirstChild(Player.Name)
        if char then
            for _, c in pairs(char:GetChildren()) do
                local l = c.Name:lower()
                if l:find("samurai") then sam = sam + 1 elseif l:find("rare boss") then rBoss = rBoss + 1 elseif l:find("common boss") then cBoss = cBoss + 1 elseif l:find("tribal") or l:find("overlord") or l:find("rebirth") then rebP = rebP + 1 end
            end
        end
        if (sam + rBoss + cBoss + rebP) == 0 then
            local pf = Player:FindFirstChild("petsFolder") or Player:FindFirstChild("Pets")
            if pf then
                for _, f in pairs(pf:GetChildren()) do
                    if f:IsA("Folder") then for _, p in pairs(f:GetChildren()) do
                        local eq = p:FindFirstChild("equipped") or p:FindFirstChild("Equipped")
                        if (eq and (eq.Value == true or eq.Value == 1)) or p:FindFirstChild("PetSelection") then
                            local l = p.Name:lower()
                            if l:find("samurai") then sam = sam + 1 elseif l:find("rare boss") then rBoss = rBoss + 1 elseif l:find("common boss") then cBoss = cBoss + 1 elseif l:find("tribal") or l:find("rebirth") then rebP = rebP + 1 end
                        end
                    end end
                end
            end
        end
        EquippedRepSpeedLbl:Set("Total Rep Speed Boost: +" .. ((sam*15) + (rBoss*10) + (cBoss*5)) .. "%")
        EquippedRebirthBoostLbl:Set("Total Rebirth Boost: " .. (rebP > 0 and (rebP*2) or 1) .. "x")
        task.wait(1)
    end
end)

local startLiveStr, startLiveDur, startLiveReb
local function updateStat(name, lbl, st) local c = getStatValue(name) lbl:Set(name .. ": " .. formatNum(c) .. " / +" .. formatNum(c - (st or c))) end
local function hookStat(name, lbl, getSt)
    task.spawn(function()
        local ls = Player:WaitForChild("leaderstats", 5)
        local obj = ls and ls:FindFirstChild(name) or Player:FindFirstChild(name)
        if obj then obj:GetPropertyChangedSignal("Value"):Connect(function() updateStat(name, lbl, getSt()) end) updateStat(name, lbl, getSt()) end
    end)
end

task.spawn(function()
    task.wait(1)
    startLiveStr, startLiveDur, startLiveReb = getStatValue("Strength"), getStatValue("Durability"), getStatValue("Rebirths")
    hookStat("Strength", StrLbl, function() return startLiveStr end)
    hookStat("Durability", DurLbl, function() return startLiveDur end)
    hookStat("Rebirths", RebLbl, function() return startLiveReb end)
end)

-- WORLD BOSS & AUTOMATIC PUNCH
BossTab:AddSection({Name = "Boss Info & Timer (3 Hours Cycle)"})
local BossTimerLbl = BossTab:AddLabel("⏳ SPAWN IN: 00:00:00")
local BossHPLbl = BossTab:AddLabel("👑 BOSS HP: SEARCHING...")

BossTab:AddSection({Name = "Boss Safety Automation"})
BossTab:AddToggle({Name = "Auto Leave Machine at 15s", Default = true, Callback = function(s) autoLeaveForBoss = s end})
BossTab:AddSection({Name = "Boss Auto Punch"})
FastPunchToggle = BossTab:AddToggle({Name = "Fast Punch", Default = false, Callback = setFastPunchState})

local alertSound = Instance.new("Sound", SoundService)
alertSound.Name, alertSound.SoundId, alertSound.Volume = "BossSpawnAlertSound", "rbxassetid://9114223178", 2.5

local hasPlayedSound, bossStoppedForPrep, postBossProcessed = false, false, false

-- BOSS HP FUNCTIONS
local function GetArena()
    local Events = Workspace:FindFirstChild("Events")
    return Events and Events:FindFirstChild("BossArena")
end

local function GetHealth(Model)
    local Humanoid = Model:FindFirstChildOfClass("Humanoid")
    if Humanoid then return Humanoid.Health, Humanoid.MaxHealth end

    local CurrentHP, MaxHP
    for Name, Value in pairs(Model:GetAttributes()) do
        local N = tostring(Name):lower()
        if typeof(Value) == "number" then
            if N == "hp" or N == "health" or N == "currenthp" or N == "currenthealth" or N == "healthcurrent" then CurrentHP = Value end
            if N == "maxhp" or N == "maxhealth" or N == "maximumhealth" or N == "healthmax" then MaxHP = Value end
        end
    end

    for _, Object in ipairs(Model:GetDescendants()) do
        if Object:IsA("NumberValue") or Object:IsA("IntValue") then
            local N = Object.Name:lower()
            if N == "hp" or N == "health" or N == "currenthp" or N == "currenthealth" then CurrentHP = Object.Value end
            if N == "maxhp" or N == "maxhealth" or N == "maximumhealth" then MaxHP = Object.Value end
        end
    end
    return CurrentHP, MaxHP
end

local function IsBossModel(Model, Arena)
    if not Model:IsA("Model") or Model == Arena then return false end
    if Model.Name:lower():find("boss", 1, true) then return true end
    local HP, MaxHP = GetHealth(Model)
    return (MaxHP and MaxHP >= 1000) or (HP and HP >= 1000) or false
end

local function FindBoss()
    local Arena = GetArena()
    if not Arena then return nil end
    local BestBoss, BestMaxHP = nil, 0
    for _, Object in ipairs(Arena:GetDescendants()) do
        if IsBossModel(Object, Arena) then
            local HP, MaxHP = GetHealth(Object)
            if HP or MaxHP then
                local CompareHP = MaxHP or HP or 0
                if CompareHP > BestMaxHP then
                    BestMaxHP = CompareHP
                    BestBoss = Object
                end
            end
        end
    end
    return BestBoss
end

-- BOSS HP LOOP & LIVE TRACKING
local currentBossHP = 0
local isBossAlive = false

task.spawn(function()
    while task.wait(0.5) do
        local Arena = GetArena()
        if not Arena then
            BossHPLbl:Set("👑 BOSS HP: ARENA NOT FOUND")
            isBossAlive = false
            currentBossHP = 0
        else
            local Boss = FindBoss()
            if not Boss then
                BossHPLbl:Set("👑 BOSS HP: NO BOSS SPAWNED")
                isBossAlive = false
                currentBossHP = 0
            else
                local HP, MaxHP = GetHealth(Boss)
                if HP and HP > 0 then
                    isBossAlive = true
                    currentBossHP = HP
                    if MaxHP then
                        BossHPLbl:Set("👑 " .. Boss.Name .. ": " .. formatNum(HP) .. " / " .. formatNum(MaxHP))
                    else
                        BossHPLbl:Set("👑 " .. Boss.Name .. ": " .. formatNum(HP))
                    end
                else
                    BossHPLbl:Set("👑 BOSS HP: DEAD")
                    isBossAlive = false
                    currentBossHP = 0
                end
            end
        end
    end
end)

-- 3-HOUR TIMER & AUTO SAFETY LOOP
RunService.RenderStepped:Connect(function()
    local totalSecInDay = (os.date("!*t").hour * 3600) + (os.date("!*t").min * 60) + os.date("!*t").sec
    local secLeft = 10800 - (totalSecInDay % 10800) -- 3 Hours = 10,800 Seconds
    if secLeft == 10800 then secLeft = 0 end

    if secLeft == 0 then
        BossTimerLbl:Set("⏳ SPAWN IN: BOSS SPAWNING NOW!")
        if not hasPlayedSound then alertSound:Play() hasPlayedSound = true end
    else
        local hrs = math.floor(secLeft / 3600)
        local mins = math.floor((secLeft % 3600) / 60)
        local secs = secLeft % 60
        BossTimerLbl:Set(string.format("⏳ SPAWN IN: %02d:%02d:%02d", hrs, mins, secs))
        hasPlayedSound = false
    end

    -- PREPARATION (15s Warning)
    if autoLeaveForBoss and secLeft <= 15 and secLeft > 0 then
        if not bossStoppedForPrep then
            bossStoppedForPrep = true
            postBossProcessed = false
            previousStates.StrSmooth, previousStates.StrFast, previousStates.FastReb = fastStrengthSmooth, fastStrengthFast, autoRebirth
            
            stopAndExitMachine()
            if StrSmoothToggle then StrSmoothToggle:Set(false) end
            if StrFastToggle then StrFastToggle:Set(false) end
            if FastRebToggle then FastRebToggle:Set(false) end
            if FastPunchToggle then FastPunchToggle:Set(true) end

            OrionLib:MakeNotification({Name = "Boss Safety", Content = "Left machine & Auto Fast Punch Activated!", Time = 5})
        end
    end

    -- POST-BOSS AUTO RESUME (Hihintayin munang mamatay ang Boss HP bago mag-resume)
    if bossStoppedForPrep and not postBossProcessed and secLeft > 15 then
        if not isBossAlive and currentBossHP <= 0 then
            postBossProcessed = true
            task.spawn(function()
                task.wait(3) -- Safety delay pagka-kill sa boss
                if FastPunchToggle then FastPunchToggle:Set(false) end
                autoTravelAndEquipBoulder()
                if previousStates.StrSmooth and StrSmoothToggle then StrSmoothToggle:Set(true) end
                if previousStates.StrFast and StrFastToggle then StrFastToggle:Set(true) end
                if previousStates.FastReb and FastRebToggle then FastRebToggle:Set(true) end

                OrionLib:MakeNotification({Name = "Auto Resume", Content = "Boss Defeated! Fast Punch Off | Returned to Boulder!", Time = 5})
                bossStoppedForPrep = false
            end)
        end
    end
end)

BossTab:AddSection({Name = "External Script"})
BossTab:AddButton({Name = "Show Auto Boss", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/inscan7-del/W/refs/heads/main/DEVIL_HUB.lua"))() end})

OrionLib:Init()