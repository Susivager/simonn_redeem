
if Config.Framework == "ESX" then
    ESX = exports["es_extended"]:getSharedObject()
end


function IsCodeAlreadyRedeemed(player, code, identifier)
    local result = MySQL.Sync.fetchAll("SELECT * FROM simonn_redeemedcodes WHERE identifier = @identifier AND code = @code", {
        ['@identifier'] = identifier,
        ['@code'] = code
    })

    return result and #result > 0
end


function MarkCodeAsRedeemed(player, code, identifier)
    
    MySQL.Sync.execute("INSERT INTO simonn_redeemedcodes (identifier, code) VALUES (@identifier, @code)", {
        ['@identifier'] = identifier,
        ['@code'] = code
    })
end

RegisterCommand(Config.RedeemCommand, function(source, args, rawCommand)
    local player = source
    local code = args[1]
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if not IsCodeAlreadyRedeemed(player, code, xPlayer.getIdentifier()) then
        if code then
            local reward = Config.RedeemCodes[code]
    
            if reward then
                if Config.Framework == "ESX" then
                    
    
                    if reward.cash then
                        xPlayer.addAccountMoney('money', reward.cash)
                    end
    
                    if reward.bank then
                        xPlayer.addAccountMoney('bank', reward.bank)
                    end
                    if reward.items then
                        for _, itemData in ipairs(reward.items) do
                            xPlayer.addInventoryItem(itemData.name, itemData.amount)
                        end
                    end
                    
                end
    
                MarkCodeAsRedeemed(player, code, xPlayer.getIdentifier())

                if type(Config.SuccessNotify) == "function" then
                    Config.SuccessNotify(player)
                end
            else
                if type(Config.CodeError) == "function" then
                    Config.CodeError(player)
                end
            end
        else
            if type(Config.CommandError) == "function" then
                Config.CommandError(player)
            end
        end
    else 
        if type(Config.AlreadyRedeemedError) == "function" then
            Config.AlreadyRedeemedError(player)
        end
    end
end, false)

