return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'general'

    vim.g.vimtex_view_general_viewer = vim.fn.expand '~/.local/bin/open-sumatra.sh'
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
  end,
}
