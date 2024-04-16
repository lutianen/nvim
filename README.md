# Neovim (Nvim)

**Linux OS Neovim 配置套件**

## Install neovim

```bash
# xsel: 为了解决共用系统剪切板的问题
sudo pacman -S neovim xsel
```

## 版本信息

```bash
$ nvim --version
NVIM v0.9.2
Build type: Release
LuaJIT 2.1.1694285958

   system vimrc file: "$VIM/sysinit.vim"
  fall-back for $VIM: "/usr/share/nvim"

Run :checkhealth for more info
```

## 使用方式

```bash
$ cd ~/.config/
$ git clone https://github.com/lutianen/nvim.git
```

## 常用命令

### 段落移动

在程序开发时，通常一段功能相关的代码会写在一起，即之间没有空行，这时可以用段落移动命令来快速移动光标。

> `{`   # 移动到上一段的开头
>
> `}`   # 移动到下一段的开头

### 括号切换

> `%`: 括号匹配以及切换

### 单词快速匹配

> `#`: 匹配光标所在单词，向前查找（快速查看这个单词在其他什么位置使用过）

### 文件操作

> `:e`：edit，会打开内置的文件浏览器，浏览当下目录的文件
>
> `:n filename`：new，新建文件
>
> `:w filename`：write，保存文件

### 分屏

> `:sp[filename]`：split，水平分屏
>
> `:vsp[filename]`：vertical split，垂直分屏

---

## Nvim 配置

`Nvim` 的配置目录在 `~/.config/nvim` 下。

### 配置路径以文件

在 Linux/Mac 系统上，`Nvim` 会默认读取 `~/.config/nvim/init.lua` 文件，**理论上**来说可以将所有配置的东西都放在这个文件里面，但这样不是一个好的做法

```bash
mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
touch ~/.config/nvim/init.lua

# 目录结构
~/.config/nvim/
├── init.lua
├── lua
│   ├── config
│   │   ├── nvim-autopairs.lua
│   │   ├── nvim-bufferline.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-gitsigns.lua
│   │   ├── nvim-indent-blankline.lua
│   │   ├── nvim-lualine.lua
│   │   ├── nvim-mason-null-ls.lua
│   │   ├── nvim-telescope.lua
│   │   ├── nvim-toggleterm.lua
│   │   ├── nvim-tree.lua
│   │   └── nvim-treesitter.lua
│   ├── core
│   │   ├── colorscheme.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── lsp.lua
│   └── plugins.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```

- `init.lua` 为 `Nvim` 配置的 Entry point，我们主要**用来导入其他 `*.lua` 文件**
- `colorscheme.lua` 配置主题
- `keymaps.lua` 配置按键映射
- `lsp.lua` 配置 LSP
- `options.lua` 配置选项
- `plugins.lua` 配置插件

- `config`目录: 用于**存放各种插件自身的配置**，文件名为插件的名字，这样比较好找
- `lua` 目录: 当我们在 Lua 里面调用 `require` 加载模块（文件）的时候，它会自动在 `lua` 文件夹里面进行搜索

> **将路径分隔符从 `/` 替换为 `.`，然后去掉 `.lua` 后缀就得到了 `require` 的参数格式**
>
> *比如要导入上面的 `nvim-cmp.lua` 文件，可以用 `require('config.nvim-cmp')`*

## Problem & Solution

- Problem: `clipboard: No provider. Try “:checkhealth” or “:h clipboard”`

    Solution: `sudo pacman -S xsel`
