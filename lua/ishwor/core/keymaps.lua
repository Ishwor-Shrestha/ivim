vim.g.mapleader = " "

local k = vim.keymap -- for conciseness

-- general keymap

k.set("n", "<leader>nh", ":nohl<CR>") -- Clear search highlight
k.set("n", "<leader>s", ":w<CR>") -- Save the file
k.set("n", "<leader>q", ":x<CR>") -- Save the file and exit nvim

k.set("n", "<leader>=", "<C-a>") -- Increment number
k.set("n", "<leader>-", "<C-x>") -- Decrement number

k.set("n", "<leader>sv", "<C-w>v") -- Split window vertically
k.set("n", "<leader>sh", "<C-w>s") -- Split window horizontally
k.set("n", "<leader>se", "<C-w>=") -- Make split windows equal width
k.set("n", "<leader>sx", ":close<CR>") -- Close current window

k.set("n", "<leader>to", ":tabnew<CR>") -- Open new tab
k.set("n", "<leader>tx", ":tabclose<CR>") -- Close current tab
k.set("n", "<leader>tn", ":tabn<CR>") -- Goto next tab
k.set("n", "<leader>tp", ":tabp<CR>") -- Goto previous tab

-- plugin keymaps

-- vim-maximizer
k.set("n","<leader>sm",":MaximizerToggle<CR>")
