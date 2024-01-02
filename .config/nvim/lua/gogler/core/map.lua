vim.keymap.set("n", "<leader>ve", "<cmd>:edit ~/.config/nvim<cr>")
vim.keymap.set("n", "<leader>vr", "<cmd>:so ~/.config/nvim/init.lua<cr>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<s-l>", "<cmd>:tabnext<cr>")
vim.keymap.set("n", "<s-h>", "<cmd>:tabprevious<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>:nohls<cr>")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("c", "w!!", "w !sudo tee > /dev/null %")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dp]])
-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
