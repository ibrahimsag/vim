local rp = require("rain")
rp.setup({
  dark_variant = 'main',
  disable_italics = true,
  disable_background = true,
  disable_float_background = true,
})

package.loaded['rain.palette'] = nil
package.loaded['rain.theme'] = nil

rp.colorscheme()

vim.cmd [[colorscheme rain]]
