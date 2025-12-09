
-- Управление буферами (открытыми файлами)
vim.keymap.set("n", "<leader>bl", ":bnext<CR>", { desc = "Next buffer (right)" })
vim.keymap.set("n", "<leader>bh", ":bprevious<CR>", { desc = "Previous buffer (left)" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close (delete) buffer" })

-- Убрать подсветку поиска
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Перемещение выделенных строк в визуальном режиме
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
