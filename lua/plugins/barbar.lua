return {
  {
      'romgrk/barbar.nvim',
      dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
      },
      --init = function() vim.g.barbar_auto_setup = false end,
      version = '^1.0.0', -- optional: only update when a new 1.x version is released
      config = function()
          local opts = {
              auto_hide = false,

              hide = { extensions = true, inactive = false },

              sidebar_filetypes = {
                  NvimTree = true,
                  undotree = true,
              },
              -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
              -- animation = true,
              -- insert_at_start = true,
              -- …etc.
          }
          require('barbar').setup(opts)

          local opts = { silent = true }

          vim.keymap.set("n", "<A-->", "<cmd>BufferPrevious<CR>", opts)
          vim.keymap.set("n", "<A-+>", "<cmd>BufferNext<CR>", opts)

          vim.keymap.set("n", "<A-Left>", "<cmd>BufferPrevious<CR>", opts)
          vim.keymap.set("n", "<A-Right>", "<cmd>BufferNext<CR>", opts)

          vim.keymap.set("n", "<A-S-Left>", "<cmd>BufferMovePrevious<CR>", opts)
          vim.keymap.set("n", "<A-S-Right>", "<cmd>BufferMoveNext<CR>", opts)

          vim.keymap.set("n", "<A-<>", "<cmd>BufferMovePrevious<CR>", opts)
          vim.keymap.set("n", "<A->>", "<cmd>BufferMoveNext<CR>", opts)

          vim.keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<CR>", opts)
          vim.keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<CR>", opts)
          vim.keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<CR>", opts)
          vim.keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<CR>", opts)
          vim.keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<CR>", opts)
          vim.keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<CR>", opts)
          vim.keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<CR>", opts)
          vim.keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<CR>", opts)
          vim.keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<CR>", opts)

          vim.keymap.set("n", "<A-p>", "<cmd>BufferPin<CR>", opts)
          vim.keymap.set("n", "<A-w>", "<cmd>BufferClose<CR>", opts)

          vim.g.lightline= {
              colorscheme = 'catppuccin',
              enable = {
                  statusline = 1,
                  tabline = 0,
              },
          }
      end,
  },
}
