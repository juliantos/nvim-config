return {
    {
        'nvim-tree/nvim-tree.lua',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function ()
            require('nvim-tree').setup({})
            vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle)
        end
    },
}
