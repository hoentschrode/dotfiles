return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local dapPython = require("dap-python")
    dapPython.setup()
  end,
}
