-- pause
AddEventHandler("vRP:pauseChange", function(paused)
	SendNUIMessage({act="pause_change", paused=paused})
end)

-- MENU
function tvRP.openMenuData(menudata)
  SendNUIMessage({act="open_menu", menudata = menudata})
  SetNuiFocus(false)
  SetNuiFocus(false)
  vRPserver.promptResult()
end

function tvRP.closeMenu()
  SendNUIMessage({act="close_menu"})
  SetNuiFocus(false)
  SetNuiFocus(false)
  vRPserver.promptResult()
end

-- PROMPT
function tvRP.prompt(title,default_text)
  SendNUIMessage({act="prompt",title=title,text=tostring(default_text)})
  SetNuiFocus(true)
end

function tvRP.setPhonePos(posX,posY)
  SendNUIMessage({act="setMenuPos",pos={descPos={0,0},menuPos={posX,posY}} })
end


RegisterNUICallback("saveMenuPos",function(data,cb)
  -- saveMenuPos
  cb('ok')
  --print(data.menuPos[1],data.menuPos[2])
  TriggerServerEvent("saveMenuPos",data.menuPos[1],data.menuPos[2])
end)

function tvRP.request(id,text,time)
  SendNUIMessage({act="request",id=id,text=tostring(text),time = time})
  tvRP.playSound("HUD_MINI_GAME_SOUNDSET","5_SEC_WARNING")
end

-- gui menu events
RegisterNUICallback("menu",function(data,cb)
  if data.act == "close" then
	  vRPserver.closeMenu({data.id})
  elseif data.act == "valid" then
	  vRPserver.validMenuChoice({data.id,data.choice,data.mod})
  end
end)

function tvRP.sendCoordsToClipboard()
    local _GPED = PlayerPedId()
    local coords = GetEntityCoords(_GPED)
    SendNUIMessage({
        act = 'clipboard',
        text = coords[1] .. ',' .. coords[2] .. ',' .. coords[3]
    })
    tvRP.notify('Succes: The coords have been copied!')
end

-- gui prompt event
RegisterNUICallback("prompt",function(data,cb)
  if string.len(data.result) <= 300 then
	  if data.act == "close" then
		  SetNuiFocus(false)
		  SetNuiFocus(false)
		  vRPserver.promptResult({data.result})
	  end
  else
	  if data.act == "close" then
		  SetNuiFocus(false)
		  SetNuiFocus(false)
		  tvRP.notify("Eroare: Limita de caractere atinsa")
	  end
  end
end)

-- gui request event
RegisterNUICallback("request",function(data,cb)
  if data.act == "response" then
	  vRPserver.requestResult({data.id,data.ok})
  end
end)

-- cfg
RegisterNUICallback("cfg",function(data,cb) -- if NUI loaded after
	SendNUIMessage({act="cfg",cfg=cfg.gui})
end)
SendNUIMessage({act="cfg",cfg=cfg.gui}) -- if NUI loaded before

