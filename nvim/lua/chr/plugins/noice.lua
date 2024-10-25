return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  config = function()
    local noice = require("noice")

    noice.setup({
      -- your configuration comes here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },

      presets = {
        lsp_doc_border = true,
        long_message_to_split = true,
        command_palette = true,
      },
    })
  end,
}
