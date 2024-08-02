-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper window", remap = true })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower window", remap = true })
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left window", remap = true })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right window", remap = true })
vim.keymap.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "<C-S-Up", LazyVim.ui.bufremove, { desc = "Remove current buffer" }) -- this doesnt work fix
-- dodaj keymapy do:
-- przechodzenia miedzy kartami/bufforamia - nadpisz ten keymap <leader>bb na cos bardziej sensownego
-- zamykania karty/bufforu
--
