vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
