require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<ESC>", "<C-\\><C-n>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Mapping for focus
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window', noremap = true })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window', noremap = true })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window', noremap = true })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window', noremap = true })

-- Reemove highlight 
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

local kickstart = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true })

-- Stylistic way of showing that it has been YANKED!
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = kickstart,
  callback = function()
    vim.hl.on_yank()
  end,
})



-- Window handling for splitting
vim.keymap.set('n', '<leader>l', ':rightbelow vsp<CR>', { 
  noremap = true, 
  silent = true,
  desc = "Split window vertically right" 
})

vim.keymap.set('n', '<leader>h', ':leftabove vsp<CR>', { 
  noremap = true, 
  silent = true,
  desc = "Split window vertically left" 
})

vim.keymap.set('n', '<leader>j', ':rightbelow sp<CR>', { 
  noremap = true, 
  silent = true,
  desc = "Split window horizontally below"
})

vim.keymap.set('n', '<leader>k', ':leftabove sp<CR>', { 
  noremap = true, 
  silent = true,
  desc = "Split window horizontally above"
})


