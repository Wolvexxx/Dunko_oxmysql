local cfg = {}
cfg.sell_factor = 0.5

cfg.garage_types = {
  	["Civil"] = {
		_config = {vtype="car",blipid=357,blipcolor=68,icon=36,iconColor={41,234,23},hasbuy=false,tosell=false},
		["alpinab7"] = {"BMW Alpine B7",0, ""},
		["mbug"] = {"Masina Raul ",0, ""},
		["gle2020"] = {"Mercedes Benz GLE 2020",0, ""},
		["DEMONBOI"] = {"Dodge",0, ""},
		["s600w220"] = {"Mercedes S600",0, ""},
		["blazer6"] = {"Nagasaki Blazer",0, ""},
		["mc12"] = {"Maserati MC12",0, ""},
		["miata3"] = {"Mazda Miata",0, ""},
		["battista"] = {"Battista",0, ""},
		["bmwm4"] = {"M4 Glow",0, ""},
		["Win"] = {"Vision",0, ""},
		["royale"] = {"Bugatti Royale",0, ""},
		["starhero"] = {"Drift Joker", 0, ""},
		["svj63"] = {"Lamborghini Aventador SVJ",0, ""},
		["r32"] = {"Nissan Skyline R32",0, ""},
		["bentley"] = {"Super Bentley",0, ""},
		["bolide"] = {"Bugatti Bolide",0, ""},
		["sandking2"] = {"Masina Personala Cyber",0, ""},
		["dawnonyx"] = {"Masina Personala RollsDawn",0, ""},
		["can"] = {"Can",0, ""},
		["hog"] = {"Hog",0, ""},
		["monowheel"] = {"Monowheel",0, ""},
		["razerx3"] = {"Canam X3 Four Seater",0, ""},
		["chargerf8"] = {"Masina Custom Francezu",0, ""},
		["regera"] = {"Koenigsegg Regera",0, ""},
		["rmodbugatti"] = {"Rmod Bugatti",0, ""},
		["rmodlp770"] = {"Rmod Lamborghini Centenario",0, ""},
		["torq"] = {"Torq",0, ""},
		["apollo"] = {"Apollo-Hypercar",0, ""},
		["rx7veilside"] = {"Mazda RX7 Veilside",0, ""},
		["na1"] = {"Honda NSX 1990",0, ""},
		["99viper"] = {"Dodge Viper 1999",0, ""},
		["bugatti"] = {"Bugatti Veyron",0, ""},
		["bdivo"] = {"Bugatti Divo",0, ""},
		["570s2"] = {"McLaren 570s",0, ""},
		["2016rs7"] = {"Audi RS7 2016",0, ""},
		["nsx4"] = {"Honda NSX 2005",0, ""},
		["rs6c8"] = {"Audi RS6 2021",0, ""},
		["ctsv16"] = {"Cadillac CTSV",0, ""},
		["fordc32"] = {"Ford V-8 C32 CUSTOM",0, ""},
		["gto"] = {"Mitsubishi GTO",0, ""},
		["c63s"] = {"Mercedes-Benz C63S AMG",0, ""},
		["passatr"] = {"Volkswagen Passat R-Line",0, ""},
		["amggts"] = {"Mercedes-Benz GT-S",0, ""},
		["blista2"] = {"Jumate de masina",0, ""},
		["lp670sv"] = {"Lamborghini Murcielago LP670",0, ""},
		["tmodel"] = {"Tesla Model 3",0, ""},
		["z2879"] = {"Chevrolet Camaro Z28",0, ""},
		["rs318"] = {"Audi RS3 Sportback",0, ""},
		["macla"] = {"Mercedes-Benz Clasa A",0, ""},
		["48is"] = {"BMW X5",0, ""},
		["indiancdh"] = {"Indian CDH",0, ""},
		["fz50"] = {"Suzuki FZ-50",0, ""},
		["civic"] = {"Honda Civic Si",0, ""},
		["m4comp"] = {"BMW M4 Competition 2021",0, ""},
		["sprinter"] = {"Mercedes Sprinter",0, ""},
		["vwtouran"] = {"Volkswagen Touran",0, ""},
		["giulia"] = {"Alfa Romeo Giulia Quadrifoglio",0, ""},
		["skylinec110"] = {"Nissan Skyline C110",0, ""},
		["540l"] = {"BMW 540L",0, ""},
		["fgt"] = {"Ford GT (2005)",0, ""},
		["gt17"] = {"Ford GT (2017)",0, ""},
		["gs350"] = {"Lexus GS-350",0, ""},
		["spano2016"] = {"GTA Spano",0, ""},
		["regera"] = {"Koenigsegg Regera",0, ""},
		["xj6turbo"] = {"Yamaha XJ-6 Turbo",0, ""},
		["xre300"] = {"Honda XRE-300",0, ""},
		["rx8r"] = {"Mazda RX8",0, ""},
		["f4090"] = {"Ferrari F40",0, ""},
		["675lt"] = {"McLaren 675LT",0, ""},
		["skodacombi"] = {"Skoda Octavia",0, ""},
		["e63amg"] = {"Mercedes-Benz E63 AMG",0, ""},
		["cls53"] = {"Mercedes-Benz CLS 53 AMG",0, ""},
		["rs72021"] = {"Audi RS7 2021",0, ""},
		["rs5r"] = {"Audi RS5-R ABT",0, ""},
		["bmw"] = {"Motor BMW",0, ""},
		["bmws"] = {"BMW S1000RR",0, ""},
		["desmo"] = {"Ducati Desmo",0, ""},
		["f4rr"] = {"MV Agusta",0, ""},
		["hsp217"] = {"Honda CBR1000RR",0, ""},
		["hyabusadrag"] = {"Suzuki Hayabusa",0, ""},
		["ktm450sx"] = {"KTM 450 SX-F",0, ""},
		["nh2r"] = {"Kawasaki Ninja H2R",0, ""},
		["panigale"] = {"Ducati Panigale",0, ""},
		["xt66"] = {"XT66 FOGUETE",0, ""},
		["apollo"] = {"Apollo Senzor",0, ""},
		["rs6avant20"] = {"Audi RS6 Avant 2021",0, ""},
		["a4bizon"] = {"Audi A4 Bizon",0, ""},
		["everest"] = {"Ford Everest",0, ""},
		["impalass"] = {"Chevrolet Impala SS 1️9️6️4️",0, ""},
		["ts1"] = {"Zenvo TS1 GT",0, ""},
		["m3kean"] = {"BMW M3 TIGANU",0, ""},
		["m3e30"] = {"BMW M3 E30",0, ""},
		["supra19"] = {"Toyota Supra A90",0, ""},
		["bmwe3"] = {"E30 TIGANU",0, ""},
		["bc"] = {"Pagani Huayra TIGANU",0, ""},
		["zentenario"] = {"Centenario TIGANU",0, ""},
		["s15"] = {"Nissan Silvia S15",0, ""},
		["evo10"] = {"Mitsubishi Evo X",0, ""},
		["mlec"] = {"EVO IX TIGANU",0, ""},
		["mst"] = {"Ford Mustang",0, ""},
		["BOSS429"] = {"Ford Mustang 1969",0, ""},
		["cls2015"] = {"Mercedes-Benz CLS 6.3 AMG",0, ""},
		["m3e92"] = {"BMW M3 E92",0, ""},
		["a45"] = {"Mercedes-Benz A45",0, ""},
		["auds5"] = {"Audi S5",0, ""},
		["bolide"] = {"Bugatti Bolide",0, ""},
		["gt63samg"] = {"Mercedes GT63S AMG",0, ""},
		["fmgt"] = {"Ford Mustang GT",0, ""},
		["vantage"] = {"Aston Martin Vantage",0, ""},
		["slsamg"] = {"Mercedes SLS AMG",0, ""},
		["458spc"] = {"Ferrari 458",0, ""},
		["rrst"] = {"Range Rover Vogue",0, ""},
		["ap2"] = {"Honda S2000",0, ""},
		["c7"] = {"Chevrolet Corvette C7",0, ""},
		["ae86"] = {"Toyota Corolla AE86",0, ""},
		["BTSUPRA94"] = {"Masina Kobra",0, ""},
		["rrghost21"] = {"Rolls Royce Ghost",0, ""},
		["rs5"] = {"Audi RS5 (2011)",0, ""},
		["sanderos"] = {"Dacia Sandero",0, ""},
		["mvisiongt"] = {"Mercedes-Benz Vision GT (Ruleta)",0, ""},
		["daf"] = {"Daf XF Euro 6",0, ""},
		["718caymans"] = {"Porsche Cayman 718",0, ""},
		["wildtrak"] = {"Ford Bronco",0, ""},
		["man"] = {"Man TGX Euro 5",0, ""},
		["actros"] = {"Mercedes-Benz Actros MP4 4x2",0, ""},
		["phantom3"] = {"Tir JOB",0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["daduster"] = {"Dacia Duster",0, ""},
		["boss302"] = {"1969 Ford Mustang",0, ""},
		["c63coupe"] = {"Mercedes-Benz AMG C63S",0, ""},
		["vwtoua19cf"] = {"Volkswagen Touareg",0, ""},
		["focusrs"] = {"Ford Focus RS",0, ""},
		["fe86"] = {"1986 Ford Escort RS",0, ""},
		["f248"] = {"F1 Ferrari",0, ""},
		["mb300sl"] = {"Mercedes-Benz 300SL",0, ""},
		["golf75r"] = {"Volkswagen Golf 7R",0, ""},
		["G65AMG"] = {"Mercedes-Benz G-Wagon",0, ""},
		["gl63"] = {"Mercedes-Benz GL63",0, ""},
		["19gt500"] = {"Ford Mustang Shelby GT500",0, ""}, 
		["bmws"] = {"BMW S1000RR",0, ""}, 
		["hvrod"] = {"Harley Davidson Terminator",0, ""}, 
		["hcbr17"] = {"Honda CBR 1000RR (Ruleta)",0, ""}, 
		["nh2r"] = {"Kawasaki Ninja H2",0, ""}, 
		["exc530"] = {"KTM EXC530",0, ""}, 
		["tmax"] = {"Yamaha TMAX500",0, ""}, 
		["r1"] = {"Yamaha YZF R1",0, ""}, 
		["chr"] = {"Toyota C-HR",0, ""},
		["c63coupe"] = {"Mercedes C63 AMG",0, ""},
		["camry55"] = {"Toyota Camry",0, ""},
		["a80"] = {"Toyota Supra A80",0, ""},
		["prius"] = {"Toyota Prius",0, ""},
		["f4rr"] = {"Agusta F4 RR",0, ""},
		["f812"] = {"Ferrari F812",0, ""},
		["f8t"] = {"Ferrari F8 Tributo",0, ""},
		["180sx"] = {"Nissan 180SX",0, ""},
		["370z"] = {"Nissan 370z",0, ""},
		["720s"] = {"McLaren 720S",0, ""},
		["pcs18"] = {"Porsche Cayenne",0, ""},
		["brz13"] = {"Subaru BRZ",0, ""},
		["f430s"] = {"Ferrari Scuderia F430",0, ""},
		["contss18"] = {"Bentley Continental GT",0, ""},
		["gtr"] = {"Nissan Skyline R35",0, ""},
		["m2"] = {"BMW M2",0, ""},
		["sim22"] = {"Subaru Impreza STi 22B",0, ""},
		["subwrx"] = {"Subaru Impreza STi 2004",0, ""},
		["zl12017"] = {"Chevrolet Camaro ZL1",0, ""},
		["chevelle1970"] = {"Chevrolet Chevelle",0, ""},
		["hondacivictr"] = {"Honda Civic Type-R",0, ""},
		["corsa09"] = {"Opel Corsa",0, ""},
		["evo9mr"] = {"Mitsubishi Evo 9",0, ""},
		["fiorino"] = {"Fiat Fiorino",0, ""},
		["leganza"] = {"Daewoo Leganza",0, ""},
		["logan"] = {"Dacia Logan",0, ""},
		["r33"] = {"Nissan Skyline R33",0, ""},
		["18Velar"] = {"Range Rover Velar",0, ""},
		["wraith"] = {"Rolls Royce Wraith",0, ""},
		["rx7tunable"] = {"Mazda RX7",0, ""},
		["a80"] = {"Toyota Supra",0, ""},
		["models"] = {"Tesla Model S",0, ""},
		["v850r"] = {"Volvo 850",0, ""},
		["r8ppi"] = {"Audi R8",0, ""},
		["2013rs7"] = {"Audi RS7 2013",0, ""},
		["bmx"] = {"BMX",0, ""},
		["tribike3"] = {"Cursiera",0, ""},
		["scorcher"] = {"MTB",0, ""},
		["audiq8"] = {"Audi Q8",0, ""},
		["rs6"] = {"Audi RS6",0, ""},
		["audia4"] = {"Audi A4",0, ""},
		["80B4"] = {"Audi RS2",0, ""},
		["x6m"] = {"BMW X6M",0, ""},
		["bmwe39"] = {"BMW E39",0, ""},
		["r820"] = {"Audi R8 V10",0, ""},
		["i8"] = {"BMW I8",0, ""},
		["m3e46"] = {"BMW E46",0, ""},  
		["m5e60"] = {"BMW E60",0, ""},
		["19raptor"] = {"Ford Raptor",0, ""},
		["f82"] = {"BMW M4",0, ""},
		["M6C2013"] = {"BMW M6",0, ""},
		["bmwm8"] = {"BMW M8",0, ""},
		["17m760i"] = {"BMW M760i",0, ""},
		["ma45"] = {"Mercedes A45",0, ""},
		["bati2"] = {"Bati",0, ""},  
		["enduro"] = {"Enduro",0, ""},  
		["hakuchou"] = {"Hakuchou",0, ""},
		["slsublue"] = {"Mercedes AMG Electric",0, ""},
		["c63coupe"] = {"Mercedes C63 AMG",0, ""},
		["300gsl"] = {"Mercedes Gullwing",0, ""},
		["gt63s"] = {"Mercedes GT63s 2019",0, ""},
		["xclass"] = {"Mercedes X Class",0, ""},
		["g65amg"] = {"Mercedes-Benz G65 AMG",0, ""},
		["terzo"] = {"Lamborghini Terzo Millennio",0, ""},
		["mk1rabbit"] = {"Volkswagen MK1",0, ""},
		["daf"] = {"Tir Daf",0, ""},
		["hauler"] = {"Tir Hauler",0, ""},
		["man"] = {"Tir Man",0, ""},
		["actros"] = {"Tir Actros",0, ""},
		["vwpolo"] = {"Volkswagen Polo",0, ""},
		["vwstance"] = {"Volkswagen Passat",0, ""},
		["scijo"] = {"Volkswagen Scirocco",0, ""},
		["aperta"] = {"Ferrari LaFerrari",0, ""},
		["fct"] = {"Ferrari California",0, ""},
		["gtcl"] = {"Ferrari GT C4",0, ""},
		["q820"] = {"Audi Q8 2020",0, ""},
		["audquattros"] = {"Audi Quattro '83",0, ""},
		["a8lfsi"] = {"Audi A8",0, ""},
		["f12walk"] = {"Ferrari F12",0, ""},
		["f50ub"] = {"Ferrari F50",0, ""},
		["gtbf"] = {"Ferrari 599",0, ""},
		["f360"] = {"Ferrari 360",0, ""},
		["ferrari812"] = {"Ferrari 812",0, ""},
		["DZSB"] = {"Rolls Royce Phantom",0, ""},
		["wraith"] = {"Rolls Royce Wraith",0, ""},
		["baller4"] = {"Rolls Royce Cullinan",0, ""},
		["ccss16"] = {"Chevrolet Camaro SS 2016",0, ""},
		["tahoe"] = {"Chevrolet Tahoe",0, ""},
		["caprice13"] = {"Chevrolet Caprice",0, ""},
		["chevelle1970"] = {"Chevrolet Chevelle SS",0, ""},
		["c6z06"] = {"Chevrolet Corvette",0, ""},
		["impala"] = {"Chevrolet Imapala SS",0, ""},
		["zl12017"] = {"Chevrolet Camaro zl1",0, ""},
		["xj"] = {"Jaguar Xj 2010",0, ""},
		["p7"] = {"Jaguar 7",0, ""},
		["lp700r"] = {"Lamborghini Aventador",0, ""},
		["rmodlp770"] = {"Lamborghini Centenario",0, ""},
		["countach"] = {"Lamborghini Countach",0, ""},
		["16challenger"] = {"Dodge Challenger",0, ""},
		["16charger"] = {"Dodge Charger",0, ""},
		["urus"] = {"Lamborghini Urus",0, ""},
		["sian"] = {"Lamborghini Sian",0, ""},
		["pturismo"] = {"Porsche Panamera",0, ""},
		["logan"] = {"Dacia Logan",0, ""},
		["daduster"] = {"Dacia Duster",0, ""},
		["sandero"] = {"Dacia Sandero",0, ""},
		["gtx"] = {"Dodge Charger",0, ""},
		["wmfenyr"] = {"Fenyr",0, ""}		
	},
	["Garaj Barca"] = {
		_config = {vtype="car",blipid=410,blipcolor=1,icon=35,iconColor={255,0,0},hasbuy=true,tosell=false},
		["Dinghy"] = {"Barca 1",50000000, ""},
		["Tropic"] = {"Barca 2",50000000, ""}
	},
	["Garaj Cayo"] = {
		_config = {vtype="car",blipid=756,blipcolor=63,icon=36,iconColor={0,71,122},hasbuy=true,tosell=false},
		["bodhi2"] = {"Cayo 1",1000000, ""},
		["bifta"] = {"Cayo 2",1000000, ""},
		["winky"] = {"Cayo 3",1000000, ""},
		["outlaw"] = {"Cayo 4",1000000, ""}
	},
	
	["Mecanic"] = {
		_config = {vtype="car",blipid=56,blipcolor=51,icon=36,iconColor={255,140,0},faction = "Mecanic",hasbuy=true},
		["towtruck"] = {"Masina Mecanic", 0,""}
	},
	["VIP BRONZE"] = {
		_config = {vtype="car",blipid=56,blipcolor=17,icon=36,iconColor={202, 143, 7},hasbuy=true,tosell=false,vip=1},
		["lc500"] = {"Lexus LC500",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""},
		["c8"] = {"Chevrolet Corvette C8",0, ""}
	},
	["VIP SILVER"] = {
		_config = {vtype="car",blipid=56,blipcolor=39,icon=36,iconColor={120, 120, 120},hasbuy=true,tosell=false,vip=2},
		["lc500"] = {"Lexus LC500",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""},
		["c8"] = {"Chevrolet Corvette C8",0, ""},
		["skyline"] = {"Nissan Skyline",0, ""},
		["911turbos"] = {"Porsche 911 Turbo",0, ""},
		["taycan"] = {"Porsche Taycan",0, ""}
	},
	["VIP GOLD"] = {
		_config = {vtype="car",blipid=56,blipcolor=46,icon=36,iconColor={255, 216, 0},hasbuy=true,tosell=false,vip=3},
		["lc500"] = {"Lexus LC500",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""},
		["c8"] = {"Chevrolet Corvette C8",0, ""},
		["skyline"] = {"Nissan Skyline",0, ""},
		["911turbos"] = {"Porsche 911 Turbo",0, ""},
		["taycan"] = {"Porsche Taycan",0, ""},
		["bbentayga"] = {"Bentley Bentayga",0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["panamera17turbo"] = {"Porsche Panamera",0, ""}
  	},
  	["VIP DIAMOND"] = {
		_config = {vtype="car",blipid=56,blipcolor=57,icon=36,iconColor={0, 182, 255},hasbuy=true,tosell=false,vip=4},
		["lc500"] = {"Lexus LC500",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""},
		["c8"] = {"Chevrolet Corvette C8",0, ""},
		["skyline"] = {"Nissan Skyline",0, ""},
		["911turbos"] = {"Porsche 911 Turbo",0, ""},
		["taycan"] = {"Porsche Taycan",0, ""},
		["bbentayga"] = {"Bentley Bentayga",0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["panamera17turbo"] = {"Porsche Panamera",0, ""},
		["hevo"] = {"Lamborghini Huracan",0, ""},
		["p1"] = {"McLaren P1",0, ""}
  	},
  	["VIP SUPREME"] = {
    	_config = {vtype="car",blipid=56,blipcolor=59,icon=36,iconColor={255, 0, 0},hasbuy=true,tosell=false,vip=5},
		["lc500"] = {"Lexus LC500",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""},
		["c8"] = {"Chevrolet Corvette C8",0, ""},
		["skyline"] = {"Nissan Skyline",0, ""},
		["911turbos"] = {"Porsche 911 Turbo",0, ""},
		["taycan"] = {"Porsche Taycan",0, ""},
		["bbentayga"] = {"Bentley Bentayga",0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["panamera17turbo"] = {"Porsche Panamera",0, ""},
		["hevo"] = {"Lamborghini Huracan",0, ""},
		["p1"] = {"McLaren P1",0, ""},
		["fxxk2"] = {"Ferrari FXXK-2",0, ""},
		["senna"] = {"McLaren Senna",0, ""}
	},

	["Politia Romana - Elicopter"] = {
		_config = {vtype="car", blipid=43, blipcolor=42, icon=34, iconColor={0,142,255}, faction = "Politie", hasbuy = true},
		["supervolito"]= {"Elicopter", 0, ""}
	},
	  
	["Taxi"] = {
		_config = {vtype="car",blipid=56,blipcolor=60,icon=36,iconColor={255,192,0},faction = "Taxi",hasbuy=true,tosell=false},
		["taxi"] = {"Masina Taxi", 0,""}
	},

	["Smurd - Elicopter"] = {
		_config = {vtype="car", blipid=43, blipcolor=47, icon=34, iconColor={255,140,0}, faction = "Smurd", hasbuy = true},
		["lguardmav"] = {"Elicopter", 0, ""}
	},

	["Hitman - Elicopter"] = {
		_config = {vtype="car", blipid=43, blipcolor=47, icon=34, iconColor={255,140,0}, faction = "Hitman", hasbuy = true},
		["supervolito2"] = {"Elicopterul Septar", 0, ""},
		["havok"] = {"Hitman Silentios", 0, ""}
	},

	["Politia Romana"] = {
		_config = {vtype="car", blipid=56, blipcolor=42, icon=36, iconColor={0,142,255}, faction = "Politie", hasbuy = true},
		["ghispo2"]= {"Maserati Politie", 0, ""},
		["sheriff"]= {"BMW Undercover Politie", 0, ""},
		["loganv"]= {"Logan Politie", 0, ""},
		["voinea"]= {"Logan 2019 Politie", 0, ""},
		["polduster"]= {"Duster Politie", 0, ""},
		["police"]= {"BMW E60 Politie", 0, ""},
		["police3"]= {"Alfa Romeo Giulia Politie",0, ""},
		["voinea2"]= {"BMW M5 Politie",0, ""},
		["rmodgt63police"]= {"Mercedes Brabus Politie",0, ""},
		["skodapolitia"]= {"Skoda Politie", 0,""},
		["policeb"]= {"Motocicleta Politie", 0,""},
		["voinea7"]= {"Duba Peugeot Politie", 0,""},
		["mcc"]= {"Centru Mobil Politia Romana", 0,""},
		["polgs350"]= {"Lexus Politie", 0,""},
		["6x6Politia"]= {"6x6 Politie", 0,""},
		["polveyron"]= {"Politie Veyron", 0,""},
		["polaventa"]= {"Aventador Politie", 0,""}
	},

	["Politia"] = {
		_config = {vtype="car", blipid=0, blipcolor=42, icon=36, iconColor={0,142,255}, faction = "Politie", hasbuy = true},
		["ghispo2"]= {"Maserati Politie", 0, ""},
		["sheriff"]= {"BMW Undercover Politie", 0, ""},
		["loganv"]= {"Logan Politie", 0, ""},
		["voinea"]= {"Logan 2019 Politie", 0, ""},
		["polduster"]= {"Duster Politie", 0, ""},
		["police"]= {"BMW E60 Politie", 0, ""},
		["police3"]= {"Alfa Romeo Giulia Politie",0, ""},
		["voinea2"]= {"BMW M5 Politie",0, ""},
		["rmodgt63police"]= {"Mercedes Brabus Politie",0, ""},
		["skodapolitia"]= {"Skoda Politie", 0,""},
		["policeb"]= {"Motocicleta Politie", 0,""},
		["voinea7"]= {"Duba Peugeot Politie", 0,""},
		["mcc"]= {"Centru Mobil Politia Romana", 0,""},
		["polgs350"]= {"Lexus Politie", 0,""},
		["polveyron"]= {"Politie Veyron", 0,""},
		["polaventa"]= {"Aventador Politie", 0,""}
	  },
	  
	["DIICOT"] = {
		_config = {vtype="car",blipid=56,blipcolor=38,icon=36,iconColor={255,255,255},faction="DIICOT",hasbuy=true,tosell=false},
		["e63unmark"]= {"Diicot Nemarcata", 0,""},
		["16bugatti"]= {"Bugatti Nemarcata", 0,""},
		["pd_bmwr"]= {"Bmw Nemarcata", 0,""},
		["pd_bmwr"]= {"Bmw Nemarcata", 0,""}
	},
	  
	["SMURD"] = {
		_config = {vtype="car",blipid=0,blipcolor=1,icon=36,iconColor={255,140,0},faction="Smurd", hasbuy = true, tosell = false},
		["master2019"] = {"Ambulanta Renault Master", 0, ""},
		["voinea4"] = {"Smurd Nissan Titan", 0, ""},
		["voinea5"] = {"Ambulanta Mercedes-Benz Sprinter", 0, ""},
		["voinea20"] = {"Mercedes-Benz ML63 Smurd", 0, ""},
		["voinea10"] = {"Dacia Sandero", 0, ""},
		["voinea17"] = {"Volkswagen VAN", 0, ""},
		["voinea21"] = {"BMW M5 Smurd", 0, ""}
	},
	  
	["HITMAN"] = {
		_config = {vtype="car",blipid=0,blipcolor=1,icon=36,iconColor={255,139,0},faction="Hitman", hasbuy = true, tosell = false},
		["g65amg"] = {"Mercedes G Wagon", 0, ""},
		["bbentayga"] = {"Bentley Bentayga", 0, ""},
		["bmwm8"] = {"BMW M8", 0, ""},
		["bdivo"] = {"Bugatti Divo", 0, ""},
		["wraith"] = {"Rolls Royce Wraith", 0, ""},
		["veneno"] = {"Lamborghini Veneno", 0, ""}
	},

	["Mafia Yakuza"] = {
		_config = {vtype="car",blipid=0,blipcolor=1,icon=36,iconColor={255,139,0},faction="Mafia Yakuza", hasbuy = true, tosell = false},
		["g65amg"] = {"Mercedes G Wagon", 0, ""},
		["bbentayga"] = {"Bentley Bentayga", 0, ""},
		["bmwm8"] = {"BMW M8", 0, ""},
		["bdivo"] = {"Bugatti Divo", 0, ""},
		["wraith"] = {"Rolls Royce Wraith", 0, ""},
		["veneno"] = {"Lamborghini Veneno", 0, ""}
	},

	["Garaj Sons"] = {
		_config = {vtype="car",icon=36,iconColor={60,60,60},faction="Sons of Anarchy", hasbuy = true, tosell = false},
		["Sanctus"] = {"Motor Sanctus", 0, ""},
		["Daemon"] = {"Motor Daemon", 0, ""},
		["Burrito"] = {"Burrito", 0, ""},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Grove"] = {
		_config = {vtype="car",icon=36,iconColor={60,179,113},faction="Grove Street", hasbuy = true, tosell = false},
		["19raptor"] = {"Raptor",0, ""},
		["lp700"] = {"Aventador", 0, ""},
		["bmwm6gt3"] = {"Bmw Gt3", 0, ""},
		["19raptor"] = {"Raptor",0, ""},
		["bmwm8"] = {"Bmw M8",0, ""},
		["m3gtr"] = {"BMW M3 GTR",0, ""}
	},
	  
	["Garaj Guvern"] = {
		_config = {vtype="car",icon=36,iconColor={0,102,255},faction="Guvern", hasbuy = true, tosell = false},
		["police2"] = {"Guvern 1", 0, ""},
		["fbi2"] = {"Guvern 2", 0, ""}
	},
	  
	["Garaj Sindicat"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Sindicat", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Vagos"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Los Vagos", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["velociraptor"] = {"Mafie Car 2", 0, ""},
		["bmwm8"] = {"Bmw M8",0, ""},
		["rocket"] = {"Mafia Car 3", 0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["1016urus"] = {"Urus", 0, ""},
	},
	  
	["Garaj Yardie"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Yardie", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},

	["Garaj Cezarica"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Cezarica", hasbuy = true, tosell = false},
		["wraith"] = {"Rolls Royce Wraith",0, ""},
		["trhawk"] = {"Jeep TrackHawk",0, ""}
	},
	  
	["Garaj Rusa"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Rusa", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["rocket"] = {"Mafia Car 3", 0, ""}
	},
	  
	["Garaj Muerte"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Santa Muerte", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Narcos"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Narcos", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Siciliana"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Siciliana", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj OTF"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia OTF", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["velociraptor"] = {"Mafie Car 2", 0, ""},
		["cullinanbb"] = {"Mafie Car 3", 0, ""}
	},
	  
	["Garaj Albaneza"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Albaneza", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Traperilor"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Traperilor", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["skyline"] = {"Nissan Skyline",0, ""},
		["911turbos"] = {"Porsche 911 Turbo",0, ""},
		["taycan"] = {"Porsche Taycan",0, ""},
		["bbentayga"] = {"Bentley Bentayga",0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["panamera17turbo"] = {"Porsche Panamera",0, ""}
	},
	  
	["Garaj Lautarilor"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Lautarilor", hasbuy = true, tosell = false},
		["lp700"] = {"Mafia Car 1", 0, ""},
		["phantommc"] = {"Mafia Car 2", 0, ""},
		["19S650"] = {"Mafia Car 3", 0, ""}
	},
	  
	["Garaj Lire"] = {
		_config = {vtype="car",icon=36,iconColor={255,255,255},faction="Mafia Lire", hasbuy = true, tosell = false},
		["rrphantom"] = {"Phantom", 0, ""},
		["19raptor"] = {"Raptor",0, ""},
		["1016urus"] = {"Urus", 0, ""},
		["navigator"] = {"Lincoln", 0, ""},
		["lp700"] = {"Aventador", 0, ""}
	},
	  
	["Garaj Bloods"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Bloods", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Barrio"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Barrio Azteca", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["bdivo"] = {"Bugatti Divo", 0, ""},
		["wraith"] = {"Rolls Royce Wraith", 0, ""},
		["veneno"] = {"Lamborghini Veneno", 0, ""},
		["lp700"] = {"Aventador", 0, ""},
		["navigator"] = {"Lincoln", 0, ""},
		["rrphantom"] = {"Phantom", 0, ""},
		["19raptor"] = {"Raptor",0, ""}
	},

	["Garaj SRI"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="SRI", hasbuy = true, tosell = false},
		["bdivo"] = {"Bugatti Divo", 0, ""},
		["wraith"] = {"Rolls Royce Wraith", 0, ""},
		["veneno"] = {"Lamborghini Veneno", 0, ""},
		["lp700"] = {"Aventador", 0, ""},
		["navigator"] = {"Lincoln", 0, ""},
		["rrphantom"] = {"Phantom", 0, ""},
		["19raptor"] = {"Raptor",0, ""}
	},
	  
	["Garaj Cosa Nostra"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Cosa Nostra", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["hevo"] = {"Lamborghini Huracan",0, ""},
		["lp700"] = {"Aventador", 0, ""}
	},
	  
	["Garaj Crips"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Crips Gang", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Mafia Spaniola"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Spaniola", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Primeiro Comando Da Capital"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Primeiro Comando Da Capital", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Gle", 0, ""},
		["chiron17"] = {"Bugatti Chiron",0, ""},
		["rmodlp770"] = {"Rmod Lamborghini Centenario",0, ""}
	},
	  
	["Garaj Ndragheta"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Ndragheta", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Devil"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="The Devil Angel of Light", hasbuy = true, tosell = false},
		["demonhawk"] = {"Mafia Car 1", 0, ""},
		["bg700w"] = {"Mafia Car 3", 0, ""},
		["sian"] = {"Mafia Car 4", 0, ""}
	},
	  
	["Garaj Blanca"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Casa Blanca", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj London Scammers"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia London Scammers", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	
	["Garaj Ballas"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Ballas Gang", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Garaj Gipsy"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Gipsy", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""},
		["f350offroadspec"] = {"Mafia Car 2", 0, ""},
		["rocket"] = {"Mafia Car 3", 0, ""}
	},
	  
	["Garaj Araba"] = {
		_config = {vtype="car",icon=36,iconColor={255,0,0},faction="Mafia Araba", hasbuy = true, tosell = false},
		["gle"] = {"Mafia Car 1", 0, ""}
	},
	  
	["Elicopter Gipsy"] = {
		_config = {vtype="car",icon=34,iconColor={255,255,255},faction="Mafia Gipsy", hasbuy = true, tosell = false},
		["supervolito2"] = {"Elicopter", 0, ""}
	},
	  
	["Elicopter Primerio Comando da Capital	"] = {
		_config = {vtype="car",icon=34,iconColor={255,255,255},faction="Primerio Comando da Capital	", hasbuy = true, tosell = false},
		["supervolito2"] = {"Elicopter", 0, ""}
	}
}

cfg.garages = {
	{"Civil",vector3(-449.45260620117,6053.1401367188,31.340543746948)},
}

return cfg
