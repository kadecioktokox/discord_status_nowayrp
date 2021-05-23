local printServ = "Zapraszamy do nas!"
    Citizen.CreateThread(function()
    while true do
        Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', 'NowayRP | discord.gg/eA38Hxk8nE')



        SetDiscordAppId(846070445812088903)


        SetDiscordRichPresenceAsset('logo')
        SetDiscordRichPresenceAssetText("Dołącz do nas już dziś!")
        SetDiscordRichPresenceAssetSmall('logo')
        SetDiscordRichPresenceAssetSmallText('NowayRP')
        SetDiscordRichPresenceAction(0, 'NASZ DISCORD', 'https://discord.gg/eA38Hxk8nE')
        name = GetPlayerName(PlayerId())
        id = GetPlayerServerId(PlayerId())
        players = {}
        for i = 0, 256 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetRichPresence("Obywateli: " .. #players .."/64 🙂 ")
        Citizen.Wait(60000)
    end
end)