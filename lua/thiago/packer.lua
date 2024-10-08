-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- use({
-- 	'rebelot/kanagawa.nvim',
-- 	config = function () 
-- 		vim.cmd('colorscheme kanagawa-wave')
-- 	end
--
-- })

use 'rebelot/kanagawa.nvim'

use 'ggandor/leap.nvim'

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use "nvim-lua/plenary.nvim"
use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  },
use('github/copilot.vim'),
use('mfussenegger/nvim-dap'),
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
use('jay-babu/mason-nvim-dap.nvim'),
use ('nvim-tree/nvim-web-devicons'),
use('nvim-tree/nvim-tree.lua'),
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
}

end)
