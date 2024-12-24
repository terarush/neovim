return {
  -- rest nvim
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "github/copilot.vim",
    opts = true,
  },
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "plugins.configs.telescope"
    end,
  },
  -- nvim tree
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "plugins.configs.nvim-tree"
    end,
    event = { "BufWinEnter", "BufReadPre" },
  },
  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.bufferline"
    end,
  },
  -- lauline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.configs.lualine"
    end,
    event = "VeryLazy",
  },
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "kdheepak/lazygit.nvim",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "gopls",
        "glint",
        "pyright",
        "intelephense",
        "lua_ls",
        "rust_analyzer",
      },
    },
  },
  {
    "jwalton512/vim-blade",
  },
}
