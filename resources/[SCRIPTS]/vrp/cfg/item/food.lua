-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- gen food choices as genfunc
-- idname
-- ftype: eat or drink
-- vary_hunger
-- vary_thirst
local function gen(ftype, vary_hunger, vary_thirst)
  local fgen = function(args)
    local idname = args[1]
    local choices = {}
    local act = "Unknown"
    if ftype == "eat" then act = "Mananca" elseif ftype == "drink" then act = "Bea" end
    local name = vRP.getItemName(idname)

    choices[act] = {function(player,choice)
      local user_id = vRP.getUserId(player)
      if user_id   then
        if vRP.tryGetInventoryItem(user_id,idname,1,false) then
          if vary_hunger ~= 0 then vRP.varyHunger(user_id,vary_hunger) end
          if vary_thirst ~= 0 then vRP.varyThirst(user_id,vary_thirst) end

          if ftype == "drink" then
            vRPclient.notify(player,{"Info: ~b~Bei "..name.."."})
            play_drink(player)
          elseif ftype == "eat" then
            vRPclient.notify(player,{"Info: ~b~Mananci "..name.."."})
            play_eat(player)
          end

          vRP.closeMenu(player)
        end
      end
    end}

    return choices
  end

  return fgen
end

-- DRINKS --
items["water"] = {"Apa Borsec","O sticla de apa Borsec", gen("drink",0,-25),0.5,"pocket"}
items["milk"] = {"Lapte","O sticla de lapte de tara", gen("drink",0,-5),0.5,"pocket"}
items["coffee"] = {"Cafea","O cafea la expresor", gen("drink",0,-10),0.2,"pocket"}
items["tea"] = {"Ceai Negru","Un ceai negru fierbinte", gen("drink",0,-15),0.2,"pocket"}
items["icetea"] = {"Lipton","O sticla de ceai Lipton", gen("drink",0,-20), 0.5,"pocket"}
items["orangejuice"] = {"Fanta","O sticla de suc Fanta", gen("drink",0,-25),0.5,"pocket"}
items["gocagola"] = {"Coca Cola","O sticla de Coca Cola", gen("drink",0,-35),0.3,"pocket"}
items["redgull"] = {"RedBull","O donza de Red Bull", gen("drink",0,-40),0.3,"pocket"}
items["lemonade"] = {"Limonada","", gen("drink",0,-45),0.3,"pocket"}
items["vodka"] = {"Vodka","O sticla de Rachiu romanesc", gen("drink",15,-65),0.5,"pocket"}
items["vin"] = {"Vin Rosu","Vin de buna calitate!", gen("drink",15,-35),0.2,"pocket"}
items["vins"] = {"Vin Alb","Vin de foarte buna calitate!", gen("drink",15,-35),0.2,"pocket"}
items["tuica"] = {"Tuica Mere","Vasluieni considera ca e buna!", gen("drink",15,-65),0.5,"pocket"}
items["beer_bergenbier"] = {"Bere Bergenbier","O sticla de bere Bergenbier", gen("drink",0,-25),0.5,"pocket"}
items["beer_tuborg"] = {"Bere Tuborg","O sticla de bere Tuborg", gen("drink",0,-25),0.5,"pocket"}
items["beer_bucegi"] = {"Bere Heineken","O sticla de bere Heineken", gen("drink",0,-25),0.5,"pocket"}
items["beer_heineken"] = {"Bere Heineken","O sticla de bere Heineken", gen("drink",0,-25),0.5,"pocket"}
items["beer_ursus"] = {"Bere Ursus","O sticla de bere Ursus", gen("drink",0,-25),0.5,"pocket"}
items["beer_timisoreana"] = {"Bere Timisoreana","O sticla de bere Timisoreana", gen("drink",0,-25),0.5,"pocket"}

--FOOD
--items["creier"] = {"Creier Delicios","O bucata de creier delicioasa pentru cina lui Zombozo.", gen("eat",-40,0),0.40,"pocket"}

