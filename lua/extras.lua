-- Using live-server for HTML/CSS/JS
-- (needs to be installed with npm i -g live-server)
vim.cmd[[command! -nargs=* LiveServer :split | resize 2 | terminal<CR> | live-server]]
