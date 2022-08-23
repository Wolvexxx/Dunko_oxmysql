local items = {}

items["medkit"] = {"Kit Medical", "Folosit Sa Aduca La Viata Oameni Lesinati.",nil,0.5,"pocket"}
items["repairkit"] = {"Kit Reparati", "Folosit Sa Repare Multe Chestii.",nil,0.5,"pocket"}
items["circuite"] = {"Circuite","Folosite pentru a repara panourile electrice.",nil,0.5,"pocket"}
items["ciocan"] = {"Ciocan","Folosit pentru a repara case.",nil,0.5,"pocket"}
items["colete"] = {"Colete","Colete La Livrare",nil,0.10,"pocket"}
items["rinichi"] = {"Rinichi","Rinichi lui Pepe",nil,0.5,"pocket"}
items["inima"] = {"Inima","Inima de negasit",nil,0.5,"pocket"}
items["ficat"] = {"Ficat","Ficat de o raritate mare",nil,0.5,"pocket"}
items["horn"] = {"Corn De Rinocer","Corn de Rinocer de Valoare",nil,0.5,"pocket"}
items["ivory"] = {"Fildes De Elefant","Fildes de Elefant de Valoare",nil,0.5,"pocket"}
items["fur"] = {"Blana Tigrului","Blana tigru de mare calitate",nil,0.5,"pocket"}
items["faina"] = {"Faina fermier","Faina de calitate maxima",nil,0.5,"pocket"}
items["furs"] = {"Blana Urs","Blana urs de mare calitate",nil,0.5,"pocket"}
items["cigpack_pallmall"] = {"PallMall", "Un packet de tigari PallMall!",nil,0.1,"pocket"}
items["cigpack_camel"] = {"Camel", "Un packet de Camel!",nil,0.1,"pocket"}
items["cigpack_plugaru"] = {"Plugaru", "Un packet de tigari Plugaru!",nil,0.1,"pocket"}
items["cigpack_dunhill"] = {"Dunhill", "Un packet de tigari Dunhill!",nil,0.1,"pocket"}
items["cigpack_carpati"] = {"Carpati", "Un packet de tigari Carpati!",nil,0.1,"pocket"}
items["cigpack_lmblue"] = {"L&M Albastru", "Un packet de tigari L&M Albastru!",nil,0.1,"pocket"}
items["cigpack_lmred"] = {"L&M Rosu", "Un packet de tigari L&M Rosu!",nil,0.1,"pocket"}
items["cigpack_kent"] = {"Kent 8", "Un packet de tigari Kent 8!",nil,0.1,"pocket"}
items["iarba"] = {"Iarba", "Cateva grame de iarba culese dintr-o planta!", nil, 0.1,"pocket"}
items["cocaina"] = {"Cocaina", "Cateva grame de cocaina", nil, 0.1,"pocket"}
items["metanfetamina"] = {"Metanfetamina", "Cateva grame de metanfetamina", nil, 0.1,"pocket"}
items["cigpack_marlboro"] = {"Marlboro", "Un packet de tigari Marlboro!",nil,0.1,"pocket"}
items["cigpack_sobranie"] = {"Sobranie Black Russian", "Un packet de tigari Sobranie Black Russian!",nil,0.1,"pocket"}
items["taxi_licenta"] = {"Licenta Taxi", "Licenta pentru jobul de taxi",nil,0.1,"pocket"}
items["mecanic_licenta"] = {"Licenta Mecanic", "Licenta pentru jobul de Mecanic",nil,0.1,"pocket"}
items["permis"] = {"Permis Masina", "Nu il pierde!",nil,0.1,"pocket"}
items["celular"] = {"Celular", "Nu il pierde!",nil,0.1,"pocket"}
items["M4A1"] = {"M4A1", "Nu il pierde!",nil,0.1,"pocket"}
items["lockpick"] = {"LockPick", "Pentru jaf!",nil,0.1,"pocket"}
items["laptop"] = {"Laptop", "Pentru jaf!",nil,0.1,"pocket"}
items["seminte"] = {"Seminte", "Pentru job traficant de droguri",nil,0.1,"pocket"}
items["prafcocaina"] = {"Praf Cocaina", "Pentru job traficant de droguri",nil,0.1,"pocket"}
items["prafxanax"] = {"Praf Xnax", "Pentru job traficant de droguri",nil,0.1,"pocket"}
items["thermal"] = {"Thermal", "Pentru jaf!",nil,0.1,"wpocket"}
items["id_card"] = {"Id Card", "Pentru jaf!",nil,0.1,"pocket"}
items["AK47"] = {"AK47", "Nu il pierde!",nil,0.1,"pocket"}
items["fibra"] = {"Fibra Optica", "Nu il pierde!",nil,0.1,"pocket"}


items["franghie"] = {"Franghie Groasa","Folosita Pentru A Lega Persoana Respectiva De Maini",function(args)
	local choices = {} 
	local idname = args[1]

	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId(player)
		if user_id   then
			vRPheadbag.cuffHands({player})
		end
	end}
	return choices
end,1.0,"pocket"}

