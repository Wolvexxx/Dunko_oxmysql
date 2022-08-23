function ShowMPMessage(message, subtitle, ms)
    Citizen.CreateThread(function()
        local scaleform = RequestScaleformMovie("mp_big_message_freemode")
        while not HasScaleformMovieLoaded(scaleform) do
            Citizen. Wait(5)
        end
        
        BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
        PushScaleformMovieMethodParameterString(message)
        PushScaleformMovieMethodParameterString(subtitle)
        PushScaleformMovieMethodParameterInt(0)
        EndScaleformMovieMethod()
        
        local time = GetGameTimer() + ms
        
        while (GetGameTimer() < time) do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
        end
    end)
end

function tvRP.toggleInvisible()
    invisible = not invisible
    local ped = PlayerPedId()
    if invisible then
        SetEntityInvincible(ped, true)
        SetEntityVisible(ped, false, false)
    else
        SetEntityInvincible(ped, false)
        SetEntityVisible(ped, true, false)
    end
end

function tvRP.invisiblemod()
    invisiblehaha = not invisiblehaha
    local ped = PlayerPedId()
    if invisiblehaha then
        SetEntityInvincible(ped, true)
        SetEntityVisible(ped, false, false)
        tvRP.notify("~g~Succes: Acum esti ~r~invizibil.")
    else
        SetEntityInvincible(ped, false)
        SetEntityVisible(ped, true, false)
        tvRP.notify("~g~Succes: Acum esti ~g~vizibil.")
    end
end

function tvRP.isInvisible()
    return invisible
end

tvRP.adminAnnouncement = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~r~ANUNT ADMIN")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.bonusAnnouncement = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~p~Bonus")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.bonusAnnouncement2 = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~r~Bonus")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.paydayAnnouncement = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~b~PAYDAY")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.eventAnnouncement2 = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~r~EVENT OPRIT")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.eventAnnouncement = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~g~EVENT PORNIT")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

tvRP.cleanupAnnouncement = function(subtitle, message, ms)
    ms = ms or 7000
    local timer = true
    Citizen.SetTimeout(ms, function()
        timer = false
    end)
    Citizen.CreateThread(function()
        Citizen. Wait(5)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen. Wait(5)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_WEAPON_PURCHASED")
            PushScaleformMovieFunctionParameterString("~r~CLEANUP")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(ms, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(6000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        scaleform = Initialize("mp_big_message_freemode")
        while timer do
            Citizen. Wait(5)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 100, 0)
        end
    end)
end

local noclip = false
local invisible = false
local noclip_speed = 3.0

function tvRP.tryToggleNoclip()
  TriggerServerEvent("noclip:tryToToggle")
end

function tvRP.toggleNoclip()
  noclip = not noclip
  local ped = PlayerPedId()
  if noclip then
  SetEntityInvincible(ped, true)
  SetEntityVisible(ped, false, false)
	tvRP.notify("~g~Succes: ~w~Foloseste tastele ~b~SHIFT ~w~si ~b~CTRL ~w~pentru a regla viteza")
  else
    SetEntityInvincible(ped, false)
    SetEntityVisible(ped, true, false)
  end
end

Citizen.CreateThread(function()
    while true do
      Citizen. Wait(5)
      if noclip then
        local ped = PlayerPedId()
        local x,y,z = tvRP.getPosition()
        local dx,dy,dz = tvRP.getCamDirection()
        local speed = noclip_speed
  
        -- reset velocity
        SetEntityVelocity(ped, 0.0001, 0.0001, 0.0001)
  
        -- forward
        if IsControlPressed(0,32) then 
          if 		IsControlPressed(0,21) then speed = 10.0
          elseif 	IsControlPressed(0,210) then speed = 1.0 end
  
          x = x+speed*dx
          y = y+speed*dy
          z = z+speed*dz
        end
  
        -- backward
        if IsControlPressed(0,269) then 
          if 		IsControlPressed(0,21) then speed = 10.0 
          elseif 	IsControlPressed(0,210) then speed = 1.0 end
  
          x = x-speed*dx
          y = y-speed*dy
          z = z-speed*dz
        end
  
        SetEntityCoordsNoOffset(ped,x,y,z,true,true,true)
      end
    end
  end)
  
  function tvRP.isNoclip()
    return noclip
  end