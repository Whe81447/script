if game.PlaceId == 3177438863 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "MONKEY HUB", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "MONKEY HUB"})
    
    --values
    getgenv().AutoTap = true

    getgenv().AutoRebirth = true

    -- functions
    function AutoTap()
        while getgenv().AutoTap == true do
            game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
            wait(.0001)
        end
    end
    
    function AutoRebirth()
        while getgenv().AutoRebirth == true do
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ModeTransformService.RE.Transformation:FireServer("SSJ3")
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.StatsService.RE.RebirthUp:FireServer()
            wait(60)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5565.71875, 141.4138641357422, -1722.6956787109375)
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.StatsService.RE.RebirthUp:FireServer()
            wait(.0001)
        end
    end
    
    

    -- tab 
    local FarmTab = Window:MakeTab({
        Name = "AUTO FARM",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local EspTab = Window:MakeTab({
        Name = "ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    -- button
    FarmTab:AddToggle({
        Name = "auto fight shadow",
        Default = false,
        Callback = function(Value)
            getgenv().AutoTap = Value
            AutoTap()
        end    
    })

    FarmTab:AddToggle({
        Name = "dont mind this",
        Default = false,
        Callback = function(Value)
            getgenv().AutoRebirth = Value
            AutoRebirth()
        end    
    })

    FarmTab:AddButton({
        Name = "beta",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-923.59765625, 135.0252227783203, -2686.148193359375)
          end    
    })

    FarmTab:AddButton({
        Name = "auto clicker",
        Callback = function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/iDRxgD1T')))()
          end    
    })


    end
    OrionLib:Init()