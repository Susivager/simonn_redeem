Config = {}

Config.Framework = 'ESX'                 -- ESX
Config.RedeemCommand = 'redeem'          -- Lege den Befehl für das einlösen des Codes fest. / Define the command for redeeming the code.

Config.RedeemCodes = {                   -- Hier kannst du die Codes festlegen die du haben möchtest mehr ind er readme.md / Here, you can set the codes you want, more in the readme.md
    ['CODE1'] = {
        cash = 1000,
        bank = 1,
        items = {
            {name = 'bread', amount = 2},
            {name = 'water', amount = 3}
        }
    },
    ['CODE2'] = {
        cash = 2000
    },
}


Config.SuccessNotify = function(player)
    -- Hier kannst du eine benutzerdefinierte Funktion festlegen, die ausgeführt wird, wenn ein Spieler einen Code erfolgreich einlöst.
    -- Here, you can define a custom function that is executed when a player successfully redeems a code.
    
    local xPlayer = ESX.GetPlayerFromId(player)
    xPlayer.showNotification('Code erfolgreich eingelöst!') 
end


Config.CodeError = function(player)
    -- Hier kannst du eine benutzerdefinierte Funktion festlegen, die ausgeführt wird, wenn ein Spieler einen ungültigen Code verwendet.
    -- Here, you can define a custom function that is executed when a player redeems an invalid code.
    
    local xPlayer = ESX.GetPlayerFromId(player)
    xPlayer.showNotification('Ungültiger Code.') 
end


Config.CommandError = function(player)
    -- Hier kannst du eine benutzerdefinierte Funktion festlegen, die ausgeführt wird, wenn ein Spieler einen Code erfolgreich einlöst.
    -- Here, you can define a custom function that is executed when a player incorrectly uses the command for redeeming a code.
    
    local xPlayer = ESX.GetPlayerFromId(player)
    xPlayer.showNotification('Verwendung: /redeem [Code]') 
end
 
Config.AlreadyRedeemedError = function(player)
    -- Diese benutzerdefinierte Funktion wird aufgerufen, wenn ein Spieler versucht, einen bereits eingelösten Code zu verwenden.
    -- This custom function is called when a player attempts to use a code that has already been redeemed.
    
    local xPlayer = ESX.GetPlayerFromId(player)
    xPlayer.showNotification('Den Code hast du bereits verwendet.')
end
