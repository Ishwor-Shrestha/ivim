vim.g.mapleader = " "

local k = vim.keymap -- for conciseness

-- general keymap

k.set("n", "<leader>nh", ":nohl<CR>")                          -- Clear search highlight
k.set("n", "<leader>s", ":lua vim.lsp.buf.format()<CR>:w<CR>") -- Save the file
k.set("n", "<leader>q", ":x<CR>")                              -- Save the file and exit nvim

k.set("n", "<leader>=", "<C-a>")                               -- Increment number
k.set("n", "<leader>-", "<C-x>")                               -- Decrement number

k.set("n", "<leader>sv", "<C-w>v")                             -- Split window vertically
k.set("n", "<leader>sh", "<C-w>s")                             -- Split window horizontally
k.set("n", "<leader>se", "<C-w>=")                             -- Make split windows equal width
k.set("n", "<leader>sx", ":close<CR>")                         -- Close current window

k.set("n", "<leader>to", ":tabnew<CR>")                        -- Open new tab
k.set("n", "<leader>tx", ":tabclose<CR>")                      -- Close current tab
k.set("n", "<leader>tn", ":tabn<CR>")                          -- Goto next tab
k.set("n", "<leader>tp", ":tabp<CR>")                          -- Goto previous tab

k.set("n", "<leader>bl", ":ls<CR>")                            -- Close current tab
k.set("n", "<leader>bd", ":bd<CR>")                            -- Close current tab
k.set("n", "<leader>bn", ":bn<CR>")                            -- Goto next tab
k.set("n", "<leader>bp", ":bp<CR>")                            -- Goto previous tab

-- plugin keymaps

-- vim-maximizer
k.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
k.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
k.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory, respects .gitignore
k.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory as you type
k.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
k.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
k.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags
