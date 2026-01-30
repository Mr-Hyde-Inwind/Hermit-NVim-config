return {
    'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case"
            }
        },
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = true,
                no_ignore_parent = true,
            },
        }
    },
    config = function(_, opts)
        local telescope = require('telescope')
        telescope.setup(opts)
        telescope.load_extension('fzf')
    end;

    keys = {
        { "<leader>fb", "<Cmd>Telescope buffers<CR>", silent = true },
        { "<leader>ff", "<Cmd>Telescope find_files<CR>", silent = true },
        { "<leader>fg", "<Cmd>Telescope live_grep<CR>", silent = true },
    }
}
