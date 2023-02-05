-- default load vscode config.

vim.keymap.set('n', '<Leader>rl', function() require('dap.ext.vscode').load_launchjs(nil, nil) end)
