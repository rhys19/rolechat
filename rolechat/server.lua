--Made by Tazio


-- add_ace Adminrole taz.admin allow
-- add_principal identifier.steam:[hexid] Adminrole

AddEventHandler('chatMessage', function(source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
          if exports.discord_perms:IsRolePresent(user, Owner) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^1Owner ^7] (^3 " .. Name.." ^7)", "^8"..Msg }, color = 255, 0, 0 })
          elseif exports.discord_perms:IsRolePresent(user, Management) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^5Management ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          elseif exports.discord_perms:IsRolePresent(user, Senior_Admin) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Senior Admin ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          elseif exports.discord_perms:IsRolePresent(user, Admin) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Admin ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
	        elseif exports.discord_perms:IsRolePresent(user, Moderator) then
             TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Moderator ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
	        elseif exports.discord_perms:IsRolePresent(user, Tmod) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8T-Mod ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          else
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^4Member ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
