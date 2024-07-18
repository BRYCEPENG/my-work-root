return {
    "neovim/nvim-lspconfig",
	-- enabled = false,
    opts = function()
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        keys[#keys + 1] = {'gi', "<cmd>Lspsaga finder imp<CR>"}
        keys[#keys + 1] = {'gi', "<cmd>Lspsaga finder imp<CR>"}
        keys[#keys + 1] = {'gd', "<cmd>Lspsaga peek_definition<CR>"}
        keys[#keys + 1] = {'gr', "<cmd>Lspsaga finder ref+imp<CR>"}
        keys[#keys + 1] = {'K', "<cmd>Lspsaga hover_doc<CR>"}
    end,
}
