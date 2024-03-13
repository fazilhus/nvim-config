return
{
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "cmake", "omnisharp", "pylsp", "rust_analyzer", "zls", },
            })
        end
    },
    {
       "neovim/nvim-lspconfig",
        config = function()
            local lspcfg = require("lspconfig")
            lspcfg.lua_ls.setup({})
            -- setup other lsp's
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
