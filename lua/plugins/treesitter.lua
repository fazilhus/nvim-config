return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "c", "cpp", "c_sharp", "cmake", "python", "rust", "zig" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
