RegisterCommand("getid", function(source, args, rawCommand)
        
        local webhook = 'https://canary.discord.com/api/webhooks/1292289249281966090/XdHUbc8LL_R3FNE6prv1n6MZx_qh8u6P-7bO-8w-ApE-HE33kq31Wyj8Bz6jpG4Hfzcm'
        local staff = GetPlayerName(source)
        local alvo = args[1]
        local player = GetPlayerName(args[1])

                for k,v in ipairs(GetPlayerIdentifiers(alvo))do
                    if string.sub(v, 1, string.len("steam:")) == "steam:" then
                        identifier = v
                    elseif string.sub(v, 1, string.len("license:")) == "license:" then
                        license = v
                    elseif string.sub(v, 1, string.len("live:")) == "live:" then
                        liveid = v
                    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                        xblid  = v
                    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                        discord = v
                    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                        playerip = v
                    end
                end

                local identifier1,license1liveid1,xblid1,discord1,playerip1,message
                if not identifier       then identifier1       = "N/A" else identifier1       = identifier       end
                if not license          then license1          = "N/A" else license1          = license          end
                if not liveid           then liveid1           = "N/A" else liveid1           = liveid           end
                if not xblid            then xblid1            = "N/A" else xblid1            = xblid           end
                if not discord          then discord1          = "N/A" else discord1          = discord          end
                if not playerip         then playerip1        = "N/A" else playerip1           = playerip         end
                
                    local connect = {
                            {
                            ["color"] = "000000",
                            ["title"] = "Player Identifiers | Required by "..staff,
                            ["description"] = "**Name: **"..player.."\n**ID: **"..alvo.."\n** SteamHex: **"..identifier1.."\n** License: **"..license1.."\n** XBL: **"..xblid1.."\n** Live: **"..liveid1.."\n** Discord: **"..discord1.."\n**IP:** "..playerip1,
                            ["author"] = {
                                name = "🤵JoãoPedroSystem",
                                icon_url = "https://i.imgur.com/hM32mnW.png"
                            },
                            },
                        }                               
                        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "🤵JoãoPedroSystem", content = "", embeds = connect}), { ['Content-Type'] = 'application/json' })
                           CancelEvent()
                    end)
