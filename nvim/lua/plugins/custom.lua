return {
  {
    "levouh/tint.nvim",
    config = function()
      local tint = require("tint")
      tint.setup()
    end,
  },
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      -- add options here
      -- or leave it empty to use the default settings
      dir_path = "Documents/00-09 Notes/images",
      use_absolut_path = true,
      prompt_for_file_name = false,

      filetypes = {
        markdown = {
          dir_path = "Documents/00-09 Notes/images",
          template = "![$FILE_NAME_NO_EXT$CURSOR]($FILE_PATH)",
          prompt_for_file_name = false,
        },
      },
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  },
  {
    "3rd/image.nvim",
    build = false,
    opts = {
      processor = "magick_cli",
      integrations = {
        markdown = {
          only_render_image_at_cursor = true,
        },
      },
    },
  },
}
