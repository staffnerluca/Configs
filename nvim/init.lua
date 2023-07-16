require("ls")
-- Enable relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set the number of lines to offset for relative line numbers
vim.opt.signcolumn = "yes" -- Required to avoid line number shifting

-- Define a function to toggle relative line numbers
function ToggleRelativeLineNumbers()
  if vim.opt.relativenumber:get() then
    vim.opt.number = false
    vim.opt.relativenumber = false
  else
    vim.opt.number = true
    vim.opt.relativenumber = true
  end
end

-- Map a keybinding to toggle relative line numbers
vim.api.nvim_set_keymap('n', '<Leader>rn', ':lua ToggleRelativeLineNumbers()<CR>', { noremap = true, silent = true })

-- Automatically enable relative line numbers on startup
vim.cmd('autocmd BufReadPost * lua ToggleRelativeLineNumbers()')
