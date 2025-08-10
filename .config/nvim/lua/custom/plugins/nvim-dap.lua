return {
  'mfussenegger/nvim-dap',
  lazy = true,
  dependencies = {
    'theHamsta/nvim-dap-virtual-text',
    'neovim/nvim-lspconfig',
    'igorlfs/nvim-dap-view',
    'jay-babu/mason-nvim-dap.nvim',
    -- dap for go
    'leoluz/nvim-dap-go',
    -- dap for python
    'mfussenegger/nvim-dap-python',
  },
  config = function()
    require('dap-go').setup()

    require('dap-python').setup(require('user.utils').get_python_venv())
  end,
}
