local tree ={}
local g = vim.g
-- Explicitly set the nvim tree width
g.nvim_tree_width = 26
local tree_width = g.nvim_tree_width
tree.toggle = function()
   require('nvim-tree').toggle()
  if require('nvim-tree.view').win_open() then
   require('bufferline.state').set_offset(tree_width + 1, 'FileTree')
   require('nvim-tree').find_file(true)
 else
    require('bufferline.state').set_offset(0)
 end
end

return tree
