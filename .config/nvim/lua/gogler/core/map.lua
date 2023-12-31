vim.keymap.set( 'n', '<leader>ve', '<cmd>:edit ~/.config/nvim<cr>')
vim.keymap.set( 'n', '<leader>vr', '<cmd>:so ~/.config/nvim/init.lua<cr>')

vim.keymap.set( 'n', '<s-l>', '<cmd>:tabnext<cr>')
vim.keymap.set( 'n', '<s-h>', '<cmd>:tabprevious<cr>')
vim.keymap.set( 'n', '<leader>h', '<cmd>:nohls<cr>')

vim.keymap.set( 'c', 'w!!', 'w !sudo tee > /dev/null %')
