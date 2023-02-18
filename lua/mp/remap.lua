vim.g.mapleader = " "
-- vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("n", "<C-j>", vim.cmd.cnext)
vim.keymap.set("n", "<C-k>", vim.cmd.cprev)
vim.keymap.set("n", "<leader>j", vim.cmd.lnext)
vim.keymap.set("n", "<leader>k", vim.cmd.lprev)

vim.keymap.set("n", ":", ";")
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<leader>r", vim.cmd.mode)
vim.keymap.set("n", "<leader>c", function() vim.o.cursorcolumn = not vim.o.cursorcolumn end)

vim.keymap.set("n", "<leader>n", function()
  vim.o.textwidth = 70
  vim.o.cc = "+2"
  vim.o.number = false
end)

local hsluv = require('hsluv')

local function replace_hex()
    -- Exit visual mode
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', false)
    -- Following is only correct after exiting visual mode. Really weird.
    local sp = vim.fn.getpos("'<")
    local ep = vim.fn.getpos("'>")
    local hex_line = vim.api.nvim_buf_get_text(sp[1], sp[2] - 1, sp[3]-1, ep[2] - 1, ep[3], { })
    local hex_text = hex_line[1]

    local hsl = hsluv.hex_to_hsluv(hex_text);
    local new_text = string.format("{ %.0f, %.0f, %.0f }", hsl[1], hsl[2], hsl[3])

    vim.api.nvim_buf_set_text(sp[1], sp[2] - 1, sp[3]-1, ep[2] - 1, ep[3], { new_text })
end

vim.keymap.set('v', '<leader>hsl', replace_hex, { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