-- create Breed item
items["bread"] = {"Paine","O paine de tip franzela", gen("eat",-10,0),0.5,"pocket"}
items["donut"] = {"Gogoasa","O gogoasa glazurata", gen("eat",-15,0),0.2,"pocket"}
items["tacos"] = {"Taco","Un taco iute mexican", gen("eat",-20,0),0.2,"pocket"}
items["pizzam"] = {"Pizza Margherita","", gen("eat",-40,0),0.20,"pocket"}
items["pizzaq"] = {"Pizza Quattro Stagioni","", gen("eat",-45,0),0.20,"pocket"}
items["pizzat"] = {"Pizza Taraneasca","", gen("eat",-50,0),0.20,"pocket"}
items["pizzah"] = {"Pizza Diavola Hot","", gen("eat",-60,0),0.20,"pocket"}
-------------------------------------------
items["ciorba"] = {"Ciorba de burta","Ciorba taraneasca cu burta cu putina smantana", gen("eat",-40,0),0.20,"pocket"}
items["sarmale"] = {"Sarmale","Sarmale ca la mama acasa cu frunza de vie.", gen("eat",-45,0),0.20,"pocket"}
items["smantana"] = {"Smantana","Smantana fabricata in Romania.", gen("eat",-50,0),0.20,"pocket"}
items["paine"] = {"Paine","Paine de vatra taraneasca.", gen("eat",-60,0),0.20,"pocket"}
-------------------------------------------
items["batoaneproteice"] = {"Batoane Proteice", "Butoane de ciocolata cu proteina.", gen("eat",-40,0),0.20,"pocket"}
items["creatina"] = {"Creatina", "Pentru cresterea musculara.", gen("eat",-45,0),0.20,"pocket"}
items["multivitamine"] = {"Multi Vitamine", "Creste vitalitatea si combate starile de oboseala.", gen("eat",-50,0),0.20,"pocket"}
items["preworkout"] = {"Pre-Workout", "Oxid nitric in doza mica si fara cafeina.", gen("eat",-60,0),0.20,"pocket"}
items["oxidnitric"] = {"Oxid Nitric", "Oxid nitric foarte puternic si fara cafeina.", gen("eat",-40,0),0.20,"pocket"}
items["uleipeste"] = {"Pastile ulei peste", "Ajuta la intretinerea musculaturii.", gen("eat",-45,0),0.20,"pocket"}
items["steroizi"] = {"Steroizi T4 euthyrox", "Ajuta la o crestere mai rapida a musculaturii.", gen("eat",-50,0),0.20,"pocket"}
items["steroizii"] = {"Steroizi S4 SIPERX", "Oxid nitric in doza mica si fara cafeina.", gen("eat",-60,0),0.20,"pocket"}
items["zma"] = {"ZMA", "Suplimente alimentare.", gen("eat",-50,0),0.20,"pocket"}
items["aminoacizi"] = {"Aminoacizi", "Aminoacizi cu putere incredibila esti nebun.", gen("eat",-50,0),0.20,"pocket"}
items["bcaa"] = {"BCAA", "Amestec de aminoacizi care creste masa musculara.", gen("eat",-60,0),0.20,"pocket"}
-------------------------------------------
items["strugure"] = {"Struguri Albi","", gen("eat",-35,0),0.2,"pocket"}
items["struguri"] = {"Struguri Negri","", gen("eat",-35,0),0.2,"pocket"}
items["mere"] = {"Mere","Putin fermentate,dar bune pentru alcool", gen("eat",-35,0),0.2,"pocket"}
items["portocale"] = {"Portocale","Bun pentru sucuri", gen("eat",-35,0),0.2,"pocket"}
items["sandwich"] = {"Sandwich","A tasty snack.", gen("eat",-25,0),0.5,"pocket"}
items["kebab"] = {"Kebab","Kebab de Calitate", gen("eat",-35,0),0.85,"pocket"}
items["pdonut"] = {"Premium Donut","O Gogoasa de smecheri glazurata", gen("eat",-25,0),0.5,"pocket"}
items["catfish"] = {"CatFish","", gen("eat",10,15),0.3,"pocket"}
items["bass"] = {"Bass","", gen("eat",10,15),0.3,"pocket"}
-------------------------------------------
items["bomboane"] = {"Bomboane","Bomboane dulci cu diferite arome!", gen("eat",-100,-100),0.3,"pocket"}

return items
