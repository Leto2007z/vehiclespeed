local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
local mphspeed = true

Citizen.CreateThread(function()
    if IsPedInVehicle(ped, veh, false) then
        Citizen.Wait(1)

        while true do
            Wait(5000)

            local speed = GetEntitySpeed(veh)

            if mphspeed then
                TriggerEvent('chatMessage', "Speed [MPH]", { 200, 0, 0 }, speed * 2.23694) -- mph
            else
                    TriggerEvent('chatMessage', "Speed [KMPH]", { 200, 0, 0 }, speed * 3.6) -- kmph

                    Citizen.Wait(1)
            end
        end
    end
end)
