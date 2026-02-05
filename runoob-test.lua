--Z某人开源
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function XSnb886(text)
    if setclipboard then
        setclipboard(text)
    elseif toclipboard then
        toclipboard(text)
    else
        print("Clipboard not supported: " .. tostring(text))
    end
end

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XSXSXSXXXX(1).lua"))()
end)

task.spawn(function()
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/lucide/dist/Icons.lua"))() end)
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/solar/dist/Icons.lua"))() end)
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/craft/dist/Icons.lua"))() end)
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/geist/dist/Icons.lua"))() end)
    pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/sfsymbols/dist/Icons.lua"))() end)
end)

local WindUI = loadstring(game:HttpGet("https://github.com/SCRIPT-1-cyber/sf/releases/latest/download/UI.lua"))()

local LocalPlayer = Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Folder = "CloudHub",
    Title = "辣鸡XS｜HUB ",
    Transparent = true,
    Author = "快手BiR",
    Icon = "crown",
    Size = UDim2.fromOffset(560, 360),
})
-- 脚本启动时显示通知
task.spawn(function()
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "📢 辣鸡XS｜HUB",
            Text = "脚本已加载成功！垃圾脚本已被破解",
            Duration = 5,
            Icon = "rbxasset://textures/ui/Emotes/ThumbsUp.png",  -- 可选图标
        })
    end)
end)

Window:EditOpenButton({
    StrokeThickness = 3,
    Title = "辣鸡XS｜HUB",
    Draggable = true,
    Icon = "crown",
    CornerRadius = UDim.new(1, 0),
})

local Tab_About = Window:Tab({
    Title = "关于",
    Icon = "eye",
})

local infoText = string.format("用户名: %s\n显示名: %s\n用户ID: %d\n账号年龄: %d天", 
    LocalPlayer.Name, 
    LocalPlayer.DisplayName, 
    LocalPlayer.UserId, 
    LocalPlayer.AccountAge
)

Tab_About:Paragraph({
    Title = "系统信息",
    Desc = infoText,
})

local Tab_General = Window:Tab({
    Title = "通用",
    Icon = "eye",
})

local currentJumpPower = 50
local currentWalkSpeed = 16

Tab_General:Slider({
    Title = "跳跃高度",
    Value = {
        Min = 20,
        Default = 50,
        Max = 200,
    },
    Callback = function(value)
        currentJumpPower = value
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then
                hum.JumpPower = value
            end
        end
    end,
})

Tab_General:Slider({
    Title = "移动速度",
    Value = {
        Min = 16,
        Default = 16,
        Max = 150,
    },
    Callback = function(value)
        currentWalkSpeed = value
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then
                hum.WalkSpeed = value
            end
        end
    end,
})

LocalPlayer.CharacterAdded:Connect(function(newChar)
    task.wait(1)
    local hum = newChar:FindFirstChild("Humanoid")
    if hum then
        hum.JumpPower = currentJumpPower
        hum.WalkSpeed = currentWalkSpeed
    end
end)

Tab_General:Slider({
    Title = "重力",
    Step = 0.1,
    Value = {
        Min = 0.1,
        Default = 196.2,
        Max = 500,
    },
    Callback = function(value)
        Workspace.Gravity = value
    end,
})

Tab_General:Button({
    Title = "飞",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLY-GUI-BY-TUPAK-76975"))()
    end,
})

Tab_General:Button({
    Title = "飞行v3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/main/flyvthree"))()
    end,
})

Tab_General:Button({
    Title = "子弹追踪",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/main/Silent%20aim/1.1"))()
    end,
})

Tab_General:Button({
    Title = "隐身 [别人看得见]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
    end,
})

Tab_General:Button({
    Title = "悬空",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
    end,
})

Tab_General:Button({
    Title = "反挂机",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
    end,
})

Tab_General:Button({
    Title = "玩家进入提示",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
    end,
})

Tab_General:Button({
    Title = "撸管 r6",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end,
})

Tab_General:Button({
    Title = "撸管 r15",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end,
})

Tab_General:Button({
    Title = "隐身道具",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff", true))()
    end,
})

local Tab_Blind = Window:Tab({
    Title = "盲射",
    Icon = "eye",
})

Tab_Blind:Button({
    Title = "盲射脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/BlindShot"))()
    end,
})

local Tab_Brainrot = Window:Tab({
    Title = "偷走脑红",
    Icon = "eye",
})

Tab_Brainrot:Button({
    Title = "ringta可能没用",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringta9321/steala.github.io/main/brainrot.lua"))()
    end,
})

