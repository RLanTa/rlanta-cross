local on - true

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("cross", function(source)
	TriggerClientEvent("rlanta-cross:kullan")
  end)

RegisterCommand('global_ctoggle', function()
	if on then
		on = false
	elseif not on then
		on = true
	end
	TriggerClientEvent('cl:update_c', -1, on)
end)