-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

-- Enable completion triggered by <c-x><c-o>
buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Enablinng LSP with lsp-installer
require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)
