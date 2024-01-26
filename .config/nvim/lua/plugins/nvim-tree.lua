local nvim_tree = require("nvim-tree")

nvim_tree.setup({
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_netrw = true,
  hijack_cursor = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
})
