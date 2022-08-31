local packer = require('lib.packer-init')

packer.startup(function(use)
    -- Require packer to install packer
    use({'wbthomason/packer.nvim'})

    use({'gruvbox-community/gruvbox'})
    use({'folke/tokyonight.nvim'})

	use({'editorconfig/editorconfig-vim'})

	use({'mattn/emmet-vim'})

    use({'jessarcher/vim-heritage'})

    use({'justinmk/vim-sneak'})

	use({'tpope/vim-repeat'})
	use({'tpope/vim-sensible'})
	use({'tpope/vim-surround'})
	use({'tpope/vim-vinegar'})

	use({
        'numToStr/Comment.nvim',
        config = function()
            require('user.plugins.comment')
        end,
    })

    use({
      'nvim-lualine/lualine.nvim',
      requires = {
          {'kyazdani42/nvim-web-devicons'}
      },
      config = function()
          require('user.plugins.lualine')
      end
    })

	use({
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-telescope/telescope-ui-select.nvim' },
            { 'ThePrimeagen/harpoon' },
            { 'ThePrimeagen/git-worktree.nvim' },
            { 'nvim-lua/plenary.nvim' },
            { 'kyazdani42/nvim-web-devicons' },
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
        },
        config = function()
            require('user.plugins.cmp')
            require('user.plugins.luasnip')
        end,
    })

    use({
        'neovim/nvim-lspconfig',
        config = function()
            require('user.plugins.lspconfig')
        end,
    })

	use({
        'voldikss/vim-floaterm',
        config = function()
            require('user.plugins.floaterm')
        end
    })

    use({
        'ptzz/lf.vim',
        requires = {
            'voldikiss/vim-floaterm'
        },
        config = function()
            require('user.plugins.lf')
        end,
    })

    use({
        'Shatur/neovim-session-manager',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
        },
        config = function()
            require('user.plugins.sessions')
        end,
    })

    use({
        'danymat/neogen',
        requires = 'nvim-treesitter/nvim-treesitter',
        config = function()
            require('user.plugins.neogen')
        end,
    })

    use({
        'windwp/nvim-autopairs',
        config = function()
            require('user.plugins.autopairs')
        end
    })
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

