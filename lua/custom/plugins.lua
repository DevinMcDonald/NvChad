local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format"
      }
    }
  },
  {
    "joechrisellis/lsp-format-modifications.nvim",
    config = function()
      require "lsp-format-modifications"
    end,
  },
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup({
        -- Your desired configuration options here
        -- Example: 
        -- columns = { "icon", "size", "mtime" },
        -- win_config = { height = 30, width = 80 },
        -- -- Customize oil.nvim settings here
        keymaps = {
          ["<C-c>"] = "actions.close",  -- Example key mapping to close oil.nvim
          ["<C-s>"] = "actions.select", -- Example key mapping to select a file
        },
        view_options = {
          -- Customize how oil.nvim displays files, e.g., showing hidden files
          show_hidden = true,
        },
        -- Other configuration options
      })
      vim.api.nvim_set_keymap("n", "<leader>e", ":Oil<CR>", { noremap = true, silent = true })
    end,
  },
  -- Fugitive plugin
  {
    "tpope/vim-fugitive",
    config = function()
      -- Fugitive keybindings can be added here if needed
    end,
  },
  -- Lazy-loaded lvimdiff plugin
  {
    "kdheepak/lazygit.nvim",
    config = function()
      -- Example configuration for lazygit
    end,
  },-- Disable nvim-tree by setting the `load` key to false

  override = {
    ["kyazdani42/nvim-tree.lua"] = {
      load = false
    }
  },
}
return plugins
