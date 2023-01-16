local o = vim.opt -- for consiceness

-- line numbers
o.relativenumber = true
o.number = true

-- tabs & indentation
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

-- line wrapping
o.wrap = false

-- search settings
o.ignorecase = true
o.smartcase = true

-- cursor line
o.cursorline = true

--appearance
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

--backspace
o.backspace = "indent,eol,start"

-- clipboard
o.clipboard:append("unnamedplus")

-- split windows
o.splitright = true
o.splitbelow = true

o.iskeyword:append("-")