-- try to fix missing cfg issue (cf: https://github.com/ImagicTheCat/vRP/issues/89)
for i=1,5 do
	SetTimeout(5000*i, function() SendNUIMessage({act="cfg",cfg=cfg.gui}) end)
end

-- PROGRESS BAR

-- create/update a progress bar
function tvRP.setProgressBar(name,anchor,text,r,g,b,value)
  local pbar = {name=name,anchor=anchor,text=text,r=r,g=g,b=b,value=value}

  -- default values
  if pbar.value == nil then pbar.value = 0 end

  SendNUIMessage({act="set_pbar",pbar = pbar})
end

-- set progress bar value in percent
function tvRP.setProgressBarValue(name,value)
	SendNUIMessage({act="set_pbar_val", name = name, value = value})
end

-- set progress bar text
function tvRP.setProgressBarText(name,text)
	SendNUIMessage({act="set_pbar_text", name = name, text = text})
end

-- remove a progress bar
function tvRP.removeProgressBar(name)
	SendNUIMessage({act="remove_pbar", name = name})
end

-- DIV

-- set a div
-- css: plain global css, the div class is "div_name"
-- content: html content of the div
function tvRP.setDiv(name,css,content)
	SendNUIMessage({act="set_div", name = name, css = css, content = content})
end

-- set the div css
function tvRP.setDivCss(name,css)
	SendNUIMessage({act="set_div_css", name = name, css = css})
end

-- set the div content
function tvRP.setDivContent(name,content)
	SendNUIMessage({act="set_div_content", name = name, content = content})
end

-- execute js for the div
-- js variables: this is the div
function tvRP.divExecuteJS(name,js)
	SendNUIMessage({act="div_execjs", name = name, js = js})
end

-- remove the div
function tvRP.removeDiv(name)
	SendNUIMessage({act="remove_div", name = name})
end

-- CONTROLS/GUI
local paused = false

function tvRP.isPaused()
	return paused
end

function tvRP.setPhonePos(posX,posY)
		  SendNUIMessage({act="setMenuPos",pos={descPos={0,0},menuPos={posX,posY}} })
end

tastaBlocata = false
function tvRP.disableMeniu(bool)
	tastaBlocata = bool
end

isChangingPos = false
menuLeftRight = 0
menuTopBottom = 0
function tvRP.setPosition(type)
    if type == 1 then
        isChangingPos = true
        TriggerEvent("chatMessage","^1Info: ^0Apasa pe ^1sageti ^0pentru a muta pozitia telefonului")
        TriggerEvent("chatMessage","^1Info: ^0Apasa ^1backspace ^0pentru a salva pozitia telefonului")
        Citizen.CreateThread(function()
            while true do
                 Wait(5)
                if IsControlPressed(0,174) then
                    menuLeftRight = menuLeftRight - 1
                    SendNUIMessage({act="event",event="RPLeft",menu=1})
                    Wait(25)
                elseif IsControlPressed(0,175) then
                    menuLeftRight = menuLeftRight + 1
                    SendNUIMessage({act="event",event="RPRight",menu=1})
                    Wait(25)
                elseif IsControlPressed(0,173) then -- down
                    menuTopBottom = menuTopBottom + 1
                    SendNUIMessage({act="event",event="RPDown",menu=1})
                    Wait(25)
                elseif IsControlPressed(0,172) then -- up
                    menuTopBottom = menuTopBottom - 1
                    SendNUIMessage({act="event",event="RPUp",menu=1})
                    Wait(25)
                elseif IsControlJustPressed(0,177) and isChangingPos then
                    --TriggerServerEvent("saveMenuPos",menuTopBottom,menuLeftRight)
          			SendNUIMessage({act="saveMenuPos"})
                    tvRP.notify("Succes: ~w~Telefonul a fost mutat si salvat cu succes")
                    isChangingPos = false
                    break
                end
            end
        end)
    end
end

local shiftBlocat = false
function tvRP.disableTastaShift(bool)
  shiftBlocat = bool
  Citizen.CreateThread(function()
	  while true do
		  if shiftBlocat then
			  DisableControlAction(0, 21, true)
			  DisableControlAction(0, 61, true)
			  DisableControlAction(0, 131, true)
			  DisableControlAction(0, 155, true)
			  DisableControlAction(0, 209, true)
			  DisableControlAction(0, 254, true)
			  DisableControlAction(0, 340, true)
			  DisableControlAction(0, 352, true)
		  else
			  break
		  end
		   Wait(5)
	  end
  end)
end

local annState = true
RegisterNetEvent("alpha:announces")
AddEventHandler("alpha:announces", function(state)
  annState = state
end)

function tvRP.announce(background,content)
  if annState then
    SendNUIMessage({act="announce",background=background,content=content})
  end
end

--==========TELEFON==========--

isChangingPos = false




--===========HOTKEYS===========--
local isCrouched = false
local isHandsUp = false
local isInvOn = false
local isBusted = false

local pTalked = false
local isPointing = false

Citizen.CreateThread(function()
  while true do
	  local ped = PlayerPedId()
	  if(DoesEntityExist(ped) and not IsEntityDead(ped))then
		  DisableControlAction(0, 36, true)

		  if(not IsPauseMenuActive())then
			  if(IsDisabledControlJustPressed(0, 36))then
				  RequestAnimSet("move_ped_crouched")

				  while(not HasAnimSetLoaded("move_ped_crouched"))do
					  Citizen.Wait(100)
				  end

				  if(isCrouched)then
					  RemoveAnimSet("move_ped_crouched")
					  ResetPedMovementClipset(ped, 0)
					  isCrouched = false
				  else
					  SetPedMovementClipset(ped, "move_ped_crouched", 0.55)
					  isCrouched = true
				  end
			  end
		  end
	  end
	   Wait(5)
  end
end)


RegisterCommand("k", function()
  local ped = PlayerPedId()
  if(DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPedInAnyVehicle(ped, false) and not GymInWorkout)then
	  isBusted = true
	  RequestAnimDict("random@arrests")
	  while(not HasAnimDictLoaded("random@arrests"))do
		  Citizen.Wait(50)
	  end
	  RequestAnimDict("random@arrests@busted")
	  while(not HasAnimDictLoaded("random@arrests@busted"))do
		  Citizen.Wait(50)
	  end
	  if(IsEntityPlayingAnim(ped, "random@arrests@busted", "idle_a", 3))then 
		  TaskPlayAnim(ped, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
		  Wait(3000)
		  TaskPlayAnim(ped, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0)
		  isBusted = false
	  else
		  TaskPlayAnim(ped, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
		  Wait(4000)
		  TaskPlayAnim(ped, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
		  Wait(500)
		  TaskPlayAnim(ped, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
		  Wait(1000)
		  TaskPlayAnim(ped, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0)
		  Citizen.CreateThread(function()
			  while isBusted do
				   Wait(5)
				  DisableControlAction(1, 140, true)
				  DisableControlAction(1, 141, true)
				  DisableControlAction(1, 142, true)
			  end
		  end)
	  end
  end
end, false)

local function loadAnimDict(dict)
  while not HasAnimDictLoaded(dict) do
	  RequestAnimDict(dict)
	  Citizen. Wait(5)
  end
  return true
end

local function playAnim(dict, name)
  local ped = PlayerPedId()
  loadAnimDict(dict)
  TaskPlayAnim(ped, dict, name, 8.0, 1.0, -1, 2, 0, 0, 0, 0)
end

RegisterCommand("drop", function()
  local ped = PlayerPedId()
  if(DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPauseMenuActive() and IsPedArmed(ped, 7) and IsPedOnFoot(ped) and not isHandsUp and not isBusted and not GymInWorkout and not tvRP.isHandcuffed())then
	  playAnim("weapons@first_person@aim_rng@generic@projectile@sticky_bomb@", "plant_floor")
	  Citizen.Wait(1000)
	  SetPedDropsInventoryWeapon(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0.0, 2.3, -0.9, -1)
	  ClearPedTasks(PlayerPedId())
  end
end)

local function startPointing()
  local ped = PlayerPedId()
  RequestAnimDict("anim@mp_point")
  while not HasAnimDictLoaded("anim@mp_point") do
	   Wait(5)
  end
  SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
  SetPedConfigFlag(ped, 36, 1)
  Citizen.InvokeNative(0x2D537BA194896636, ped, "task_mp_pointing", 0.5, 0, "anim@mp_point", 24)
  RemoveAnimDict("anim@mp_point")
end

local function stopPointing()
  local ped = PlayerPedId()
  Citizen.InvokeNative(0xD01015C7316AE176, ped, "Stop")
  if not IsPedInjured(ped) then
	  ClearPedSecondaryTask(ped)
  end
  if not IsPedInAnyVehicle(ped, 1) then
	  SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
  end
  SetPedConfigFlag(ped, 36, 0)
  ClearPedSecondaryTask(PlayerPedId())
end

local hotkeys = {
  [168] = {
	  group = 0,
	  pressed = function()
		  tvRP.showPenaltySystem()
	  end,
	  released = function() end
  },
  [29] = {
	  -- B Pointing
	  group = 0,
	  pressed = function()
		  if IsPedOnFoot(PlayerPedId()) and not tastaBlocata and not isHandsUp and not isBusted and not GymInWorkout and not tvRP.isHandcuffed() then
			  if isPointing then
				  isPointing = false
				  stopPointing()
			  else
				  isPointing = true
				  startPointing()
			  end
			  Citizen.CreateThread(function()
				  while true do
					  if isPointing then
						  local ped = PlayerPedId()
						  local camPitch = GetGameplayCamRelativePitch()
						  if camPitch < -70.0 then
							  camPitch = -70.0
						  elseif camPitch > 42.0 then
							  camPitch = 42.0
						  end
						  camPitch = (camPitch + 70.0) / 112.0
						  local camHeading = GetGameplayCamRelativeHeading()
						  local cosCamHeading = Cos(camHeading)
						  local sinCamHeading = Sin(camHeading)
						  if camHeading < -180.0 then
							  camHeading = -180.0
						  elseif camHeading > 180.0 then
							  camHeading = 180.0
						  end
						  camHeading = (camHeading + 180.0) / 360.0
						  local blocked = 0
						  local nn = 0
						  local coords = GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
						  local ray = Cast_3dRayPointToPoint(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7);
						  nn,blocked,coords,coords = GetRaycastResult(ray)
						  Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, "Pitch", camPitch)
						  Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, "Heading", camHeading * -1.0 + 1.0)
						  Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, "isBlocked", blocked)
						  Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, "isFirstPerson", Citizen.InvokeNative(0xEE778F8C7E1142E2, Citizen.InvokeNative(0x19CAFA3C87F7C2FF)) == 4)
						  SetCurrentPedWeapon(ped,GetHashKey("WEAPON_UNARMED"),true)
					  else
						  break
					  end
					   Wait(5)
				  end
			  end)
		  end
	  end,
	  released = function() end
  },
  [182] = {
	  -- U Lock/UnLock Car
	  group = 0,
	  pressed = function()
			if not tvRP.isHandcuffed() then
			  local types = {"car", "bike"}
			  if tvRP.getNearestOwnedVehicle(20) then
					for _, veh in pairs(types) do
					  tvRP.vc_toggleLock(veh)
					  Wait(300)
					end
			  end
			end
	  end,
	  released = function() end
  },
  [323] = {
	  -- X Hands Up
	  group = 1,
	  pressed = function()
		  local ped = PlayerPedId()
		  if not isBusted and not GymInWorkout and not tvRP.isHandcuffed() and not IsPedInAnyVehicle(ped, false) and not IsPedSwimming(ped) and not IsPedShooting(ped) and not IsPedClimbing(ped) and not IsPedDiving(ped) and not IsPedFalling(ped) and not IsPedJumping(ped) and not IsPedJumpingOutOfVehicle(ped) and IsPedOnFoot(ped) and not IsPedRunning(ped) and not IsPedUsingAnyScenario(ped) and not IsPedInParachuteFreeFall(ped) then
			  isHandsUp = true
			  Citizen.CreateThread(function()
				  while true do
					  if isHandsUp then
						  RequestAnimDict("missminuteman_1ig_2")
						  while(not HasAnimDictLoaded("missminuteman_1ig_2"))do
							  Citizen.Wait(50)
						  end
						  local ped = PlayerPedId()
						  SetCurrentPedWeapon(ped, 0xA2719263, true)
						  TaskPlayAnim(ped, 'missminuteman_1ig_2', 'handsup_enter', 8.0, 8.0, -1, 50, 0, false, false, false)
						  while isHandsUp do
							   Wait(5)
						  end
					  else
						  RemoveAnimSet("missminuteman_1ig_2")
						  break
					  end
					   Wait(5)
				  end
			  end)
			end
	  end,
	  released = function()
		  local ped = PlayerPedId()
		  if not isBusted and not GymInWorkout and not tvRP.isHandcuffed() and not IsPedInAnyVehicle(ped, false) and not IsPedSwimming(ped) and not IsPedShooting(ped) and not IsPedClimbing(ped) and not IsPedDiving(ped) and not IsPedFalling(ped) and not IsPedJumping(ped) and not IsPedJumpingOutOfVehicle(ped) and IsPedOnFoot(ped) and not IsPedRunning(ped) and not IsPedUsingAnyScenario(ped) and not IsPedInParachuteFreeFall(ped) then
			  isHandsUp = false
			  RemoveAnimSet("missminuteman_1ig_2")
			  ClearPedSecondaryTask(ped)
			end
	  end
  },
	[20] = {
	  -- Z Inventory
	  group = 0,
	  pressed = function()
		  if not tastaBlocata and not GymInWorkout and not tvRP.isHandcuffed() and not tvRP.isInEvent() then
			  if isInvOn then
				  vRPserver.HotkeyMainInventory({false})
				  isInvOn = false
			  else
				  vRPserver.HotkeyMainInventory({true})
				  isInvOn = true
			  end
		  end
	  end,
	  released = function() end
  }
}
--===========HOTKEYS===========--

isChangingPos = false

local keytable = {
  ["k"] = {
      commandname = "gui_openmainmenu",
      description = "Deschide meniul principal K",
      func = function() if (not tvRP.isInEvent()) and (not tvRP.isInComa() or not cfg.coma_disable_menu) and (not tvRP.isHandcuffed() or not cfg.handcuff_disable_menu) and not isChangingPos then vRPserver.openMainMenu({}) end end
  },
  ["up"] = {
    commandname = "gui_menuup",
    description = "Key UP",
    func = function() 
      if not isChangingPos then
        SendNUIMessage({act="event",event="UP"})
        CreateThread(function()
          local timer = 0
          while IsControlPressed(table.unpack(cfg.controls.phone.up)) do
             Wait(5)
            timer = timer + 1
            if timer > 30 then
            Wait(25)
            SendNUIMessage({act="event",event="UP"})
            end
          end
        end)
      end
     end
  },
  ["down"] = {
    commandname = "gui_menudown",
    description = "Key DOWN",
    func = function() 
      if not isChangingPos then
        SendNUIMessage({act="event",event="DOWN"}) 
        CreateThread(function()
          local timer = 0
          while IsControlPressed(table.unpack(cfg.controls.phone.down)) do
             Wait(5)
            timer = timer + 1
            if timer > 30 then
            Wait(25)
            SendNUIMessage({act="event",event="DOWN"})
            end
          end
        end)
      end
    end
  },
  ["left"] = {
    commandname = "gui_menuleft",
    description = "Key LEFT",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="LEFT"}) end end
  },
  ["right"] = {
    commandname = "gui_menuright",
    description = "Key RIGHT",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="RIGHT"}) end end
  },
  ["return"] = {
    commandname = "gui_menuselect",
    description = "Key SELECT",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="SELECT"}) end end
  },
  ["back"] = {
    commandname = "gui_menuback",
    description = "Key BACK",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="CANCEL"}) end end
  },
  ["F5"] = {
    commandname = "gui_menuF5",
    description = "Accepta apel",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="F5"}) end end
  },
  ["F6"] = {
    commandname = "gui_menuF6",
    description = "Respinge Apel",
    func = function() if not isChangingPos then SendNUIMessage({act="event",event="F6"}) end end
  }
}

