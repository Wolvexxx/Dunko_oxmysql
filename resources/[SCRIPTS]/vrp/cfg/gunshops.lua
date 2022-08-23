local cfg = {}

cfg.gunshop_types = {
  ["Normal"] = {
    _config = {blipcolor = 1,blipid = 110,armor = false},
    ["WEAPON_BAT"] = {"Bata",50000,0,""},
    ["WEAPON_KNUCKLE"] = {"Pumnal",70000,0,""},
    ["WEAPON_KNIFE"] = {"Cutit",90000,0,""},
    ["WEAPON_HATCHET"] = {"Topor",100000,0,""},
    ["WEAPON_MACHETE"] = {"Maceta",110000,0,""}
  },
  ["Smurd"] = {
    _config = {faction = "Smurd",armor = false},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",0,0,""},
    ["WEAPON_STUNGUN"] = {"Tazer",0,0,""}
  },
  ["Hitman"] = {
    _config = {faction = "Hitman"},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Baston",0,0,""},
    ["WEAPON_PISTOL_MK2"] = {"Pistol",0,0,""},
    ["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Shothgun",0,0,""},
    ["WEAPON_CARBINERIFLE_MK2"] = {"Carabina MK2",0,0,""},
    ["WEAPON_SMG"] = {"SMG",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Sniper",0,0,""}
  },
  ["DIICOT"] = {
    _config = {faction = "DIICOT",armor = true, blipcolor = 57, blipid = 110},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Baston",0,0,""},
    ["WEAPON_PISTOL_MK2"] = {"Pistol",0,0,""},
    ["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Shothgun",0,0,""},
    ["WEAPON_CARBINERIFLE_MK2"] = {"Carabina MK2",0,0,""},
    ["WEAPON_SMG"] = {"SMG",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Sniper",0,0,""},
    ["WEAPON_REVOLVER"] = {"Revolver",0,0,""},
    ["body_armor"] = {"Armura", 0,0,""},
  },
  ["Grove Street"] = {
    _config = {faction = "Grove Street"},
    ["WEAPON_DOUBLEACTION"] = {"Revolver",1500000,1000,""},
    ["WEAPON_KNIFE"] = {"Cutit",0,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"AK-47", 1000000,1000,""},
    ["WEAPON_APPISTOL"] = {"AP Pistol", 100000,1000,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun", 100000,1000,""},
    ["body_armor"] = {"Armura", 100000,1000,""},
    ["WEAPON_MACHETE"] = {"Macheta",0,0,""},
    ["WEAPON_GUSENBERG"] = {"Gusenberg",6000000,1000,""},
    ["WEAPON_BAT"] = {"Bata",0,0,""},
    ["WEAPON_MINISMG"] = {"Mini SMG",600000,1000,""},
    ["WEAPON_MG"] = {"MG",3500000,1000,""},
    ["WEAPON_SPECIALCARBINE"] = {"Special Carbine",1000000,1000,""},
    ["WEAPON_ASSAULTSMG"] = {"Assault SMG", 900000,1000,""},
  }

}
cfg.gunshops = {

}

return cfg