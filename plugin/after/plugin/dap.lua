--local dap = require('dap')

--dap.adapters.lldb = {
    --type = 'executable',
    --command = '/usr/bin/lldb-vscode-17',
    --name = 'lldb'
--}

--dap.configurations.c = {
    --{
        --name = 'Test',
        --type = 'lldb',
        --request = 'launch',
        --program = function()
            --return vim.fn.input('Path to executable: ',  vim.fn.getcwd() .. '/tests', 'file')
        --end,
        --cwd = "${workspaceFolder}/tests",
        --stopOnEntry = false,
        --args = {},
    --}
--}
--dap.configurations.cpp = dap.configurations.c
--dap.configurations.rust = dap.configurations.c

--vim.keymap.set({"n","v"}, "<leader>b", function () dap.toggle_breakpoint() end)
--vim.keymap.set({"n","v"}, "<leader>dr", function () dap.repl.open() end)
--vim.keymap.set({"n","v"}, "<leader>dl", function () dap.run_last() end)
--vim.keymap.set({"n","v"}, "<leader>lp", function () dap.set_breakpoint(nil, nil, vim.fn.input("Log Message: ")) end)
--vim.keymap.set({"n","v"}, "<F11>", function () dap.step_into() end)
--vim.keymap.set({"n","v"}, "<F10>", function () dap.step_over() end)
--vim.keymap.set({"n","v"}, "<F5>", function () dap.continue() end)
--vim.keymap.set({"n","v"}, "<leader>dh", function () require('dap.widgets.ui').hover() end)
--vim.keymap.set({"n","v"}, "<leader>df", function ()
    --local widgets = require('dap.widgets.ui')
    --widgets.centered_float(widgets.frames)
--end)
--vim.keymap.set({"n","v"}, "<leader>ds", function ()
    --local widgets = require('dap.widgets.ui')
    --widgets.center_float(widgets.scopes)
--end)