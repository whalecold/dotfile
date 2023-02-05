require("plugins/config/dap/go")
require("plugins/config/dap/rust")
require("plugins/config/dap/ui")

local dap = require "dap"

vim.fn.sign_define("DapBreakpoint", { text = "⬢", texthl = "Yellow", linehl = "", numhl = "Yellow" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "Green", linehl = "ColorColumn", numhl = "Green" })
vim.keymap.set('n', '<Leader>dd', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dn', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>do', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)

dap.set_log_level('TRACE')
dap.defaults.auto_continue_if_many_stopped = true
