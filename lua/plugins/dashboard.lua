local map = vim.api.nvim_set_keymap

-- Set the 'backend' stuff
vim.g.dashboard_disable_statusline = 1
vim.g.dashboard_default_executive = "telescope"
vim.g.indentLine_fileTypeExclude = {'dashboard'}

-- Keymappings
map('n', '<leader>fn', ':DashboardNewFile<CR>', {noremap=true, silent=true})

-- Set what is displayed in the dashboard itself
vim.g.dashboard_custom_header = {
  '                                          ',
  '                                          ',
  '                                          ',
  '               ▄▄██████████▄▄             ',
  '               ▀▀▀   ██   ▀▀▀             ',
  '       ▄██▄   ▄▄████████████▄▄   ▄██▄     ',
  '     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ',
  '    ████▄ ▄███▀              ▀███▄ ▄████  ',
  '   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ',
  '   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ',
  '    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ',
  '       ███           ▀▀           ███     ',
  '       ██████████████████████████████     ',
  '   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ',
  '   ███  ███ ███   ██    ██   ███▄███  ███ ',
  '   ▀██▄████████   ██    ██   ████████▄██▀ ',
  '    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ',
  '     ▀███▄  ▀███████    ███████▀  ▄███▀   ',
  '       ▀███    ▀▀██████████▀▀▀   ███▀     ',
  '         ▀    ▄▄▄    ██    ▄▄▄    ▀       ',
  '               ▀████████████▀             ',
}

vim.g.dashboard_custom_section = {
    a = { description = { "洛New File                  SPACE+f+n" }, command = "DashboardNewFile" },
    b = { description = { " Find File                 SPACE+f+f" }, command = "Telescope find_files" },
    c = { description = { " Find Word                 SPACE+f+w" }, command = "Telescope live_grep" },
    d = { description = { " Find Help                 SPACE+f+h" }, command = "Telescope help_tags" },
    e = { description = { "龎Read Manpages             SPACE+f+m" }, command = "Telescope man_pages" }
}
vim.g.dashboard_custom_footer = {
    ' I have a plan to take down one of the four emperors! '
}

-- Set the dashboard colors
vim.cmd[[
    highlight dashboardFooter    ctermfg=Yellow
    highlight dashboardHeader    ctermfg=Yellow
    highlight dashboardCenter    ctermfg=Gray
    highlight dashboardShortCut  ctermfg=Gray
]]
