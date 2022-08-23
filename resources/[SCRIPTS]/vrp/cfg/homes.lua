
local cfg = {}

local itemtr_study = {
  name="Bookcase",
  r=0,g=255,b=0,
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, 
  radius=1.1, height=1.5,
  recipes = {
    ["Carte chimicala"] = {
      description="Citeste una dintre cartiile chimicale",
      in_money=0,
      out_money=0,
      reagents={},
      products={},
      aptitudes={
        ["science.chemicals"] = 1
      }
    },
    ["Carte stiintifica"] = {
      description="Citeste una dintre cartiile de stiinta",
      in_money=0,
      out_money=0,
      reagents={},
      products={},
      aptitudes={
        ["science.mathematics"] = 1
      }
    }
  }
}

cfg.slot_types = {
  ["Ap_Modern"] = {		
	  {		
      {"entry",-18.354400634766,-591.35821533203,90.114837646484},		
      {"chest",-26.007940292358,-587.99267578125,90.123481750488, _config = {weight=200}},		
      {"wardrobe",-38.095764160156,-584.20355224609,83.918319702148},		
      {"gametable",-40.137477874756,-576.95953369141,88.733123779297},		
      {"itemtr", _config = itemtr_study, -22.208534240723,-590.52349853516,90.114776611328}
    }
  }
}

cfg.homes = {
  ["Apartament Modern"] = {
    slot = "Ap_Modern",
    entry_point = {-59.591178894043,-616.35552978516,37.356460571289},
    buy_price = 2500000,
    sell_price = 1875000,
    max = 100,
    blipid=374,
    blipcolor=2
  }
}

return cfg
