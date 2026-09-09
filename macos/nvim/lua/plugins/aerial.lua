-- Aerial 2.7.0 is incompatible with Neovim 0.12's Tree-sitter query captures.
-- Keep this override until AstroNvim can consume an Aerial release containing
-- the upstream compatibility fix.
return {
  "stevearc/aerial.nvim",
  version = false,
  commit = "28fe6e822ae344544c379d60fcb13c9519a1f08a",
}
