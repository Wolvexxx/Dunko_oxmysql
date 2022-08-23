local cfg = {}

cfg.spawn_enabled = true
cfg.spawn_position = {-310.61032104492,223.60665893555,87.924728393555}
cfg.spawn_death = {308.89260864258,-565.97973632812,43.283973693848}
cfg.spawn_radius = 1
cfg.default_customization = {model = "mp_m_freemode_01"}
for i=0,19 do
  cfg.default_customization[i] = {0,0}
end
cfg.clear_phone_directory_on_death = false
cfg.lose_aptitudes_on_death = false

return cfg