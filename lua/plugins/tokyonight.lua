return {
    "folke/tokyonight.nvim",
    opts = {
        style = "moon",
        on_highlights = function(hl, c)
            hl.Comment = { fg = c.orange, italic = true }
            hl["@comment"] = { link = "Comment" }
            hl["@lsp.type.comment"] = { link = "Comment" }
        end,
    },
    config = function (_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end
}
