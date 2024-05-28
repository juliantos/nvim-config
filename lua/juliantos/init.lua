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


require("juliantos.packer")
-- vim.cmd('PackerSync')
require("juliantos.remaps")
require("juliantos.sets")
