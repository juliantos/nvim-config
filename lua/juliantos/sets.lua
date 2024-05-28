local homedir = os.getenv('HOME')
if homedir == nil then
    homedir = os.getenv('home') -- powershell has this lowercase
end

local shell = vim.o.shell:match("[^\\]*.exe")
local windows = package.config:sub(1,1) == "\\"

if windows then
    configlocation = homedir .. '\\AppData\\Local\\nvim'
else
    configlocation = homedir .. '/.local/nvim'
end

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
vim.opt.undodir = configlocation .. "/undodir"
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

if shell == "bash.exe"  and windows then
    vim.opt.shell = 'cmd.exe'
    vim.opt.shellcmdflag="/s /c"
end

