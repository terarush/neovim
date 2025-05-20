local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "cssls",
  "gopls",
  "glint",
  "pyright",
  "intelephense",
  "lua_ls",
  "rust_analyzer",
  "clangd",
  "vuels",
  "volar",
  "terraformls"
  -- Uncomment these if you want to use them
  -- "stimulus-language-server",
}

-- Setup LSP servers with default config
for _, lsp in ipairs(servers) do
  local ok, err = pcall(function()
    lspconfig[lsp].setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
    }
  end)

  if not ok then
    print("Error setting up LSP for " .. lsp .. ": " .. err)
  end
end

-- stimulus-language-server
lspconfig.stimulus_language_server = {
  default_config = {
    cmd = { "stimulus-language-server", "--stdio" },
    filetypes = { "javascript", "typescript", "html", "erb", "ruby" },
    root_dir = lspconfig.util.root_pattern("package.json", ".git"),
  },
}

-- Prisma Language Server
lspconfig.prismals.setup {
  cmd = { "prisma-language-server", "--stdio" },
  filetypes = { "prisma" },
  settings = {
    prisma = {
      prismaFmtBinPath = "",
    },
  },
}

lspconfig.emmet_ls.setup {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = { "blade", "blade.php", "html", "css" },
  init_options = {
    html = {
      options = {
        ["output.selfClosingStyle"] = "xhtml",
      },
    },
  },
}

-- -- Svelte Language Server
lspconfig.svelte.setup {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  settings = {
    svelte = {
      plugin = {
        svelte = {
          compilerWarnings = {
            ["a11y-missing-attribute"] = "ignore",
            ["a11y-unknown-aria-attribute"] = "ignore",
          },
        },
      },
    },
  },
}

lspconfig.svelte.setup {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  settings = {
    svelte = {
      plugin = {
        css = {
          enable = true,
        },
        html = {
          enable = true,
        },
        typescript = {
          enable = true,
        },
        javascript = {
          enable = true,
        },
      },
    },
  },
}

-- TypeScript Language Server
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
