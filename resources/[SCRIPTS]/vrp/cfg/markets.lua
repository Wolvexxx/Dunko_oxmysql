local cfg = {}

cfg.market_types = {
    ["Magazin Set Chimie"] = {
        _config = {},
        ["chem_set"] = 1000000,
    },

    ["Magazin Apa"] = {
        _config = {},
        ["water"] = 50000,
    },

    ["Magazin de Tigari"] = {
        _config = {permissions={"contrabanda.tigari"}},
        ["foitasall"] = 5000,
        ["tutunsall"] = 5000 
    },

    ["Echipament Mecanic"] = {
        _config = {blipid = 446, blipcolor=47, faction = "Mecanic"},
        ["repairkit"] = 5000,
        ["scanner"] = 100000
    },

    ["Magazin Piese Auto"] = {
        _config = {blipid = 402, blipcolor = 32},
        ["repairkit"] = 250,
        
        ["oil"] = 3000000,
        ["tires"] = 4500000,
        ["brake_pads"] = 5000000,
        ["transmission_oil"] = 4000000,
        ["shock_absorber"] = 7500000,
        ["clutch"] = 9000000,
        ["air_filter"] = 5000000,
        ["fuel_filter"] = 3000000,
        ["spark_plugs"] = 20000000,
        ["serpentine_belt"] = 6000000,
        ["susp"] = 4000000,
        ["susp1"] = 4000000,
        ["susp2"] = 4000000,
        ["susp3"] = 4000000,
        ["susp4"] = 4000000,
        
        ["garett"] = 17000000,
        ["nitrous"] = 15000000,
        ["AWD"] = 16000000,
        ["RWD"] = 10000000,
        ["FWD"] = 10000000,
        ["semislick"] = 15000000,
        ["slick"] = 14000000,
        ["race_brakes"] = 4000000,
        ["piston"] = 4000000,
        ["rod"] = 4000000,
        ["gear"] = 4000000,
        ["brake_discs"] = 8500000,
        ["brake_caliper"] = 8500000,
        ["springs"] = 6000000,
        ["iron"] = 9200000,
        ["aluminum"] = 9000000,
        ["scanner"] = 25000000,
    },
    
    ["Magazin Carduri"] = {
        _config = {},
        ["secure_card"] = 1000000
    },

    ["Atasamente Arma"] = {
        _config = {blipid=0, blipcolor=69},
        ["lanterna"] = 70000,
        ["surpresor"] = 100000,
        ["grip"] = 150000,
        ["skin"] = 70000
    },

    ["Farmacie"] = {
        _config = {blipid=0, blipcolor=69},
        ["bandaj"] = 1500000,
        ["adrenalina"] = 15000000
    },

    ["Echipament Politie"] = {
        _config = {blipcolor=68, faction = "Politie"},
        ["medkit"] = 0,
        ["body_armor"] = 0
    },

    ["Echipament Medical"] = {
        _config = {blipcolor=68, faction = "Smurd"},
        ["medkit"] = 0,
        ["repairkit"] = 5000,
        ["body_armor"] = 0
    }
}

cfg.markets = {

}

return cfg