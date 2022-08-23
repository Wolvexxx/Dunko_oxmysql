
local cfg = {}

cfg.groups = {


  ['Supporter'] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Te-ai logat ca ~b~Supporter"}) end},  
    "emergency.revive",
    'supporter.menu'

  },

  ["sponsors"] = {

		_config = {onspawn = function(player) vRPclient.notify(player,{"Te-ai logat ca ~y~Sponsor"}) end},   
	  "emergency.revive",
    "vacar.job"
  },
  ["rainbowmenu"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{"Te-ai logat cu acces la ~r~RainbowMenu"}) end},   
    "vacar.job"
  },
  ["supporter32sd"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{"Te-ai logat cu acces la ~p~SupporterMenu"}) end},   
    "supporter.menu"
  },
	["youtuber"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"player.phone"
  },
	["Fisher"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"player.phone"
  },
	["Vacar"] = {
      _config = {onspawn = function(player) vRPclient.notify(player,{""}) end},   
      "vacar.job"
  },
  ["McDonald`s"] = {
      _config = {onspawn = function(player) vRPclient.notify(player,{"Te-ai logat ca lucrator la ~y~McDonald`s"}) end},   
      "McDonald`s.job",
      "mission.mcdonalds"
  },
  ["Pescar"] = {
      _config = {onspawn = function(player) vRPclient.notify(player,{""}) end},   
      "pescar.job"
  },
  ["Padurar"] = {
      _config = {onspawn = function(player) vRPclient.notify(player,{""}) end},   
      "padurar.job"
  },
  ["Gunoier"] = {
      _config = {onspawn = function(player) vRPclient.notify(player,{""}) end},   
      "gunoier.job"
  },
  ["rainbow"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Ai nume ~p~Rainbow"}) end},
    "player.phone"
  },

  ["gold"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"player.phone"
  },

  ["diamond"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"player.phone"
  },
  
  ["user"] = {
    "player.phone",
    "player.calladmin",
    "player.askid",
    "player.skip_coma",
    "police.seizable"
  },
  ["onduty"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
    "police.heist"
  },

  ["Fermier"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
	  "mission.reparare.garduri",
    "mission.plantat.rosii",
	  "plant.market"
  },

  ["Culegator"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
	  "mission.cules.via",
    "mission.cules.meri",
    "mission.vinseller.bun",
    "vin.bun"
  },

  ["Miner"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
    "miner.job"
  },

  ["Avocat"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
    "avocat.service"
  },

  ["smurd"] = {
    _config = { gtype = "job",
    onspawn = function(player) vRPclient.notify(player,{""}) end
    },
    "emergency.revive",
    "police.pc",
    "emergency.shop",
    "smurd.service",
    "emergency.cloakroom",
    "emscheck.revive",
    "emergency.vehicle",
    "emergency.market",
    "ems.whitelisted",
    "ems.loadshop",
    "police.menu_interaction",
    "asistent.paycheck",
  },

  ["Curva"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
  },
    "mission.curva.femei",
    "curva.cloakroom",
	  "curva.service"
  },
  
  ["Electrician"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"elec.job"
  },
  
  ["McDonald"] = {
		_config = {onspawn = function(player) vRPclient.notify(player,{""}) end},
		"mcdonald.job"
  },

	["Traficant de Droguri"] = {
  	_config = { gtype = "job",
  	onspawn = function(player) vRPclient.notify(player,{""}) end
  	},
	"mission.drugseller.weed"
  },
  ["UPS"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
	  "harvest.parcels",
	  "ups.vehicle",
    "mission.delivery.parcels",
    "mission.delivery.cargo"
  },
  ["Somer"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end},
  },
  ["Livrari"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
	  "mission.delivery.food",
	  "delivery.vehicle"
  },
  ["Traficant Tigari Contrabanda"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"Esti ~r~Traficant de Tigari"}) end
	},
  "contrabanda.tigari",
  "harvest.tigari"
},
["Traficant de Organe"] = {
  _config = { gtype = "job",
onspawn = function(player) vRPclient.notify(player,{"Esti ~r~Traficant de Organe"}) end
},
"mission.organe"
  },
  ["Specialist Arme"] = {
  _config = { gtype = "job",
onspawn = function(player) vRPclient.notify(player,{"Esti ~r~Traficant de Arme"}) end
  },
  "strange.armele"
  },
  ["Fan Courier"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
  },
    "FanCourier.vehicle",
	  "mission.delivery.food"
  },
  ["Hacker"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{""}) end
	},
	  "hacker.job"
  },

  ["Fermier"] = {
    _config = { gtype = "job",
	onspawn = function(player) end},},
  
  ["Constructor"] = {
    _config = { gtype = "job",
	onspawn = function(player) end},},

  ["Tamplar"] = {
    _config = { gtype = "job",
	onspawn = function(player) end},},

  ["Tirist"] = {
    _config = { gtype = "job",
  onspawn = function(player) end},},
  
  ["Uber Eats"] = {
    _config = { gtype = "job",
  onspawn = function(player) end},},

  ["Sofer de Autobuz"] = {
    _config = { gtype = "job",
  onspawn = function(player) end},},

  ["Uber"] = {
    _config = { gtype = "job",
  onspawn = function(player) end},
    "uber.service"
  }
}

cfg.users = {
  [1] = {
    "user"
  }
}

cfg.selectors = {
  ["Traficant de Tigari"] = {
    _config = {x = 4995.7705078125, y = -5750.201171875, z = 14.840495109558},
    "Traficant Tigari Contrabanda",
    "Somer"
  },
  ["Traficant de Arme"] = {
    _config = {x = 4962.1313476563, y = -5107.6611328125, z = 2.9820656776428},
    "Specialist Arme",
    "Somer"
  },
  ["Traficant de Organe"] = {
    _config = {x = -1748.5264892578, y = 5330.8388671875, z = 11.918627738953},
    "Traficant de Organe",
    "Somer"
  },  
  ["Hacker"] = {
    _config = {x = -2194.4760742188, y = 249.60688781738, z = 174.60681152344},
    "Hacker",
    "Somer"
  }
}

return cfg
