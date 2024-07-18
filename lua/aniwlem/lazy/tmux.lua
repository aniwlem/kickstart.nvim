return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<C-h>', 'TmuxNavigationLeft<RC>', { desc = 'Move focus to the left tmux split' }),
  vim.keymap.set('n', '<C-l>', 'TmuxNavigationRight<RC>', { desc = 'Move focus to the right tmux split' }),
  vim.keymap.set('n', '<C-j>', 'TmuxNavigationDown<RC>', { desc = 'Move focus to the lower tmux split' }),
  vim.keymap.set('n', '<C-k>', 'TmuxNavigationUp<RC>', { desc = 'Move focus to the upper tmux split' }),
}
