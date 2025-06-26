return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        {"neovim/nvim-lspconfig", version = "^1.0.0"},
        {"williamboman/mason-lspconfig", version = "^1.0.0"},
    },
    opts = {},
    config = function(_, opts)
        require("mason").setup(opts)
        local registry = require("mason-registry")

        local function setup(name, config)
            local success, package = pcall(registry.get_package, name)
            if success and not package:is_installed() then
                package:install()
            end
            local nvim_lsp = require("mason-lspconfig.mappings.server").package_to_lspconfig[name]
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            require("lspconfig")[nvim_lsp].setup(config)
        end

        local servers = {
            ["lua-language-server"] = {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"}
                        }
                    }
                }
            },

            pyright = {},
        }

        for server, config in pairs(servers) do
            setup(server, config)
        end

        vim.cmd("LspStart")
        vim.diagnostic.config({
            -- virtual_lines = true,
            virtual_text = true,
            update_in_insert = true,
        })
    end
}
