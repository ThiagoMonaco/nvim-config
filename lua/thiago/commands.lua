vim.api.nvim_command('command! -nargs=0 RemoveLogs %g/console\\.log/d_')
vim.api.nvim_command('command! -nargs=0 Erdetail lua vim.diagnostic.open_float(0, {scope = "line", source = "always"})')
vim.api.nvim_command('command! -nargs=0 ListUnsaved ls! /[^%]*%*+/')
