local disabled_builtin_plugins = {
    'netrw',
    'netrwPlugin',
    'netrwSettings',
    'gzip',
    'zip',
    'zipPlugin',
    'tar',
    'tarPlugin',
    'getscript',
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_builtin_plugins) do
    vim.g["loaded_" .. plugin] = 1
end
