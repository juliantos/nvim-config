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

