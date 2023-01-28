ESX = exports['es_extended']:getSharedObject()
godmode = false

RegisterNetEvent('Zx_godmode:isAdmin')
AddEventHandler('Zx_godmode:isAdmin', function(source)
    local player = PlayerId()
    if not godmode then
        SetPlayerInvincible(player, true)
        godmode = true
        EnableGodMode()
        TriggerEvent("chat:addMessage", {
            args = {"^2[Server]", "God mode enabled"}
        })
    else
        SetPlayerInvincible(player, false)
        godmode = false
        DisableGodMode()
        TriggerEvent("chat:addMessage", { args = {"^1[Server]", "God mode disabled"} }) end end)

function EnableGodMode() godMod = true end
function DisableGodMode() godMod = false end
Citizen.CreateThread(function() while true do Citizen.Wait(0) if godMod then SetTextFont(0) SetTextProportional(1) SetTextScale(0.0, 0.3) SetTextColour(242, 2, 2, 255) SetTextDropshadow(0, 0, 0, 0, 255) SetTextEdge(1, 0, 0, 0, 255) SetTextDropShadow() SetTextOutline() SetTextEntry("STRING") AddTextComponentString("God Mode Enabled ⭐️") DrawText(0.005, 0.005) end end end)



