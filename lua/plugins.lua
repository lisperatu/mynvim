local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'mhinz/vim-signify'
    use 'mattn/emmet-vim'
    use 'bling/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'ggandor/lightspeed.nvim'
    use 'petobens/poet-v' 
    use 'kyazdani42/nvim-web-devicons'
    
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        config = function ()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
        end
    }

    use 'L3MON4D3/LuaSnip'
    
    use {
        'scrooloose/nerdtree',
        config = function () vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', {}) end

    }
    
    
    use 'ctrlpvim/ctrlp.vim'
    use 'vim-scripts/Smart-Tabs'
    use 'christoomey/vim-tmux-navigator'
    use 'wikitopian/hardmode'
    use 'nvie/vim-flake8'
    use 'vim-perl/vim-perl'
    use 'shougo/denite.nvim'
    use 'vim-vdebug/vdebug' 
    use 'jwalton512/vim-blade'
    use 'posva/vim-vue'
    -- use 'stevearc/dressing.nvim'
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() 
            require'trouble'.setup{
                signs = {
                    -- icons / text used for a diagnostic
                    error = "",
                    warning = "",
                    hint = "",
                    information = "",
                    other = "﫠"
                },
            }
        end
    }

    use {
      "folke/which-key.nvim",
      config = function()
         require("which-key").setup {
         }
     end
    }
    use 'SkyLeach/pudb.vim'
    use 'rust-lang/rust.vim'
    use {
        'simrat39/rust-tools.nvim',
        config = function() 
            require('rust-tools').setup({})
        end
    }
    use 'jbyuki/one-small-step-for-vimkind'
    use 'mfussenegger/nvim-dap'
    use 'jiangmiao/auto-pairs' 
    
    -- themes
    use 'mhartington/oceanic-next'
    use 'nightsense/stellarized'
    use 'morhetz/gruvbox'
    use 'jacoborus/tender.vim'
    use 'EdenEast/nightfox.nvim'
    use 'savq/melange'
    use 'sainnhe/sonokai'
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    if packer_bootstrap then
        require('packer').sync()
    end
    

    
    
end)
