
-- periodic player state update

local state_ready = false

AddEventHandler("playerSpawned",function() -- delay state recording
  state_ready = false
  
	Citizen.CreateThread(function()
		Citizen.Wait(30000)
		state_ready = true
	end)  
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(900000)
		vRPserver.updateHoursPlayed({0.25})
	end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(30000)

    if IsPlayerPlaying(PlayerId()) and state_ready then
      local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
      vRPserver.updatePos({x,y,z})
      vRPserver.updateHealth({tvRP.getHealth()})
      vRPserver.updateWeapons({tvRP.getWeapons()})
      vRPserver.updateCustomization({tvRP.getCustomization()})
    end
  end
end)

-- WEAPONS

-- def
local weapon_types = {
  {"WEAPON_KNIFE"},
  {"WEAPON_STUNGUN"},
  {"WEAPON_FLASHLIGHT"},
  {"WEAPON_VINTAGEPISTOL"},
  {"WEAPON_CARBINERIFLE_MK2"},
  {"WEAPON_NIGHTSTICK"},
  {"WEAPON_HAMMER"},
  {"WEAPON_NAVYREVOLVER"},
  {"WEAPON_PISTOL_MK2"},
  {"WEAPON_SWITCHBLADE"},
  {"WEAPON_MACHETE"},
  {"WEAPON_KNUCKLE"},
  {"WEAPON_MINISMG"},
  {"WEAPON_BAT"},
  {"WEAPON_HATCHET"},
  {"WEAPON_DOUBLEACTION"},
  {"WEAPON_GOLFCLUB"},
  {"WEAPON_CROWBAR"},
  {"WEAPON_PISTOL","COMPONENT_AT_PI_SUPP_02","COMPONENT_AT_PI_FLSH","COMPONENT_PISTOL_VARMOD_LUXE"},
  {"WEAPON_COMBATPISTOL","COMPONENT_AT_PI_SUPP","COMPONENT_AT_PI_FLSH","COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER"},
  {"WEAPON_APPISTOL","COMPONENT_AT_PI_SUPP","COMPONENT_AT_PI_FLSH","COMPONENT_APPISTOL_VARMOD_LUXE"},
  {"WEAPON_PISTOL50","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_PI_FLSH","COMPONENT_PISTOL50_VARMOD_LUXE"},
  {"WEAPON_MICROSMG","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_PI_FLSH","COMPONENT_MICROSMG_VARMOD_LUXE"},
  {"WEAPON_SMG","COMPONENT_AT_PI_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_SMG_VARMOD_LUXE"},
  {"WEAPON_ASSAULTSMG","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_AR_FLSH","COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"},
  {"WEAPON_ASSAULTRIFLE","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_AR_FLSH","COMPONENT_ASSAULTRIFLE_VARMOD_LUXE","COMPONENT_AT_AR_AFGRIP"},
  {"WEAPON_SPECIALCARABINE","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_AR_FLSH","COMPONENT_ASSAULTRIFLE_VARMOD_LUXE","COMPONENT_AT_AR_AFGRIP"},
  {"WEAPON_CARBINERIFLE","COMPONENT_AT_AR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_CARBINERIFLE_VARMOD_LUXE","COMPONENT_AT_AR_AFGRIP"},
  {"WEAPON_ADVANCEDRIFLE","COMPONENT_AT_AR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"},
  {"WEAPON_SPECIALCARBINE","COMPONENT_AT_AR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_SPECIALCARBINE_VARMOD_LUXE"},
  {"WEAPON_MG"},
  {"WEAPON_COMBATMG"},
  {"WEAPON_PUMPSHOTGUN","COMPONENT_AT_SR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"},
  {"WEAPON_SAWNOFFSHOTGUN"},
  {"WEAPON_ASSAULTSHOTGUN","COMPONENT_AT_AR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_AT_AR_AFGRIP"},
  {"WEAPON_HEAVYSHOTGUN","COMPONENT_AT_AR_SUPP","COMPONENT_AT_AR_FLSH","COMPONENT_AT_AR_AFGRIP"},
  {"WEAPON_BULLPUPSHOTGUN","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_AR_FLSH"},
  {"WEAPON_STUNGUN"},
  {"WEAPON_SNIPERRIFLE","COMPONENT_AT_AR_SUPP_02"},
  {"WEAPON_HEAVYSNIPER"},
  {"WEAPON_COMBATMG_MK2"},
  {"WEAPON_REMOTESNIPER"},
  {"WEAPON_HEAVYSNIPER_MK2"},
  {"WEAPON_GUSENBERG"},
  {"WEAPON_GRENADELAUNCHER"},
  {"WEAPON_GRENADELAUNCHER_SMOKE"},
  {"WEAPON_RPG"},
  {"WEAPON_PASSENGER_ROCKET"},
  {"WEAPON_AIRSTRIKE_ROCKET"},
  {"WEAPON_STINGER"},
  {"WEAPON_MINIGUN"},
  {"WEAPON_GRENADE"},
  {"WEAPON_STICKYBOMB"},
  {"WEAPON_SMOKEGRENADE"},
  {"WEAPON_BZGAS"},
  {"WEAPON_MOLOTOV"},
  {"WEAPON_FIREEXTINGUISHER"},
  {"WEAPON_PETROLCAN"},
  {"WEAPON_DIGISCANNER"},
  {"WEAPON_BRIEFCASE"},
  {"WEAPON_BRIEFCASE_02"},
  {"WEAPON_BALL"},
  {"WEAPON_FLARE"}
}

