-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use("junegunn/fzf")

    use ({ 'nvim-lua/plenary.nvim' })

    use ({
        'nvim-telescope/telescope.nvim'
    })

    use ({ 'nvim-lua/popup.nvim' }) -- may be optional but just add it to be safe

    use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })

    -- color scheme --
--    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use({
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    })

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use ('nvim-treesitter/playground')

    use ('theprimeagen/harpoon')

    use ('mbbill/undotree')

    use ('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

end)
