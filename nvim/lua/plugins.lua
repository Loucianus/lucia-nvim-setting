vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- Package manager
    use 'wbthomason/packer.nvim' 
    
    -- LSP and completion of LSP
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }

    -- Markdown
    -- Preview
    use {
      'iamcco/markdown-preview.nvim', 
      run = 'cd app && yarn install', 
      cmd = 'MarkdownPreview'
    }

    -- Beauty
    -- Scheme
    use 'morhetz/gruvbox'
    -- Statusline
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main'
    }
    -- Highlight of code
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- icons
    use 'kyazdani42/nvim-web-devicons'

    -- Coding imporve
    -- Nvim Tree
    use 'kyazdani42/nvim-tree.lua'
    -- Make pairs auto-match like (),{},[],'',""..
    use 'jiangmiao/auto-pairs'
    -- Tagbar: viewing the functions, methodsm, and variables
    use 'majutsushi/tagbar'
    -- Telescope: finding the file
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- A hightlight plugin of NREDTree
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    -- Floting terminal
    use 'numtostr/FTerm.nvim'
end)

