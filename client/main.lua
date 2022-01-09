--[[				[ WARNING ]
Do not edit this section if you do not have programming knowledge, as you can break the script. You can edit all do u need in your config.lua.
]]


ESX = nil

Citizen.CreateThread(function()
	while (ESX == nil) do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)

		while ESX.GetPlayerData().job == nil do
			Citizen.Wait(10)
		end

		ESX.PlayerData = ESX.GetPlayerData()
		PlayerData = ESX.GetPlayerData()
	end
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job, job_label, grade)
    PlayerData.job = job
end)


RegisterCommand("mc", function(source)

	if PlayerData.job ~= nil and PlayerData.job.name == Config.mechanic.job then
	TriggerServerEvent('jota_announce:meca')
	else
		if Config.okokNotify then
			exports['okokNotify']:Alert(Config.Error.label, Config.Error.message, Config.Error.time, 'error')
		else
			ESX.ShowNotification(Config.Error.message)
		end
	end

end)

RegisterCommand("ems", function(source)

	if PlayerData.job ~= nil and PlayerData.job.name == Config.ems.job then
	TriggerServerEvent('jota_announce:ems')
	else
		if Config.okokNotify then
			exports['okokNotify']:Alert(Config.Error.label, Config.Error.message, Config.Error.time, 'error')
		else
			ESX.ShowNotification(Config.Error.message)
		end
	end

end)

RegisterCommand("tx", function(source)

	if PlayerData.job ~= nil and PlayerData.job.name == Config.taxi.job then
	TriggerServerEvent('jota_announce:taxi')
	else
		if Config.okokNotify then
			exports['okokNotify']:Alert(Config.Error.label, Config.Error.message, Config.Error.time, 'error')
		else
			ESX.ShowNotification(Config.Error.message)
		end
	end

end)

RegisterCommand("polid", function(source)

	if PlayerData.job ~= nil and PlayerData.job.name == Config.police.job then
	TriggerServerEvent('jota_announce:polid')
	else
		if Config.okokNotify then
			exports['okokNotify']:Alert(Config.Error.label, Config.Error.message, Config.Error.time, 'error')
		else
			ESX.ShowNotification(Config.Error.message)
		end
	end

end)


