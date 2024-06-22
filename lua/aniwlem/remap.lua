vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- NOTE: All binds taken from theprimeagen
--
-- Move selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv'")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv'")
vim.keymap.set('n', 'J', 'mzJ`z')

-- Moving around while keeping the cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- delete without getting the thing you deleted in paste buffer
vim.keymap.set('x', '<leader>p', '"_dP')

-- copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- replace current word
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
