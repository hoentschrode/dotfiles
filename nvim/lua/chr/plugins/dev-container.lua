return {
  "esensar/nvim-dev-container",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local devcontainer = require("devcontainer")
    local keymap = vim.keymap
    devcontainer.setup({})

    -- key mappings
    keymap.set("n", "<leader>ds", ":DevcontainerStart<CR>", { desc = "Start devContainer" })
    keymap.set("n", "<leader>da", ":DevcontainerAttach<CR>", { desc = "Attach to devContainer" })
  end,
}
