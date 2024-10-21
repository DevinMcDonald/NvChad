---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }

M.plugins = "custom.plugins"

-- Map leader + o to switch between header and source
vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>ClangdSwitchSourceHeader<CR>', { noremap = true, silent = true })

return M
