-- Default options:
require('kanagawa').setup({
    transparent = true,
    terminal_colors = true,
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none",
                }
            }
        }
    },
    overrides = function ()
        return {
            Pmenu = { blend = vim.o.pumblend }
        }
    end
})


-- setup must be called before loading
vim.cmd("colorscheme kanagawa-wave")