function tvRP.getWeaponTypes()
  return weapon_types
end

function tvRP.getWeapons()
  local player = PlayerPedId()

  local ammo_types = {} -- remember ammo type to not duplicate ammo amount

  local weapons = {}
  for k,v in pairs(weapon_types) do
    local hash = GetHashKey(v[1])
    if HasPedGotWeapon(player,hash) then
      local weapon = {}
      weapons[v[1]] = weapon

      local atype = Citizen.InvokeNative(0x7FEAD38B326B9F74, player, hash)
      if ammo_types[atype] == nil then
        ammo_types[atype] = true
        weapon.ammo = GetAmmoInPedWeapon(player,hash)
      else
        weapon.ammo = 0
      end
      if v[2]   then
        if HasPedGotWeaponComponent(player,hash, GetHashKey(tostring(v[2]))) == 1 then
          weapon.supressor = tostring(v[2])
        else
          weapon.supressor = "nu"
        end
      end
      if v[3]   then
        if HasPedGotWeaponComponent(player,hash, GetHashKey(tostring(v[3]))) == 1 then
          weapon.flash = tostring(v[3])
        else
          weapon.flash = "nu"
        end
      end
      if v[4]   then
        if HasPedGotWeaponComponent(player,hash, GetHashKey(tostring(v[4]))) == 1 then
          weapon.yusuf = tostring(v[4])
        else
          weapon.yusuf = "nu"
        end
      end
      if v[5]   then
        if HasPedGotWeaponComponent(player,hash, GetHashKey(tostring(v[5]))) == 1 then
          weapon.grip = tostring(v[5])
        else
          weapon.grip = "nu"
        end
      end
    end
  end

  return weapons
end

function formatMoney(amount)
  local left,num,right = string.match(tostring(amount),'^([^%d]*%d)(%d*)(.-)$')
  return left..(num:reverse():gsub('(%d%d%d)','%1.'):reverse())..right
end


function filtern(t, cb) 
   local j = 1 
   for i, v in ipairs(t) do 
      if cb(v) then 
         t[j] = v 
         j = j + 1 
      end 
   end 
   while t[j]   do 
      t[j] = nil 
      j = j + 1 
   end 
   return t 
end

-- RP gain thing

local onScreenEffects = {}
local rpgainth = false

function AddFloatingRpGained(x, y, z, text,r,g,b,a,sprite) 
    onScreenEffects[#onScreenEffects + 1] = {
        x = x + GetRandomFloatInRange(-0.5, 0.5), 
        y = y + GetRandomFloatInRange(-0.5, 0.5), 
        z = z + GetRandomFloatInRange(-0.5, 0.5),
        sprite = sprite,
        text = text,
        yFade = 1.0,
        r = r,
        g = g,
        b = b,
        a = a,
        fadeAfter = 15,
        ticks = 60
    }
    if not rpgainth then
      rpgainth = true
      Citizen.CreateThread(function() 
          while true do
              RequestStreamedTextureDict("MPHud")
              if next(onScreenEffects) == nil then
                rpgainth = false
                break
              end
              for i, e in pairs(onScreenEffects) do
                  local sw, sh = GetScreenResolution()
                  local w = 18.0
                  local h = 18.0
                  local sY = e.yFade
                  
                  SetDrawOrigin(e.x, e.y, e.z, 0)
                  SetTextFont(4)
                  SetTextColour(255, 255, 255, 255)
                  SetTextScale(0.42, 0.42)
                  SetTextDropShadow(2, 2, 0, 0, 0)
                  SetTextOutline()
                  SetTextEntry("STRING")
                  SetTextColour(e.r,e.g,e.b,e.a)
                  AddTextComponentString(e.text)
                  DrawText(8 / sw, (-10.0 - sY) / sh)
                  if(e.sprite ~= "giftsIcon")then
                    DrawSprite("MPHud", e.sprite, 0.0, -sY / sh, w / sw, h / sh, 0.0, 255, 255, 255, 255)
                  else
                    DrawSprite("giftsIcon", "giftsIcon", 0.0, -sY / sh, w / sw, h / sh, 0.0, 255, 255, 255, 255)
                  end
                  ClearDrawOrigin()
                  
                  if e.fadeAfter <= 0 then 
                      e.yFade = e.yFade * 0.5
                  end
                  e.ticks = e.ticks - 1
                  e.fadeAfter = e.fadeAfter - 1
              end
              onScreenEffects = filtern(onScreenEffects, function(e) return e.ticks > 0 end)
               Wait(5)
          end
      end)
    end
