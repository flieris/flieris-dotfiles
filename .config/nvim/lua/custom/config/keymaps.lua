vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = 'Go to Upper window', remap = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = 'Go to Lower window', remap = true })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = 'Go to Left window', remap = true })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = 'Go to Right window', remap = true })
vim.keymap.set('n', '<S-Left>', '<cmd>bprevious<cr>', { desc = 'Go to previous tab' })
vim.keymap.set('n', '<S-Right>', '<cmd>bnext<cr>', { desc = 'Go to next tab' })
vim.keymap.set('n', '<leader>bd', function()
  Snacks.bufdelete()
end, { desc = 'Delete buffer ' })
vim.keymap.set('n', '<C-/>', '<cmd>ToggleTerm<cr>', { desc = 'Open terminal' })
