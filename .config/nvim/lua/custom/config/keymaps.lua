-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
--
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
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

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.keymap.set('n', "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { desc = "Breakpoint Condition" })
vim.keymap.set('n', "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set('n', "<leader>dc", function() require("dap").continue() end, { desc = "Run/Continue" })
vim.keymap.set('n', "<leader>da", function() require("dap").continue({ before = get_args }) end, { desc = "Run with Args" })
vim.keymap.set('n', "<leader>dC", function() require("dap").run_to_cursor() end, { desc = "Run to Cursor" })
vim.keymap.set('n', "<leader>dg", function() require("dap").goto_() end, { desc = "Go to Line (No Execute)" })
vim.keymap.set('n', "<leader>di", function() require("dap").step_into() end, { desc = "Step Into" })
vim.keymap.set('n', "<leader>dj", function() require("dap").down() end, { desc = "Down" })
vim.keymap.set('n', "<leader>dk", function() require("dap").up() end, { desc = "Up" })
vim.keymap.set('n', "<leader>dl", function() require("dap").run_last() end, { desc = "Run Last" })
vim.keymap.set('n', "<leader>do", function() require("dap").step_out() end, { desc = "Step Out" })
vim.keymap.set('n', "<leader>dO", function() require("dap").step_over() end, { desc = "Step Over" })
vim.keymap.set('n', "<leader>dP", function() require("dap").pause() end, { desc = "Pause" })
vim.keymap.set('n', "<leader>dr", function() require("dap").repl.toggle() end, { desc = "Toggle REPL" })
vim.keymap.set('n', "<leader>ds", function() require("dap").session() end, { desc = "Session" })
vim.keymap.set('n', "<leader>dt", function() require("dap").terminate() end, { desc = "Terminate" })
vim.keymap.set('n', "<leader>dw", function() require("dap.ui.widgets").hover() end, { desc = "Widgets" })
