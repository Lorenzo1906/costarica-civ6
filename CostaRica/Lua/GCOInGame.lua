local initialLeaderHeadSetting = Options.GetGraphicsOption("Leaders", "Quality")

function HideLeaderHead()
    ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):SetHide(true)
    
end

function OnEnterGame()
    ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):RegisterWhenShown(HideLeaderHead)
    Options.SetGraphicsOption("Leaders", "Quality", 0)
    Options.ApplyGraphicsOptions()
end
Events.LoadScreenClose.Add(OnEnterGame)


function OnExitGame()
    Options.SetGraphicsOption("Leaders", "Quality", initialLeaderHeadSetting)
end
Events.LeaveGameComplete.Add(OnExitGame)