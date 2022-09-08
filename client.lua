Citizen.CreateThread(function()
	while true do
	    Wait(1)
		SetPauseMenuActive(false)
        if not IsPauseMenuActive() then
	        if (IsControlJustPressed(0, 200)) then
            SetNuiFocus(true, true)
            SendNUIMessage({
            nui = true
            })
		    end
        end
	end
end)

function CloseMenu()
    SetNuiFocus(false, false)
    SendNUIMessage({
        nui = false
    })
end

RegisterNUICallback('Resume', function(data)
    CloseMenu()
end)

RegisterNUICallback('Map', function(data)
	CloseMenu()
	ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_MP_PAUSE'),0,-1)
end)

RegisterNUICallback('Settings', function(data)
	CloseMenu()
	ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_LANDING_MENU'),0,-1)
end)

RegisterNUICallback('Leave', function(data)
    TriggerServerEvent('pausemenu:Leave')
end)
