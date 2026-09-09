---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        "gopls",
        "goimports",
        "gofumpt",
        "golangci-lint",
        "golines",
        "gotests",

        "lua-language-server",
        "stylua",
        "selene",

        "debugpy",
        -- Defer these tools on fresh Arch installs until their runtimes are available.
        { "pyright", condition = function() return vim.fn.executable "npm" == 1 end },

        {
          "groovy-language-server",
          condition = function() return vim.fn.executable "java" == 1 and vim.fn.executable "javac" == 1 end,
        },

        "tree-sitter-cli",
      },
    },
  },
}
