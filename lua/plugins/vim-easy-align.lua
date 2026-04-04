return {
    "junegunn/vim-easy-align",
    keys = {
        {"ga", "<Plug>(EasyAlign)", mode = {"n", "x"}},
    },
    config = function()
        vim.g.easy_align_delimiters = {
            ['\\'] = {
                pattern = [[\\\s*$]],
                left_margin = 1,
                right_margin = 0,
                stick_to_left = 0,
            },
        }
    end
}
