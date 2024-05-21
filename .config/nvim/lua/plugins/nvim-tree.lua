return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependences = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})
  end,
}
