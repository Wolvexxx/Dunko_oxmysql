local cfg = {}

cfg.factions = {
	["Politie"] = {
		fType = "Lege",
		fSlots = 80,
		fRanks = {
			[1] = {rank = "Cadet", salary = 1500000}, 
			[2] = {rank = "Agent", salary = 2000000}, 
			[3] = {rank = "Agent Principal", salary = 600001},
			[4] = {rank = "Agent Sef", salary = 600001},  
			[5] = {rank = "Inspector", salary = 600001}, 
			[6] = {rank = "Comisar", salary = 600001}, 
			[7] = {rank = "Comisar Sef", salary = 600001}, 
			[8] = {rank = "Chestor", salary = 600001}, 
			[9] = {rank = "Chestor General", salary = 4000000}
		}
	},

	["DIICOT"] = {
		fType = "Lege",
		fSlots = 50,
		fRanks = {
			[1] = {rank = "Plutonier ajutant", salary = 600001}, 
			[2] = {rank = "Sergent", salary = 600001}, 
			[3] = {rank = "Sergent Major", salary = 600001},
			[4] = {rank = "Plutonier", salary = 600001},  
			[5] = {rank = "Maior", salary = 600001}, 
			[6] = {rank = "Colonel", salary = 600001}, 
			[7] = {rank = "Sub Locotenent", salary = 600001}, 
			[8] = {rank = "Locotenent", salary = 600001}, 
			[9] = {rank = "Capitan", salary = 600001}
		}
	},	
	
	["Hitman"] = {
		fType = "Lege",
		fSlots = 50,
		coords = {-429.12826538086,1110.2768554688,327.68228149414},
		fRanks = {
			[1] = {rank = "Membru Hitman", salary = 650000}, 
			[2] = {rank = "Sageata", salary = 650000}, 
			[3] = {rank = "Co-Lider Hitman", salary = 650000},  
			[4] = {rank = "Lider Hitman", salary = 650000}
		}
	},		
	
	["Smurd"] = {
		fType = "Lege",
		fSlots = 50,
		fRanks = {
			[1] = {rank = "Asistent Medical", salary = 700001}, 
			[2] = {rank = "Medic Rezident", salary = 700001}, 
			[3] = {rank = "Medic Specialist", salary = 700001},  
			[4] = {rank = "Medic Chirurg", salary = 700001},  
			[5] = {rank = "Medic Instructor", salary = 700001},
			[6] = {rank = "Asistent General", salary = 700001},  
			[7] = {rank = "Director General", salary = 700001}
		}
	},		
	
	["Taxi"] = {
		fType = "Lege",
		fSlots = 50,
		fRanks = {
			[1] = {rank = "Lider Taxi", salary = 700001}, 
			[2] = {rank = "Co-Lider Taxi", salary = 700001}, 
			[3] = {rank = "Taximetrist", salary = 700001}
		}
	},		
	
	["Mecanic"] = {
		fType = "Lege",
		fSlots = 50,
		fRanks = {
			[1] = {rank = "Lider Mecanic", salary = 700001}, 
			[2] = {rank = "Co-Lider Mecanic", salary = 700001}, 
			[3] = {rank = "Mecanic", salary = 700001}
		}
	},	
	
	["Grove Street"] = {
		fType = "Mafie",
		fBlip = 2;
		fSlots = 32,
		coords = {112.17776489258,-1951.0140380859,20.78423500061},
		fRanks = {
			[1] = {rank = "Membru Grove", salary = 650000}, 
			[2] = {rank = "Co-Lider Grove", salary = 650000}, 
			[3] = {rank = "Lider Grove", salary = 650000}
		}
	}
}
	
return cfg