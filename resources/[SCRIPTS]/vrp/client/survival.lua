-- api

function tvRP.varyHealth(variation)
  local ped = PlayerPedId()

  local n = math.floor(GetEntityHealth(ped)+variation)
  SetEntityHealth(ped,n)
end

function tvRP.getHealth()
  return GetEntityHealth(PlayerPedId())
end

function tvRP.setHealth(health)
  local n = math.floor(health)
  SetEntityHealth(PlayerPedId(),n)
end

function tvRP.setFriendlyFire(flag)
  NetworkSetFriendlyFireOption(flag)
  SetCanAttackFriendly(PlayerPedId(), flag, flag)
end

function tvRP.setPolice(flag)
  local player = PlayerId()
  SetPoliceIgnorePlayer(player, not flag)
  SetDispatchCopsForPlayer(player, flag)
end

-- impact thirst and hunger when the player is running (every 5 seconds)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(5000)

    if IsPlayerPlaying(PlayerId()) then
      local ped = PlayerPedId()

      -- variations for one minute
      local vthirst = 0
      local vhunger = 0

      -- on foot, increase thirst/hunger in function of velocity
      if IsPedOnFoot(ped) then
        local factor = math.min(tvRP.getSpeed(),10)

        vthirst = vthirst+1*factor
        vhunger = vhunger+0.5*factor
      end

      -- in melee combat, increase
      if IsPedInMeleeCombat(ped) then
        vthirst = vthirst+10
        vhunger = vhunger+5
      end

      -- injured, hurt, increase
      if IsPedHurt(ped) or IsPedInjured(ped) then
        vthirst = vthirst+2
        vhunger = vhunger+1
      end

      -- do variation
      if vthirst ~= 0 then
        vRPserver.varyThirst({vthirst/12.0})
      end

      if vhunger ~= 0 then
        vRPserver.varyHunger({vhunger/12.0})
      end
    end
  end
end)

local in_coma = false
local coma_left = cfg.coma_duration*60

local function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
  SetTextFont(font)
  SetTextProportional(0)
  SetTextScale(scale, scale)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0,255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextCentre(centre)
  SetTextEntry("STRING")
  AddTextComponentString(text)
  DrawText(x, y)
end

local comaText = ""

RegisterNetEvent("ples:addComa")
AddEventHandler("ples:addComa", function(val)
  coma_left = coma_left + val
end)

Citizen.CreateThread(function()
  while true do
    Citizen. Wait(5)
    local ped = PlayerPedId()

    if comaText:len() > 1 then
      drawTxt(comaText, 4, 1, 0.5, 0.85, 0.8, 255, 255, 255, 200)
      drawTxt("Daca ai murit ~r~Non-RP ~w~cheama un admin - ~y~(/calladmin)", 4, 1, 0.5, 0.90, 0.5, 255, 255, 255, 200)

      DisableControlAction(0,24, true)
      DisableControlAction(0,25, true)
      DisableControlAction(0, 1, true)
      DisableControlAction(0, 2, true)
    end
    
    local health = GetEntityHealth(ped)
    if health <= cfg.coma_threshold and coma_left > 0 then
      if not in_coma then
        if IsEntityDead(ped) then
          local x,y,z = tvRP.getPosition()
          NetworkResurrectLocalPlayer(x, y, z, true, true, false)
          Citizen. Wait(5)
        end

        in_coma = true
        vRPserver.updateHealth({cfg.coma_threshold})
        SetEntityHealth(ped, cfg.coma_threshold)
        SetEntityInvincible(ped,true)
        tvRP.playScreenEffect(cfg.coma_effect,-1)
        tvRP.ejectVehicle()
        tvRP.setRagdoll(true)
      else
        if health < cfg.coma_threshold then 
          SetEntityHealth(ped, cfg.coma_threshold) 
        end

      end
    else
      if in_coma then
        Citizen.CreateThread(function()
          in_coma = false
          comaText = "Apasa ~r~E ~w~pentru a primii respawn"

          local tooMutch = false
          Citizen.CreateThread(function()
            Citizen.Wait(5 * 60 * 1000)
            if GetEntityHealth(ped)-1 <= cfg.coma_threshold then
              tooMutch = true
            end
          end)

          while GetEntityHealth(ped)-1 <= cfg.coma_threshold do
             Wait(5)
            if IsControlJustPressed(0, 38) or tooMutch then
              break
            end
          end
          SetEntityInvincible(ped,false)
          tvRP.setRagdoll(false)
          tvRP.stopScreenEffect(cfg.coma_effect)
          comaText = ""

          if coma_left <= 0 then
            if GetEntityHealth(ped)-1 <= cfg.coma_threshold then
              SetEntityHealth(ped, 0)
            end
          end

          SetTimeout(6000, function()
            coma_left = cfg.coma_duration*60
          end)
        end)
      end
    end
  end
end)

function tvRP.isInComa()
  return in_coma
end

function tvRP.killComa()
  if in_coma then
    coma_left = 0
  end
end

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(900)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    if in_coma then
      coma_left = coma_left-1
      comaText = string.format("Ai murit ! Te respawnezi in ~r~%03d ~w~secunde", coma_left)
    end
  end
end)

function tvRP.isInComa()
  return in_coma
end

function tvRP.killComa()
  if in_coma then
    coma_left = 0
  end
end

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(4500)
    if in_coma then
      coma_left = coma_left-1
    end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(100)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0)
  end
end)