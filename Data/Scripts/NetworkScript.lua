
function Restart()
    Game.TransferAllPlayersToGame(Game.GetCurrentGameId())
end
Events.Connect("Restart",Restart)