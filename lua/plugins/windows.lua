return {
    'anuvyklack/windows.nvim',
    dependencies = {"anuvyklack/middleclass", "anuvyklack/animation.nvim"},
    config = function ()
        vim.o.equalalways = false
        require('windows').setup({
            animation = {
                enable = false,
            },
            autowidth = {
                enable = false,
            },
        })
    end,
    keys = {
        {'<leader>z', '<Cmd>WindowsMaximize<CR>', desc = 'Zoom Window'},
    },
}
