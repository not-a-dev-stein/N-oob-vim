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
  '                                          ',
}

vim.g.dashboard_custom_section = {
    a = { description = { "洛New File                  SPACE+F+N" }, command = "DashboardNewFile" },
    b = { description = { " Find File                 SPACE+F+F" }, command = "Telescope find_files" },
    c = { description = { " Find Word                 SPACE+F+W" }, command = "Telescope live_grep" },
    d = { description = { " Find Help                 SPACE+F+H" }, command = "Telescope help_tags" },
    e = { description = { "龎Read Manpages             SPACE+F+M" }, command = "Telescope man_pages" }
}
vim.g.dashboard_custom_footer = {
    ' I have a plan to take down one of the four emperors! '
}

-- Set the dashboard colors
vim.cmd[[
    autocmd ColorScheme * highlight dashboardFooter guifg='#EEA825' | highlight dashboardHeader guifg='#EEA825'| highlight dashboardCenter guifg='#4C4F55' | highlight dashboardShortCut guifg='#4C4F55'
]]
