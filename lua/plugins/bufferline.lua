return {
    "akinsho/bufferline.nvim",
    opts = {},
    keys = {
        { "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", silent = true },
        { "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", silent = true },
        { "<leader>bp", "<Cmd>BufferLinePick<CR>", silent = true },
        { "<leader>bd", "<Cmd>bdelete<CR>", silent = true },
    },
    lazy = false
}
