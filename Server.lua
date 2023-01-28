ESX = exports['es_extended']:getSharedObject()

RegisterCommand("godmode", function(source) local _source = source  local xPlayer = ESX.GetPlayerFromId(source) 
     if xPlayer.getGroup() == 'admin' then 
        TriggerClientEvent('Zx_godmode:isAdmin', source)
    else
        TriggerClientEvent('esx:showNotification', source, ('[Server]  Only admin can use this command!'))
    end
end)