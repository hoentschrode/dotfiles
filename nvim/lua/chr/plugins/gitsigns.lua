return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")
    local keymap = vim.keymap

    gitsigns.setup()

    keymap.set("n", "<leader>hb", "<cmd>Gitsigns blame_line<cr>", { desc = "Gitsigns: Blame line" })
    keymap.set("n", "<leader>hd", "<cmd>Gitsigns diffthis<cr>", { desc = "Gitsigns: Diff this" })
  end,
}
