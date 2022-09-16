local o = vim.opt
o.number         = true
o.relativenumber = true
o.mouse          = "a"
o.tabstop        = 4
o.softtabstop    = 4
o.shiftwidth     = 4
o.cino           = "t0,(0"
o.expandtab      = true
o.autoindent     = true
o.ignorecase     = true
o.smartcase      = true
o.wrap           = false
o.scrolloff      = 8
o.sidescrolloff  = 8
o.cursorline     = true
o.clipboard      = "unnamedplus"
o.ttyfast        = true
o.hlsearch       = true
o.incsearch      = true
o.showcmd        = true
o.showmatch      = true
o.history        = 1000
o.showmode       = true
o.showtabline    = 2
o.completeopt    = { "menuone", "noselect" }
o.updatetime     = 300
o.termguicolors  = true
o.pumheight      = 10
o.splitright     = true
o.splitbelow     = true
o.signcolumn     = "yes"
o.numberwidth    = 4

o.wildmenu       = true

o.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.o"

vim.cmd "syntax on"
vim.cmd "set listchars+=precedes:<,extends:>"
