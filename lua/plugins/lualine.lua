local lualine = require("lualine")

local config = {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_material',
    component_separators = {'|', '|'},
    section_separators = {'', ''},
    disabled_filetypes = {'NvimTree'}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'b:gitsigns_status'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

--  Make sure that lualine is started
lualine.setup(config)
