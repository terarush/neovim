return {
  {
    "ntk148v/habamax.nvim"
  },
  -- rest nvim
  {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup {
        result_split_horizontal = false,
        skip_ssl_verification = false,
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          show_url = true,
          show_http_info = true,
          show_headers = true,
        },
        jump_to_request = false,
        env_file = ".env",
        custom_dynamic_variables = {},
        yank_dry_run = true,
      }
    end,
  },
  -- github copilot
  {
    "github/copilot.vim",
    cmd = "Copilot",
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
  -- nvim tree
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
  -- formatter
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "kdheepak/lazygit.nvim",
  },
  -- mason lsp
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
