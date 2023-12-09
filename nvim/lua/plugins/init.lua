require("plugins/config")
require("plugins/config/dap")

require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

require("toggleterm").setup{
}

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
	callback = function ()
		-- get the current buffer name
		local buffername = vim.api.nvim_get_current_buf()
		-- the function is deprecated, should update.
		local buftype = vim.api.nvim_buf_get_option(buffername, "buftype")
		vim.notify(buftype, vim.log.levels.DEBUG, {})
		-- vim.notify(buffert, vim.log.levels.INFO, {})
		if buftype == "" then
			vim.fn.execute("write")
		end
	end,
})

