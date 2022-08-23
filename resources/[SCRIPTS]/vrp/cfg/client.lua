-- client-side vRP configuration

local cfg = {}

cfg.iplload = true
cfg.voice_proximity = 30.0
cfg.voice_proximity_vehicle = 15.0
cfg.voice_proximity_inside = 13.0
cfg.gui = {
  anchor_minimap_width = 260,
  anchor_minimap_left = 60,
  anchor_minimap_bottom = 213
}
cfg.controls = {
  phone = {
    up = {3,172},
    down = {3,173},
    left = {3,174},
    right = {3,175},
    select = {3,176},
    cancel = {3,177},
    open = {3,311},
  },
  request = {
    yes = {1,166},
    no = {1,167}
  }
}
cfg.handcuff_disable_menu = true
cfg.coma_threshold = 120
cfg.coma_duration = 5
cfg.coma_disable_menu = false
cfg.coma_effect = "DeathFailMPIn"
cfg.vehicle_migration = true

return cfg