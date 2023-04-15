-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  --plugins--
  
  -- telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme rosepine
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- undotree
  use('mbbill/undotree')

  -- vim-fugutive
  use('tpope/vim-fugitive')

  -- nvim-tree 
  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')

  -- nvim-lualine
  use('nvim-lualine/lualine.nvim')
  
end)
