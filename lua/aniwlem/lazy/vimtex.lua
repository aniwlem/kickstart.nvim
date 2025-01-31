return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'general'

    -- Use the full path for SumatraPDF
    vim.g.vimtex_view_general_viewer = 'sumatraPDF.exe'

    vim.g.vimtex_view_general_options = '-inverse-search "wslpath -w @tex"'
    vim.g.vimtex_view_general_options = vim.g.vimtex_view_general_options .. ' -forward-search "@tex @line @pdf'
  end,
}
