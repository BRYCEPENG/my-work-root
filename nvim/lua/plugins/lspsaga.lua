return {
    "nvimdev/lspsaga.nvim",
	-- enabled = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("lspsaga").setup({
            definition = {
                keys = {
                    edit = { "o", "O", "<CR>" },
                    quit = { "q", "Q", "<ESC>" },
                    vsplit = { "sj" },
                    split = { "sl" },
                }
            },
            finder = {
                max_height = 0.6,
                keys = {
                    toggle_or_open = { "o", "O", "<CR>" },
                    quit = { "q", "Q", "<ESC>" },
                    vsplit = { "sj" },
                    split = { "sl" },
                }
            },
            rename = {
                keys = {
                    quit = { "<ESC>" },
                }
            },
            diagnostic = {
                diagnostic_only_current = true,
            },
        })
        vim.diagnostic.config({
            virtual_text = false
        })
    end,
}

