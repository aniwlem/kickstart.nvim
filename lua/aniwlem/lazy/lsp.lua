return {
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },
      { 'folke/neodev.nvim', opts = {} },
    },

    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local servers = {
        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },

        basedpyright = {
          settings = {
            basedpyright = {
              disableOrganizeImports = true,
              disableTaggedHints = false,
              analysis = {
                typeCheckingMode = 'standard',
                useLibraryCodeForTypes = true, -- Analyze library code for type information
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticSeverityOverrides = {
                  -- reportIgnoreCommentWithoutRule = true,
                  -- ignore = { '*' },
                  -- typeCheckingMode = 'off',
                  -- reportUndefinedVariable = 'none',
                },
              },
            },
          },
        },

        ruff = {
          capabilities = {
            ruff = {
              hoverProvider = false,
            },
          },
        },
      }

      require('mason').setup()
      local ensure_installed = vim.tbl_keys(servers or {})
      -- You can add other tools here that you want Mason to install
      -- for you, so that they are available from within Neovim.

      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
        'autopep8', -- ?
      })

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
