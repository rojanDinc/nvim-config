require('dap-go').setup()

local dap, dapui = require("dap"), require("dapui")
dapui.setup()

function get_args()
  local co = coroutine.running()
  if co then
    return coroutine.create(function()
      local args = {}
      vim.ui.input({ prompt = 'Args: ' }, function(input)
        args = vim.split(input or "", " ")
      end)
      coroutine.resume(co, args)
    end)
  else
    local args = {}
    vim.ui.input({ prompt = 'Args: ' }, function(input)
      args = vim.split(input or "", " ")
    end)
    return args
  end
end

local go_debug_with_args_v2 = {
  type = "go",
  name = "Debug with Args v2",
  request = "launch",
  program = "${fileDirname}",
  args = get_args,
}

table.insert(dap.configurations.go, go_debug_with_args_v2)


dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
