return {
  "ggandor/leap.nvim",
  config = function()
    local leap = require("leap")
    leap.create_default_mappings()

    leap.opts.case_sensitive = true

    -- Gray out search area
    vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })

    -- Lightspeed syntax highlighting
    vim.api.nvim_set_hl(0, "LeapMatch", {
      -- For light themes, set to 'black' or similar.
      fg = "white",
      bold = true,
      nocombine = true,
    })
  end,
}
