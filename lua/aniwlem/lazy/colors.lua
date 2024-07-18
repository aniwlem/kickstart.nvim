return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'rose-pine/neovim',
    -- name = 'rose-pine',

    -- 'morhetz/gruvbox',

    -- 'folke/tokyonight.nvim',
    -- name = 'tokyonight',

    'catppuccin/nvim',

    -- 'scottmckendry/cyberdream.nvim',
    -- name = 'cyberdream',

    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- vim.cmd.colorscheme 'gruvbox'
      -- vim.cmd.colorscheme 'rose-pine'
      vim.cmd.colorscheme 'catppuccin-mocha'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
