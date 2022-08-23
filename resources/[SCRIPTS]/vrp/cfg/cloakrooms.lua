local cfg = {}
local default_male = {model = "mp_m_freemode_01"}
local default_female = {model = "mp_f_freemode_01"}
local skin_copil = {model = "u_m_y_abner"}

for i=0,19 do
  default_female[i] = {0,0}
  default_male[i] = {0,0}
end

cfg.cloakroom_types = {
  ["Default"] = {
    _config = { not_uniform = true },
    ["Barbat"] = default_male,
    ["Femeie"] = default_female
  }
}

cfg.cloakrooms = {
}

return cfg