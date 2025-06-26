return {
    "akinsho/bufferline.nvim",
    opts = {
            options = {
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(_, _, diagnostics_dict, _)
                local indicator = " "
                for level, number in pairs(diagnostics_dict) do
                    local symbol
                    if level == "error" then
                        symbol = ""
                    elseif level == "warning" then
                        symbol = ""
                    else
                        symbol = ""
                    end
                    indicator = indicator .. number .. symbol
                end
                return indicator
            end
        }
    },
    keys = {
        { "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", silent = true },
        { "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", silent = true },
        { "<leader>bp", "<Cmd>BufferLinePick<CR>", silent = true },
        { "<leader>bd", "<Cmd>bdelete<CR>", silent = true },
    },
    lazy = false
}
