--[[				[ WARNING ]
Do not edit this section if you do not have programming knowledge, as you can break the script. You can edit all do u need in your config.lua.
]]

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('jota_announce:meca')
AddEventHandler('jota_announce:meca', function(source)

	if Config.okokNotify then
		if Config.mechanic.enable then
			TriggerClientEvent('okokNotify:Alert', -1, Config.mechanic.label, Config.mechanic.message, Config.mechanic.time, 'info')
		end
	else
		if Config.ems.enable then
			TriggerClientEvent('esx:showAdvancedNotification', -1, Config.mechanic.label, Config.mechanic.label2, Config.mechanic.message, 'CHAR_LS_CUSTOMS', 3)
		end
	end

end)

RegisterServerEvent('jota_announce:ems')
AddEventHandler('jota_announce:ems', function(source)

	if Config.okokNotify then
		if Config.ems.enable then
			TriggerClientEvent('okokNotify:Alert', -1, Config.ems.label, Config.ems.message, Config.ems.time, 'info')
		end
	else
		if Config.ems.enable then
			TriggerClientEvent('esx:showAdvancedNotification', -1, Config.ems.label, Config.ems.label2, Config.ems.message, 'CHAR_CALL911', 3)
		end
	end

end)

RegisterServerEvent('jota_announce:taxi')
AddEventHandler('jota_announce:taxi', function(source)

	if Config.okokNotify then
		if Config.taxi.enable then
			TriggerClientEvent('okokNotify:Alert', -1, Config.taxi.label, Config.taxi.message, Config.taxi.time, 'info')
		end
	else
		if Config.taxi.enable then
			TriggerClientEvent('esx:showAdvancedNotification', -1, Config.taxi.label, Config.taxi.label2, Config.taxi.message, 'CHAR_TAXI', 3)
		end
	end

end)

RegisterServerEvent('jota_announce:polid')
AddEventHandler('jota_announce:polid', function(source)
	
	if Config.okokNotify then
		if Config.police.enable then
			TriggerClientEvent('okokNotify:Alert', -1, Config.police.label, Config.police.message, Config.police.time, 'info')
		end
	else
		if Config.police.enable then
			TriggerClientEvent('esx:showAdvancedNotification', -1, Config.police.label, Config.police.label2, Config.police.message, 'CHAR_CALL911', 3)
		end
	end

end)