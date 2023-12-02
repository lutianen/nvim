-- define your colorscheme here
-- local colorscheme = 'gruvbox' -- 'monokai_pro'
local colorscheme = 'monokai'

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

