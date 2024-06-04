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

local last_update_file = configlocation .. "/update"
TIME = nil
UPDATE = false
local update_file = io.open(last_update_file, "r")
if update_file == nil then
    TIME = os.time()
    UPDATE = true
else
    TIME = update_file:read("*a")
    update_file:close()

    if os.time() - TIME >= 86400 then UPDATE = true end
end


if UPDATE then
    print("Updating Neovim Config")
    local fetch_handle = io.popen('git fetch; git status')
    if fetch_handle ~= nil then
        local data = fetch_handle:read("*a")
        local behind = string.find(data, "behind")
        if behind ~= nil then
            print("Neovim Config is behind: Updating it!")
            local rebase_handle = io.popen('git stash -m "Automated Stash"; git pull; git stash apply')
            if rebase_handle ~= nil then
                rebase_handle:close()
            end
        end
        fetch_handle:close()
    end

    local new_update_file = io.open(last_update_file, "w+")
    if new_update_file ~= nil then
        new_update_file:write(os.time())
        new_update_file:close()
    end
end


require("juliantos.packer")
-- vim.cmd('PackerSync')
require("juliantos.remaps")
require("juliantos.sets")
