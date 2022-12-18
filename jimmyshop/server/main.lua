ESX = nil

TriggerEvent('scrap:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx_drugseller:buy')
AddEventHandler('esx_drugseller:buy', function(item, amount, money)
   local xPlayer = ESX.GetPlayerFromId(source)
   local moneys = xPlayer.getMoney()
   if moneys >= money then
   xPlayer.removeMoney(money)
   xPlayer.addInventoryItem(item, amount)
   TriggerClientEvent('esx:showNotification', source, 'Zakupiłeś ' .. item .. ' za ' .. money .. '$')
   else 
    TriggerClientEvent('esx:showNotification', source, 'Jeżeli nie masz kasy nie zawracaj mi dupy!')
   end
end)