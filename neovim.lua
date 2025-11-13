return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0d1118", -- Default background
                base01 = "#4a7191", -- Lighter background (status bars)
                base02 = "#0d1118", -- Selection background
                base03 = "#4a7191", -- Comments, invisibles
                base04 = "#05a3b1", -- Dark foreground
                base05 = "#e8eef1", -- Default foreground
                base06 = "#e8eef1", -- Light foreground
                base07 = "#05a3b1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#c66161", -- Variables, errors, red
                base09 = "#882e2e", -- Integers, constants, orange
                base0A = "#cece78", -- Classes, types, yellow
                base0B = "#6ec96e", -- Strings, green
                base0C = "#69c9c9", -- Support, regex, cyan
                base0D = "#3b3ba0", -- Functions, keywords, blue
                base0E = "#24e5ff", -- Keywords, storage, magenta
                base0F = "#e7e7bb", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
