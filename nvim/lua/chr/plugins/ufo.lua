return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    local ufo = require("ufo")
    local opt = vim.opt
    local keymap = vim.keymap

    -- Enable folding
    opt.foldcolumn = "1"
    opt.foldlevel = 99
    opt.foldlevelstart = 99
    opt.foldenable = true

    ufo.setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })

    keymap.set("n", "zR", ufo.openAllFolds)
    keymap.set("n", "zM", ufo.closeAllFolds)
  end,
}
