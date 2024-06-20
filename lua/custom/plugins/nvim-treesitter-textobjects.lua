return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = false,
  config = function()
    require('nvim-treesitter.configs').setup {
      build = ':TSUpdate',
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = { query = '@function.outer', desc = 'Select [a]round [f]unction' },
            ['if'] = { query = '@function.inner', desc = 'Select [i]nside [f]unction' },
          },
        },
      },
    }
  end,
}
