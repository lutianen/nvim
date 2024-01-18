-- define your colorscheme here
-- local colorscheme = 'monokai_pro'
local colorscheme = 'gruvbox'

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

