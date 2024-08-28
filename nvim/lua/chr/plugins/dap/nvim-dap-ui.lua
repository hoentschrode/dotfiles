return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    -- Automatically open/close dap-ui on dap invocation
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- Set keymap
    local keymap = vim.keymap
    keymap.set("n", "<F5>", dap.continue, { desc = "DAP: Continue" })
    keymap.set("n", "<F10>", dap.step_over, { desc = "DAP: Step over" })
    keymap.set("n", "<F11>", dap.step_into, { desc = "DAP: Step into" })
    keymap.set("n", "<F12>", dap.step_out, { desc = "DAP: Step out" })
    keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "DAP: Toggle breakpoint" })
  end,
}
