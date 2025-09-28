return {
  "thgrund/tidal.nvim",
  opts = {
    -- Your configuration here
    -- See configuration section for defaults
    boot = {
      tidal = {
        cmd = "ghci",
        args = { "-v0" },
        file = "~/Documents/00-Projekte/Tidal/BootTidal.hs",
        enabled = true,
        styles = {
          osc = {
            ip = "127.0.0.1",
            port = 3335,
          },
          global = { baseName = "CodeHighlight", style = { bg = "#7eaefc", foreground = "#000000" } },
        },
        events = {
          osc = {
            ip = "127.0.0.1",
            port = 6013,
          },
        },
        fps = 30,
      },
    },
  },
  -- Recommended: Install TreeSitter parsers for Haskell and SuperCollider
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "haskell", "supercollider" } },
  },
}
