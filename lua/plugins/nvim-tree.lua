return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        sync_root_with_cwd = true,
        sort = {
            sorter = 'case_sensitive'
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true
        },
    },
    keys = {
        {
            '<leader>e',
            '<cmd>NvimTreeToggle<CR>',
        },
        {
            '<leader>fe',
            '<cmd>NvimTreeFindFile<CR>'
        }
    },
}
