return {
  {
    "techtuner/aura-neovim",
  },
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "plugins.configs.neocord"
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require "plugins.configs.neotree"
    end,
  },
  -- github copilot
  {
    "github/copilot.vim",
    cmd = "Copilot",
  },
  -- {
  --   "utilyre/barbecue.nvim",
  --   name = "barbecue",
  --   version = "*",
  --   dependencies = {
  --     "SmiteshP/nvim-navic",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   opts = {},
  --   config = function()
  --     require "plugins.configs.barbecue"
  --   end,
  -- },
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "plugins.configs.telescope"
    end,
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
  -- dashboard nvim
  -- {
  --   "goolord/alpha-nvim",
  --   event = "VimEnter",
  --   config = function()
  --     local alpha = require "alpha"
  --     local dashboard = require "alpha.themes.dashboard"
  --
  --     dashboard.section.header.val = {
  --       "⣿⣿⣿⡷⠊⡢⡹⣦⡑⢂⢕⢂⢕⢂⢕⢂⠕⠔⠌⠝⠛⠶⠶⢶⣦⣄⢂⢕⢂⢕",
  --       "⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂",
  --       "⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂",
  --       "⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔",
  --       "⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿",
  --       "⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿",
  --       "⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃",
  --       "⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈",
  --       "⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈",
  --       "⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈",
  --     }
  --     dashboard.section.buttons.val = {
  --       dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
  --       dashboard.button("f", "󰱼  Find File", ":Telescope find_files<CR>"),
  --       dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
  --       dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
  --       dashboard.button("u", "  Update Plugins", ":Lazy update<CR>"),
  --       dashboard.button("q", "  Quit", ":qa<CR>"),
  --     }
  --
  --     local function footer()
  --       return " github.com/rafia9005"
  --     end
  --
  --     dashboard.section.footer.val = footer()
  --
  --     alpha.setup(dashboard.opts)
  --   end,
  --   dependencies = { { "nvim-tree/nvim-web-devicons" } },
  -- },
}
