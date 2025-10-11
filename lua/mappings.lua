require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- Resize windows with Alt+hjkl
map("n", "<M-h>", ":vertical resize -2<CR>", { desc = "Decrease window width", noremap = true, silent = true })
map("n", "<M-l>", ":vertical resize +2<CR>", { desc = "Increase window width", noremap = true, silent = true })
map("n", "<M-j>", ":resize +2<CR>", { desc = "Increase window height", noremap = true, silent = true })
map("n", "<M-k>", ":resize -2<CR>", { desc = "Decrease window height", noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
