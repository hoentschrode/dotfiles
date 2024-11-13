return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d", "eslint" },
      typescript = { "eslint_d", "eslint" },
      python = { "pylint" },
    }

    -- Refer to https://github.com/mfussenegger/nvim-lint/issues/462
    -- if you have trouble with eslint without esling.json!
    --local eslint = lint.linters.eslint_d
    --eslint.args = {
    --  "--no-warn-ignored",
    --  "--format",
    --  "json",
    --  "--stdin",
    --  "--stdin-filename",
    --  function()
    --    return vim.api.nvim_buf_get_name(0)
    --  end,
    --}

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>ll", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })

    vim.keymap.set("n", "<leader>lr", function()
      lint.get_running()
    end, { desc = "Show linters for current buffer" })
  end,
}
