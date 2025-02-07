vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- NOTE: All binds taken from theprimeagen
--
-- Movl selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv'")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv'")
vim.keymap.set('n', 'J', 'mzJ`z')

-- Keep selection when indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

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
vim.keymap.set('n', '<leader>rc', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- From tjdevries
-- change split sizes
vim.keymap.set('n', '<M-,>', '<c-w>5<')
vim.keymap.set('n', '<M-.>', '<c-w>5>')
vim.keymap.set('n', '<M-t>', '<c-w>+')
vim.keymap.set('n', '<M-s>', '<c-w>-')

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- -- Keybinds to make split navigation easier.
-- --  Use CTRL+<hjkl> to switch between windows
-- --
-- See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- replace all matches of current selection
-- local function get_visual_selection()
--   local _, ls_row, ls_col, _ = unpack(vim.fn.getpos "'<")
--   local _, le_row, le_col, _ = unpack(vim.fn.getpos "'>")
--
--   local lines = vim.fn.getline(ls_row, le_row)
--   if #lines == 0 then
--     return ''
--   end
--
--   lines[#lines] = string.sub(lines[#lines], 1, le_col)
--   lines[1] = string.sub(lines[1], ls_col)
--
--   return table.concat(lines, '\n')
-- end
--
-- -- Function to start the search and replace
-- local function start_search_replace()
--   local selection = get_visual_selection()
--
--   selection = vim.fn.escape(selection, '\\/')
--
--   vim.cmd 'normal :'
--   vim.fn.feedkeys(string.format('%%s/%s//g', selection), 'n')
--   -- Move the cursor to between the two '/' characters
--   vim.cmd 'normal! 2F/'
-- end
--
-- -- Create a key binding for the visual mode
-- vim.keymap.set('v', '<leader>rs', [[:<C-u>lua start_search_replace()<CR>]])
