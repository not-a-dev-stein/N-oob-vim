require'cmp'.setup{
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- Para usar com o 'luasnip'
        end,
    },
    mapping = {
        ['<C-d>'] = require'cmp'.mapping.scroll_docs(-4),
        ['<C-f>'] = require'cmp'.mapping.scroll_docs(4),
        ['<C-Space>'] = require'cmp'.mapping.complete(),
        ['<C-e>'] = require'cmp'.mapping.close(),
        ['<CR>'] = require'cmp'.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- Novamente, para uso com o 'luasnip'
        { name = 'buffer' }
    }
}

require("nvim-autopairs.completion.cmp").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replace
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})
