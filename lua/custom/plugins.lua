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
      })
      vim.api.nvim_set_keymap("n", "-", "<CMD>Oil<CR>", { noremap = true, silent = true })

    end,
  },
}
return plugins
