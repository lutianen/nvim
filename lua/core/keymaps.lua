vim.g.mapleader = " "

local keymap = vim.keymap
local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

----------------------------------
-- Insert mode --
----------------------------------
keymap.set("i", "jk", "<ESC>")

----------------------------------
-- Normal mode --
----------------------------------
-- New windows
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

--
-- Hint: see `:h vim.map.set()`
-- Better window navigation
--keymap.set('n', '<C-h>', '<C-w>h', opts)
--keymap.set('n', '<C-j>', '<C-w>j', opts)
--keymap.set('n', '<C-k>', '<C-w>k', opts)
--keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- 文件
keymap.set("n", "<leader>w", ":w!<CR>") -- Save file
keymap.set("n", "zz", ":q<CR>") -- Quit file

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 光标快速移动
keymap.set("n", "H", "^") -- 移动光标至行首
keymap.set("n", "L", "$") -- 移动光标至行尾

-- nvim-tree
keymap.set("n", "<leader>ef", ":NvimTreeToggle<CR>")

-- buffer line
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")

----------------------------------
-- Visual mode --
----------------------------------
-- Hint: start visual mode with the same area as the previous area and the same mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

