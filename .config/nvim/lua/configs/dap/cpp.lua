local M = {}

function M.setup()
	local dap = require("dap")
	dap.adapters.cppdbg = {
        id = "cppdbg",
		type = "executable",
		command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
		-- command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
	}
    dap.configurations.cpp = {
        {
            name = "Launch file",
            type = "cppdbg",
            request = "launch",
            program = function()
                return vim.fn.input("Path to executable: ", "./", "file")
            end,
            cwd = "${workspaceFolder}",
            stopOnEntry = true,
        },
        -- {
        --     name = "Attach to gdbserver :1234",
        --     type = "cppdbg",
        --     request = "launch",
        --     MIMode = "gdb",
        --     miDebuggerServerAddress = "localhost:1234",
        --     miDebuggerPath = "/usr/bin/gdb",
        --     cwd = "${workspaceFolder}",
        --     program = function()
        --         return vim.fn.input("Path to executable: ", "./", "file")
        --     end,
        -- },
    }
    dap.configurations.c = dap.configurations.cpp
end

return M
