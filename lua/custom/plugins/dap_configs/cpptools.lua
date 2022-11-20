local dap = require "dap"

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = "OpenDebugAD7",
}

dap.configurations.cpp = {
  {
    name = "GDB Debug",
    type = "cppdbg",
    request = "launch",
    MIMode = "gdb",
    miDebuggerPath = "/home/kevin/gdb.sh",
    cwd = "${workspaceFolder}",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
  },
}

dap.configurations.c = dap.configurations.cpp