local Tab_99Nights = Window:Tab({
    Title = "99夜",
    Icon = "eye",
})

Tab_99Nights:Button({
    Title = "虚空99夜",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
    end,
})

local Tab_Aimbot = Window:Tab({
    Title = "自喵",
    Icon = "eye",
})

Tab_Aimbot:Button({
    Title = "自喵可调",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Aimbot-Universal-For-Mobile-and-PC-29153"))()
    end,
})

local Tab_Carry = Window:Tab({
    Title = "带玩家",
    Icon = "eye",
})

Tab_Carry:Button({
    Title = "带玩家 r6",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/acRMjzDk/raw"))()
    end,
})

local Tab_Update = Window:Tab({
    Title = "催更",
    Icon = "eye",
})

Tab_Update:Button({
    Title = "催更或bug提醒",
    Callback = function()
    end,
})

Tab_Update:Button({
    Title = "点击复制ks号",
    Callback = function()
        XSnb886("傻逼")
        StarterGui:SetCore("SendNotification", {
            Text = "ks号已复制",
            Title = "成功",
            Duration = 2,
        })
    end,
})

local Tab_MM2 = Window:Tab({
    Title = "mm2脚本",
    Icon = "eye",
})

Tab_MM2:Button({
    Title = "mm2老外",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mm2scripthub/TravHub/refs/heads/main/MurderMystery2"))()
    end,
})

local Tab_Abandoned = Window:Tab({
    Title = "被遗弃",
    Icon = "eye",
})

Tab_Abandoned:Button({
    Title = "被遗弃",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XSXSXSXDV1.lua"))()
    end,
})

local Tab_AdoptMe = Window:Tab({
    Title = "领养我",
    Icon = "eye",
})

Tab_AdoptMe:Button({
    Title = "ringta",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/eeeiqjj876y/adoptme.github.io/main/ringta.lua"))()
    end,
})

local Tab_Ohio = Window:Tab({
    Title = "俄亥俄州",
    Icon = "eye",
})

Tab_Ohio:Button({
    Title = "俄州子追",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()
    end,
})

local Tab_Criminal = Window:Tab({
    Title = "犯罪",
    Icon = "eye",
})

Tab_Criminal:Button({
    Title = "XS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XS%E7%8A%AF%E7%BD%AA.lua"))()
    end,
})

local Tab_GB = Window:Tab({
    Title = "GB",
    Icon = "eye",
})

Tab_GB:Button({
    Title = "清水",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aaaaaaajwjnwj/-/refs/heads/main/XSRF%E8%84%9A%E6%9C%ACv1%E6%BA%90%E7%A0%81(1).lua"))()
    end,
})

local Tab_Evade = Window:Tab({
    Title = "Evade躲避",
    Icon = "eye",
})

Tab_Evade:Button({
    Title = "YinYang",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yesimsoul/Yin-Yang-Hub/main/evade"))()
    end,
})

Tab_Evade:Button({
    Title = "点击复制脚本卡密",
    Callback = function()
        XSnb886("yin-yang")
        StarterGui:SetCore("SendNotification", {
            Text = "卡密已复制",
            Title = "成功",
            Duration = 2,
        })
    end,
})

local Tab_Defuse = Window:Tab({
    Title = "摧毁师",
    Icon = "eye",
})

Tab_Defuse:Button({
    Title = "不知道",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joshingtonn123/JoshScript/main/SyrexGenesisXDefuseDivision"))()
    end,
})

local Tab_Reverse = Window:Tab({
    Title = "时间回溯",
    Icon = "eye",
})

Tab_Reverse:Button({
    Title = "时间回溯",
    Callback = function()
        loadstring(game:HttpGet("https://mscripts.vercel.app/scfiles/reverse-script.lua"))()
    end,
})

local Tab_Anime = Window:Tab({
    Title = "[UPD🎉]Anime Slap Tower✋🏻",
    Icon = "eye",
})

Tab_Anime:Button({
    Title = "获得道具op",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/aj7u9mDA/raw"))()
    end,
})

local Tab_Minecraft = Window:Tab({
    Title = "我的世界",
    Icon = "eye",
})

Tab_Minecraft:Button({
    Title = "我的世界",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Steve-script-24707"))()
    end,
})

local Tab_Tsunami = Window:Tab({
    Title = "逃离海啸获得脑红",
    Icon = "eye",
})

Tab_Tsunami:Button({
    Title = "还可以",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/EscapeTsunamiForBrainrots"))()
    end,
})