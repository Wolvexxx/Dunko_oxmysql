local cfg = {}

cfg.emotes = {
  ["Handsup"] = {
    true,
    {
      {"random@mugging3", "handsup_standing_base", 1}
    },
    true
  },
  ["No"] = {
    true, {{"gestures@f@standing@casual","gesture_head_no",1}}, false
  },
  ["Damn"] = {
    true, {{"gestures@f@standing@casual","gesture_damn",1}}, false
  },
  ["Dance"] = {
    false, {
      {"rcmnigel1bnmt_1b","dance_intro_tyler",1},
      {"rcmnigel1bnmt_1b","dance_loop_tyler",1}
    }, false
  },
  ["Salute"] = {true,{{"mp_player_int_uppersalute","mp_player_int_salute",1}},false},
  ["Rock"] = {true,{{"mp_player_introck","mp_player_int_rock",1}},false},
  ["Sit Chair"] = {false, {task="PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"}, false},
  ["Binoculars"] = {false, {task="WORLD_HUMAN_BINOCULARS"}, false},
  ["Cheer"] = {false, {task="WORLD_HUMAN_CHEERING"}, false},
  ["Crink"] = {false, {task="WORLD_HUMAN_DRINKING"}, false},
  ["Guard"] = {false, {task="WORLD_HUMAN_GUARD_STAND"}, false},
  ["Statue"] = {false, {task="WORLD_HUMAN_HUMAN_STATUE"}, false},
  ["Jog"] = {false, {task="WORLD_HUMAN_JOG_STANDING"}, false},
  ["Lean"] = {false, {task="WORLD_HUMAN_LEANING"}, false},
  ["Flex"] = {false, {task="WORLD_HUMAN_MUSCLE_FLEX"}, false},
  ["Camera"] = {false, {task="WORLD_HUMAN_PAPARAZZI"}, false},
  ["Sit"] = {false, {task="WORLD_HUMAN_PICNIC"}, false},
  ["Hoe"] = {false, {task="WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}, false},
  ["Hoe2"] = {false, {task="WORLD_HUMAN_PROSTITUTE_LOW_CLASS"}, false},
  ["Pushups"] = {false, {task="WORLD_HUMAN_PUSH_UPS"}, false},
  ["Situps"] = {false, {task="WORLD_HUMAN_SIT_UPS"}, false},
  ["Mobile"] = {false, {task="WORLD_HUMAN_STAND_MOBILE"}, false},
  ["Diggit"] = {false, {task="WORLD_HUMAN_STRIP_WATCH_STAND"}, false},
  ["Sunbath"] = {false, {task="WORLD_HUMAN_SUNBATHE_BACK"}, false},
  ["Sunbath2"] = {false, {task="WORLD_HUMAN_SUNBATHE"}, false},
  ["Yoga"] = {false, {task="WORLD_HUMAN_YOGA"}, false}
}

return cfg
