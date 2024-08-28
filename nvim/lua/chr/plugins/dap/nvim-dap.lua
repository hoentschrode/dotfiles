return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require("dap")
    local keymap = vim.keymap

    keymap.set("n", "<leader>bb", function()
      dap.toggle_breakpoint()
    end, { desc = "DAP: Toggle breakpoint" })
    keymap.set("n", "<leader>bB", function()
      dap.set_breakpoint()
    end, { desc = "DAP: Set breakpoint" })
    keymap.set("n", "<F5>", function()
      dap.continue()
    end, { desc = "DAP: continue" })
    keymap.set("n", "<F10>", function()
      dap.step_over()
    end, { desc = "DAP: step over" })
    keymap.set("n", "<F11>", function()
      dap.step_into()
    end, { desc = "DAP: step into" })
    keymap.set("n", "<F12>", function()
      dap.step_out()
    end, { desc = "DAP: step out" })
    keymap.set({ "n", "v" }, "<leader>bh", function()
      require("dap.ui.widgets").hover()
    end, { desc = "DAP: hover" })
    keymap.set({ "n", "v" }, "<leader>bp", function()
      require("dap.ui.widgets").preview()
    end, { desc = "DAP: preview" })
  end,
}