end

function tvRP.arataTranzactie(tip,amount,gType)
  pos = GetEntityCoords(PlayerPedId())
  --print("test")
  local bani = tonumber(amount)
    if tip == "plus" then
      AddFloatingRpGained(pos.x, pos.y, pos.z, " +".. formatMoney(bani), 0, 255, 0, 255,"mp_anim_cash")
      PlaySound(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
    else
      AddFloatingRpGained(pos.x, pos.y, pos.z, " -".. formatMoney(bani), 255, 0, 0, 255,"mp_anim_cash")
      PlaySound(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
    end
end

function tvRP.giveWeapons(weapons,clear_before)
  local player = PlayerPedId()

  -- give weapons to player

  if clear_before then
    RemoveAllPedWeapons(player,true)
  end

  for k,weapon in pairs(weapons) do
    local hash = GetHashKey(k)
    local ammo = weapon.ammo or 0
    GiveWeaponToPed(player, hash, ammo, false)
    if weapon.supressor ~= "nu" and weapon.supressor   then
      GiveWeaponComponentToPed(PlayerPedId(), hash, GetHashKey(weapon.supressor))
    end
    if weapon.flash ~= "nu" and weapon.flash   then
      GiveWeaponComponentToPed(PlayerPedId(), hash, GetHashKey(weapon.flash))
    end
    if weapon.yusuf ~= "nu" and weapon.yusuf   then
      GiveWeaponComponentToPed(PlayerPedId(), hash, GetHashKey(weapon.yusuf))
    end
    if weapon.grip ~= "nu" and weapon.grip   then
      GiveWeaponComponentToPed(PlayerPedId(), hash, GetHashKey(weapon.grip))
    end
  end
end

--[[
function tvRP.dropWeapon()
  SetPedDropsWeapon(PlayerPedId())
end
--]]

-- PLAYER CUSTOMIZATION

-- parse part key (a ped part or a prop part)
-- return is_proppart, index
local function parse_part(key)
  if type(key) == "string" and string.sub(key,1,1) == "p" then
    return true,tonumber(string.sub(key,2))
  else
    return false,tonumber(key)
  end
end

function tvRP.getDrawables(part)
  local isprop, index = parse_part(part)
  if isprop then
    return GetNumberOfPedPropDrawableVariations(PlayerPedId(),index)
  else
    return GetNumberOfPedDrawableVariations(PlayerPedId(),index)
  end
end

function tvRP.getDrawableTextures(part,drawable)
  local isprop, index = parse_part(part)
  if isprop then
    return GetNumberOfPedPropTextureVariations(PlayerPedId(),index,drawable)
  else
    return GetNumberOfPedTextureVariations(PlayerPedId(),index,drawable)
  end
end

function tvRP.getCustomization()
  local ped = PlayerPedId()

  local custom = {}

  custom.modelhash = GetEntityModel(ped)

  -- ped parts
  for i=0,20 do -- index limit to 20
    custom[i] = {GetPedDrawableVariation(ped,i), GetPedTextureVariation(ped,i), GetPedPaletteVariation(ped,i)}
  end

  -- props
  for i=0,10 do -- index limit to 10
    custom["p"..i] = {GetPedPropIndex(ped,i), math.max(GetPedPropTextureIndex(ped,i),0)}
  end

  return custom
end

-- partial customization (only what is set is changed)
-- partial customization (only what is set is changed)
function tvRP.setCustomization(custom) -- indexed [drawable,texture,palette] components or props (p0...) plus .modelhash or .model
  local exit = TUNNEL_DELAYED() -- delay the return values

  Citizen.CreateThread(function() -- new thread
    if custom then
      local ped = PlayerPedId()
      local mhash = nil

      -- model
      if custom.modelhash   then
        mhash = custom.modelhash
      elseif custom.model   then
        mhash = GetHashKey(custom.model)
      end

      if mhash   then
        local i = 0
        while not HasModelLoaded(mhash) and i < 10000 do
          RequestModel(mhash)
          Citizen.Wait(10)
        end

        if HasModelLoaded(mhash) then
          -- changing player model remove weapons, so save it
          local weapons = tvRP.getWeapons()
          SetPlayerModel(PlayerId(), mhash)
          tvRP.giveWeapons(weapons,true)
          SetModelAsNoLongerNeeded(mhash)
        end
      end

      ped = PlayerPedId()

      -- parts
      for k,v in pairs(custom) do
        if k ~= "model" and k ~= "modelhash" then
          local isprop, index = parse_part(k)
          if isprop then
            if v[1] < 0 then
              ClearPedProp(ped,index)
            else
              SetPedPropIndex(ped,index,v[1],v[2],v[3] or 2)
            end
          else
            SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 2)
          end
        end
      end
    end

    exit({})
  end)
end