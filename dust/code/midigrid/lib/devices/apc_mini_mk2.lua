local apcmini = include('midigrid/lib/devices/generic_device')
 -- in order to control the brightness of the apc mini mk2 pads the midi messages has to be transmitted over 
 -- the channels below as per akai's specification documentation 
 -- this can be modified in line no.95 of the generic_device.lua script, the default is channel 0 which in apc mini mk2 cases will be quite dim
 --|Channel |Byte 1 Value |Port |Function 
 -- 0           90          0     On 10% brightness 
 -- 1           91          0     On 25% brightness 
 -- 2           92          0     On 50% brightness 
 -- 3           93          0     On 65% brightness 
 -- 4           94          0     On 75% brightness 
 -- 5           95          0     On 90% brightness 
 -- 6           96          0     On 100% brightness 
-- the brightness map colour scheme is as sames as for launcpad RGB , you can tweak them for your preferences
 apcmini.brightness_map = {
  0,
  11,
  100,
  125,
  83,
  117,
  14,
  62,
  99,
  118,
  126,
  97,
  109,
  13,
  12,
  119
}

 --these are the keys in the apc to the sides of our apc, not necessary for strict grid emulation but handy!
 --they are up to down, so 112 is the auxkey to row 1
 apcmini.aux = {}
 
 apcmini.aux.col = {
    {'note',  112, 0},
    {'note',  113, 0},
    {'note',  114, 0},
    {'note',  115, 0},
    {'note',  116, 0},
    {'note',  117, 0},
    {'note',  118, 0},
    {'note',  119, 0}
  }
  --left to right, 100 is aux key to column 1
  apcmini.aux.row = {
    {'note',  100, 0},
    {'note',  101, 0},
    {'note',  102, 0},
    {'note',  103, 0},
    {'note',  104, 0},
    {'note',  105, 0},
    {'note',  106, 0},
    {'note',  107, 0}
  }

return apcmini
