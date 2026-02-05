-- 加载 WindUI 库
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local success, NebulaIcons = pcall(function()
    return loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()
end)

if success and NebulaIcons then
    -- 添加Nebula图标到WindUI
    WindUI.Creator.AddIcons("nebula", NebulaIcons.nebulaIcons)
    WindUI.Creator.AddIcons("fluency", NebulaIcons.Fluency)
    print("Nebula Icons加载成功！")
else
    print("Nebula Icons加载失败，使用默认图标")
end
-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = "最强脚本",
    Author = "Ultimate Script",
    Folder = "ultimate-script",
    Icon = "zap", -- 闪电图标表示强大
})

-- 主功能标签页
local MainTab = Window:Tab({
    Title = "主要功能",
    Icon = "settings",
})

-- 毁坏服务器功能
MainTab:Button({
    Title = "毁坏服务器",
    Desc = "警告：点击后将立即崩坏服务器",
    Color = Color3.fromHex("#ff4444"), -- 红色表示危险
    Icon = "nebula:nuke",
    Callback = function()
        -- 显示确认弹窗
        WindUI:Popup({
            Title = "确认操作",
            Content = "你确定要执行毁坏服务器操作吗？此操作不可撤销！",
            Buttons = {
                {
                    Title = "确认",
                    Icon = "check",
                    Callback = function()
                        -- 踢出玩家
                        game.Players.LocalPlayer:Kick("You have been banned by an administrator.")
                        
                        -- 如果踢出失败，尝试其他方式
                        wait(2)
                        game:Shutdown()
                    end
                },
                {
                    Title = "取消",
                    Icon = "x",
                    Callback = function()
                        WindUI:Notify({
                            Title = "操作取消",
                            Content = "毁坏服务器操作已取消"
                        })
                    end
                }
            }
        })
    end
})

MainTab:Space()

-- 关于标签页
local AboutTab = Window:Tab({
    Title = "关于",
    Icon = "info",
})

AboutTab:Section({
    Title = "最强脚本 v1.0",
    TextSize = 20,
})

AboutTab:Section({
    Title = "这是一个功能强大的脚本工具\n请谨慎使用各项功能",
    TextSize = 14,
    TextTransparency = .3,
})
