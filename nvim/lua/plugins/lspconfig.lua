return {
    -- add clangd
    { import = "lazyvim.plugins.extras.lang.clangd" },
    -- fix lsp keymaps
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "nvimdev/lspsaga.nvim",
            init = function()
                require("lspsaga").setup({
                    definition = {
                        keys = {
                            edit = { "<CR>" },
                            quit = { "q", "Q", "<ESC>" },
                            vsplit = { "sj" },
                            split = { "sl" },
                        }
                    },
                    finder = {
                        max_height = 0.6,
                        keys = {
                            toggle_or_open = { "<CR>" },
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
                local keys = require("lazyvim.plugins.lsp.keymaps").get()
                -- change a keymap
                keys[#keys + 1] = {'gi', "<cmd>Lspsaga finder imp<CR>"}
                keys[#keys + 1] = {'md', "<cmd>Lspsaga peek_definition<CR>"}
                keys[#keys + 1] = {'mr', "<cmd>Lspsaga finder ref+imp<CR>"}
                keys[#keys + 1] = { "K", "<cmd>Lspsaga hover_doc<CR>", desc = "Hover Documentstion" }
                keys[#keys + 1] = { "<leader>cr", "<cmd>Lspsaga rename ++project<CR>", desc = "[R]ename" }
                keys[#keys + 1] = { "<leader>ca", "<cmd>Lspsaga code_action<CR>" }
                keys[#keys + 1] = {
                    "<leader>cf",
                    function()
                        vim.lsp.buf.format { async = true }
                    end,
                    desc = "Format"
                }
                -- disable a keymap
                keys[#keys + 1] = { "gD", false }
                keys[#keys + 1] = { "gI", false }
                keys[#keys + 1] = { "<leader>cl", false }
                keys[#keys + 1] = { "gy", false }
                keys[#keys + 1] = { "cc", false }
                keys[#keys + 1] = { "cC", false }
                keys[#keys + 1] = { "]]", false }
                keys[#keys + 1] = { "[[", false }
                -- add a keymap
                -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
            end,
        },
        opts = {
            servers = {
                clangd = {
                    keys = {
                        { "<leader>a", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
                    },
                }
            },
            diagnostics = {
                underline = false,
                virtual_text = false,
            },
        },
    }
}
