local launchpad = include('midigrid/lib/devices/generic_device')

launchpad.grid_notes= {
  {  0,  1,  2,  3,  4,  5,  6,  7 },
  { 16, 17, 18, 19, 20, 21, 22, 23 },
  { 32, 33, 34, 35, 36, 37, 38, 39 },
  { 48, 49, 50, 51, 52, 53, 54, 55 },
  { 64, 65, 66, 67, 68, 69, 70, 71 },
  { 80, 81, 82, 83, 84, 85, 86, 87 },
  { 96, 97, 98, 99,100,101,102,103 },
  {112,113,114,115,116,117,118,119 }
}

-- Originally set the grid width to match the 9 columns of the launchpad (right column is A-H aux column)
--launchpad.width = 9

--[[ Valid Launchpad colours based on bits 0..1 Red, 4..5 Green
id  color 
0, 16, 32, 48 - Full Green
1, 17, 33, 49 
2, 18, 34, 50
3, 19, 35, 51 - Full Orange
]]--
-- Tropical
launchpad.brightness_map = {0,16,16,32,32,48,48,49,49,33,33,50,50,34,51,51}
-- Sunrise
--launchpad.brightness_map = {0,16,16,32,32,48,48,49,49,50,50,33,33,51,2,3}
-- Rainbow
--launchpad.brightness_map = {0, 16, 32, 48, 1, 17, 33, 49, 2, 18, 34, 50, 3, 19, 35, 51}

-- Reset and set mode to XY
launchpad.init_device_msg = { 0xB0, 0x00, 0x00, 0xB0, 0x00, 0x01 }

launchpad.aux = {}
-- Format is { 'cc'/'note', cc or note number, current/default state (1-16) }
--top to bottom
launchpad.aux.col = {
  {'note',   8, 0},
  {'note',  24, 0},
  {'note',  40, 0},
  {'note',  56, 0},
  {'note',  72, 0},
  {'note',  88, 0},
  {'note', 104, 0},
  {'note', 120, 0}
}
--left to right
launchpad.aux.row = {
  {'cc',   104, 0},
  {'cc',   105, 0},
  {'cc',   106, 0},
  {'cc',   107, 0},
  {'cc',   108, 0},
  {'cc',   109, 0},
  {'cc',   110, 0},
  {'cc',   111, 0}
}

return launchpad