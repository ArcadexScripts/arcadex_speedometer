function DrawTextOnScreen(text)
    SetTextProportional(0)
    SetTextFont(7)
    SetTextOutline()
    SetTextScale(1.0,1.0)
    SetTextColour(2,89,252, 255)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.8, 0.95)
end

Citizen.CreateThread(function()
    while true do
        local Speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6

        if GetVehiclePedIsIn(GetPlayerPed(-1)) ~= 0 then
            DrawTextOnScreen(string.format("%.1f", tostring(Speed)) .. " KM/H")
        else
            Citizen.Wait(100)
        end
        Citizen.Wait(0)
    end
end)