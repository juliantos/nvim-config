vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/Users/julia/AppData/Local/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

local shell = vim.o.shell:match("[^\\]*.exe")
local windows = package.config:sub(1,1) == "\\"
if shell == "bash.exe"  and windows then
    --vim.opt.shell = string.format('%s -f', vim.o.shell)
    vim.opt.shell = 'cmd.exe'
    vim.opt.shellcmdflag="/s /c"
    --vim.opt.shellcmdflag="-c"
    --print(vim.o.shell)
    --print(vim.o.shellcmdflag)
end
