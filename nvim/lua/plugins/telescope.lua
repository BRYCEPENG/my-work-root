return {
    "nvim-telescope/telescope.nvim",
    keys = {
        -- add a keymap to browse plugin files
        {
            "<leader><space>",
            LazyVim.pick("files", {root = false}),
            desc = "Find Files (cwd)",
        },
        {
            "<leader>ff",
            LazyVim.pick("files", {root = true}),
            desc = "Find Files (cwd)",
        },
        {
            "<leader>fF",
            LazyVim.pick("files", {root = true}),
            desc = "Find Files (Root Dir)",
        },
    },
};
