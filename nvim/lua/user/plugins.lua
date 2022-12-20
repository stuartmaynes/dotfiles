local packer = require('lib.packer-init')

packer.startup(function(use)
    -- Require packer to install packer
    use({'wbthomason/packer.nvim'})

	use({'editorconfig/editorconfig-vim'})

	use({'mattn/emmet-vim'})

    use({'jessarcher/vim-heritage'})

	use({'tpope/vim-repeat'})
	use({'tpope/vim-sensible'})
	use({'tpope/vim-surround'})
	use({'tpope/vim-vinegar'})

    use({'morhetz/gruvbox'})

	use({
        'numToStr/Comment.nvim',
        config = function()
            require('user.plugins.comment')
        end,
    })

    use({ 'nvim-tree/nvim-web-devicons' })

	use({
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-telescope/telescope-ui-select.nvim' },
            { 'ThePrimeagen/harpoon' },
            { 'ThePrimeagen/git-worktree.nvim' },
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' },
        },
        tag = '0.1.0',
        config = function()
            require('user.plugins.telescope')
            require('user.plugins.harpoon')
            require('user.plugins.worktree')
        end,
    })

	use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('user.plugins.treesitter')
        end
    })

    use({
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-path',
            'onsails/lspkind-nvim',
            'saadparwaiz1/cmp_luasnip',
            'kdheepak/cmp-latex-symbols',
        },
        config = function()
            require('user.plugins.cmp')
            require('user.plugins.luasnip')
        end,
        sources = {
            {
                name = 'latex_symbols',
                option = {
                    strategy = 0, -- mixed
                },
            },
        },
    })

    use({
        'neovim/nvim-lspconfig',
        config = function()
            require('user.plugins.lspconfig')
        end,
    })
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

