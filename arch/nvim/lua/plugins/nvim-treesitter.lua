return {
  "nvim-treesitter/nvim-treesitter",
  -- Отключаем ленивую загрузку, чтобы подсветка работала сразу при старте
  lazy = false,
  -- Автоматически обновляем парсеры при обновлении плагина
  build = ":TSUpdate",

  -- Все настройки Treesitter должны быть внутри таблицы opts
  opts = function(_, opts)
    -- Neovim 0.12 returns a list of nodes for query captures, while the
    -- archived Treesitter branch bundled by AstroNvim expects a single node.
    vim.treesitter.query.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
      local nodes = match[pred[2]]
      local node = type(nodes) == "table" and nodes[1] or nodes
      if not node then return end

      local alias = vim.treesitter.get_node_text(node, bufnr):lower()
      local language = vim.filetype.match { filename = "a." .. alias }
      metadata["injection.language"] = language or ({ ex = "elixir", pl = "perl", sh = "bash", ts = "typescript", uxn = "uxntal" })[alias] or alias
    end, { force = true, all = false })

    return vim.tbl_deep_extend("force", opts, {
      ensure_installed = {
        -- Lua and Vim are already included by AstroNvim; duplicate downloads can race on first install.
        "java",
        "groovy",
        "markdown",
        "markdown_inline",
        "yaml",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
