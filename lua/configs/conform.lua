local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "blue" },
    vue = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    php = { "intelephense" },
    astro = { "prettier" },
    blade = { "blade-formatter" },
    golang = { "goimports" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
