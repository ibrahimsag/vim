local hsluv = require('hsluv')

--[[
local given = {
  base = '#191724',
  surface = '#1f1d2e',
  overlay = '#26233a',
  muted = '#6e6a86',
  subtle = '#908caa',
  text = '#e0def4',
  love = '#eb6f92',
  gold = '#f6c177',
  rose = '#ebbcba',
  pine = '#31748f',
  foam = '#9ccfd8',
  iris = '#c4a7e7',
  highlight_low = '#21202e',
  highlight_med = '#403d52',
  highlight_high = '#524f67',
  none = 'NONE',
}
--]]
local palette = {
  base           = { 271,  0, 9  },
  surface        = { 270,  2, 12 },
  overlay        = { 270,  6, 15 },
  muted          = { 271, 10, 46 },
  subtle         = { 271, 13, 60 },
  step           = { 269,  4, 80 },
  text           = { 269,  4, 75 },
  love           = { 357, 56, 70 },
  gold           = { 53,  59, 70 },
  rose           = { 15,  20, 70 },
  pine           = { 238, 32, 70 },
  foam           = { 157, 33, 70 },
  iris           = { 283, 27, 70 },
  highlight_low  = { 268, 17, 13 },
  highlight_med  = { 271, 16, 27 },
  highlight_high = { 270, 15, 35 },
  none           = 'NONE',
}

local hex_palette = {}

for key, value in pairs(palette) do
  if type(value) ~= "table" then
    hex_palette[key] = value
  else
    hex_palette[key] = hsluv.hsluv_to_hex(value)
  end
end

return hex_palette