items["drug_seeds"] = {"Seminte Plante","Seminte de plante exotice",function(args)
	local choices = {}
	local idname = args[1]
		
	choices["Planteaza"] = {function(player,choice,mod)
		local user_id = vRP.getUserId(player)
		if user_id   then
			vRPjobs.plantDrugSeed({player})
			vRP.closeMenu(player)
		end
	end}
	return choices
end,0.5}

items["chem_set"] = {"Set de Chimie","Un mic set de chimie",function(args)
	local choices = {}
	local idname = args[1]
		
	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId(player)
		if user_id   then
			vRP.closeMenu(player)
			vRPjobs.openChemSet({player})
		end
	end}
	return choices
end,1.0}

items["bandaj"] = {"Bandaje","Bandaje de calitate folosite pentru a vindeca rana in timp real.",function(args)
	local choices = {}
	local idname = args[1]

	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId(player)
		if user_id   then
			vRP.useBandaje(player)
		end
	end}
	return choices
end,0.5,"pocket"}

items["cigarettee"] = {"Tigara", "O tigara cu tutun columbian",function(args)
	local choices = {}
	local idname = args[1]
		
	choices["Aprinde"] = {function(player,choice,mod)
		local user_id = vRP.getUserId(player)
		if user_id   then
			if(vRP.getInventoryItemAmount(user_id,"lighter") > 0)then
				if(vRP.tryGetInventoryItem(user_id, idname, 1, false))then
					vRPclient.isInComa(player,{}, function(in_coma)
						if(in_coma)then
							vRPclient.notify(player, {"Eroare: ~r~Eu cred ca esti lesinat"})
						else
							vRPclient.playAnim(player, {true, {task="WORLD_HUMAN_SMOKING"}, false})
							SetTimeout(20000, function()
								vRPclient.stopAnim(player, {})
								vRPclient.varyHealth(player,{10})
							end)
						end
					end)
					vRPclient.notify(player, {"Succes: ~g~Ti-ai aprins tigara!"})
				else
					vRPclient.notify(player, {"Succes: ~r~Nu ai bricheta!"})
				end
			else
				vRPclient.notify(player, {"Eroare: ~r~Nu ai bricheta!"})
			end
			vRP.closeMenu(player)
		end
	end}
	return choices
end,0.05,"pocket"}

for i, v in pairs(items) do
	if(string.match(i, "cigpack"))then
		v[3] = function(args)
			local choices = {}
			local idname = args[1]
			
			choices["Scoate 20 Tigari"] = {function(player,choice,mod)
				local user_id = vRP.getUserId(player)
				if user_id   then
					if(vRP.tryGetInventoryItem(user_id, idname, 1, false))then
						vRP.giveInventoryItem(user_id,"cigarettee",20,true)
						vRPclient.notify(player, {"Succes: ~g~Ai scos o tigara din pachet!"})
					end
					vRP.closeMenu(player)
				end
			end}
			return choices
		end
	end
end


-- parametric weapon items
-- give "wbody|WEAPON_PISTOL" and "wammo|WEAPON_PISTOL" to have pistol body and pistol bullets

local get_wname = function(weapon_id)
  local name = string.gsub(weapon_id,"WEAPON_","")
  name = string.upper(string.sub(name,1,1))..string.lower(string.sub(name,2))
  return name
end

--- weapon body
local wbody_name = function(args)
  return get_wname(args[2]).." body"
end

local wbody_desc = function(args)
  return ""
end

local wbody_choices = function(args)
  local choices = {}
  local fullidname = joinStrings(args,"|")

  choices["Echipeaza"] = {function(player,choice)
    local user_id = vRP.getUserId(player)
    if user_id   then
      if vRP.tryGetInventoryItem(user_id, fullidname, 1, true) then -- give weapon body
        local weapons = {}
        weapons[args[2]] = {ammo = 0}
        vRPclient.giveWeapons(player, {weapons})

        vRP.closeMenu(player)
      end
    end
  end}

  return choices
end

local wbody_weight = function(args)
  return 0.75
end

items["wbody"] = {wbody_name,wbody_desc,wbody_choices,wbody_weight,"gun"}

--- weapon ammo
local wammo_name = function(args)
  return get_wname(args[2]).." ammo"
end

local wammo_desc = function(args)
  return ""
end

local wammo_choices = function(args)
  local choices = {}
  local fullidname = joinStrings(args,"|")

  choices["Incarca"] = {function(player,choice)
    local user_id = vRP.getUserId(player)
    if user_id   then
      local amount = vRP.getInventoryItemAmount(user_id, fullidname)
      vRP.prompt(player, "Suma de incarcare ? (max "..amount..")", "", function(player,ramount)
        ramount = parseInt(ramount)

        vRPclient.getWeapons(player, {}, function(uweapons)
          if uweapons[args[2]]   then -- check if the weapon is equiped
            if vRP.tryGetInventoryItem(user_id, fullidname, ramount, true) then -- give weapon ammo
              local weapons = {}
              weapons[args[2]] = {ammo = ramount}
              vRPclient.giveWeapons(player, {weapons,false})
              vRP.closeMenu(player)
            end
          end
        end)
      end)
    end
  end}

  return choices
end

local wammo_weight = function(args)
  return 0.01
end

items["wammo"] = {wammo_name,wammo_desc,wammo_choices,wammo_weight,"gun"}


return items
