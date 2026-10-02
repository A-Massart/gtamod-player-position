local coords = GetEntityCoords(PlayerPedId())
player_x = coords.x
player_y = coords.y
player_z = coords.z

print("x : ",player_x, "y : ",player_y, "z : ", player_z)

function Draw2DText(x, y, text, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(4, 0, 0, 0, 255)

    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end


CreateThread(function()
    while true do
        Wait(0)

        if player_x ~= nil and player_y ~= nil and player_z ~= nil then
            local text = ('Player: X %.3f | Y %.3f | Z %.3f'):format(
                player_x,
                player_y,
                player_z
            )

            Draw2DText(0.8, 0.9, text, 0.5)
        end
    end
end)
