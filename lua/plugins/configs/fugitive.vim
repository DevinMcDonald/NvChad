-- Add these to your custom mappings in `chadrc.lua` or `mappings.lua` (depends on your config)
local M = {}

M.mappings = {
  n = {
    ["<leader>gs"] = { ":Git<CR>", "Git status" },
    ["<leader>gc"] = { ":Git commit<CR>", "Git commit" },
    ["<leader>gp"] = { ":Git push<CR>", "Git push" },
    ["<leader>gl"] = { ":Git pull<CR>", "Git pull" },
    ["<leader>gd"] = { ":Gdiffsplit<CR>", "Git diff split" },
    ["<leader>gb"] = { ":Git blame<CR>", "Git blame" },  -- Show blame info
  }
}

return M