for k,v in pairs(keytable) do
  RegisterCommand(v.commandname, function()
    v.func()
  end, false)
  RegisterKeyMapping(v.commandname, v.description, 'keyboard', k)
end

--===========HANDSUP===========--
local isHandsUp = false

local function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen. Wait(5)
    end
    return true
end

local function playAnim(dict, name)
    local ped = PlayerPedId()
    loadAnimDict(dict)
    TaskPlayAnim(ped, dict, name, 8.0, 1.0, -1, 2, 0, 0, 0, 0)
end

local hotkeys = {
    [323] = {
        -- X Hands Up
        group = 1,
        pressed = function()
            local ped = PlayerPedId()
            if not isBusted and not GymInWorkout and not tvRP.isHandcuffed() and not IsPedInAnyVehicle(ped, false) and not IsPedSwimming(ped) and not IsPedShooting(ped) and not IsPedClimbing(ped) and not IsPedDiving(ped) and not IsPedFalling(ped) and not IsPedJumping(ped) and not IsPedJumpingOutOfVehicle(ped) and IsPedOnFoot(ped) and not IsPedRunning(ped) and not IsPedUsingAnyScenario(ped) and not IsPedInParachuteFreeFall(ped) then
                isHandsUp = true
                Citizen.CreateThread(function()
                    while true do
                        if isHandsUp then
                            RequestAnimDict("missminuteman_1ig_2")
                            while(not HasAnimDictLoaded("missminuteman_1ig_2"))do
                                Citizen.Wait(50)
                            end
                            local ped = PlayerPedId()
                            SetCurrentPedWeapon(ped, 0xA2719263, true)
                            TaskPlayAnim(ped, 'missminuteman_1ig_2', 'handsup_enter', 8.0, 8.0, -1, 50, 0, false, false, false)
                            while isHandsUp do
                                 Wait(5)
                            end
                        else
                            RemoveAnimSet("missminuteman_1ig_2")
                            break
                        end
                         Wait(5)
                    end
                end)
              end
        end,
        released = function()
            local ped = PlayerPedId()
            if not isBusted and not GymInWorkout and not tvRP.isHandcuffed() and not IsPedInAnyVehicle(ped, false) and not IsPedSwimming(ped) and not IsPedShooting(ped) and not IsPedClimbing(ped) and not IsPedDiving(ped) and not IsPedFalling(ped) and not IsPedJumping(ped) and not IsPedJumpingOutOfVehicle(ped) and IsPedOnFoot(ped) and not IsPedRunning(ped) and not IsPedUsingAnyScenario(ped) and not IsPedInParachuteFreeFall(ped) then
                isHandsUp = false
                RemoveAnimSet("missminuteman_1ig_2")
                ClearPedSecondaryTask(ped)
              end
        end
    }
}
--===========HANDSUP===========--

Citizen.CreateThread(function()
  while true do
	  Citizen. Wait(5)
	  for k,v in pairs(hotkeys) do
		  if IsControlJustPressed(v.group, k) then
			  v.pressed()
		  end
		  if IsControlJustReleased(v.group, k) then
			  v.released()
		  end
	  end
	end
end)