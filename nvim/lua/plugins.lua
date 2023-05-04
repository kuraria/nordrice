-- packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use 'alaviss/nim.nvim'
use 'wbthomason/packer.nvim'
use 'ryanoasis/vim-devicons'
use 'nvim-lualine/lualine.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons',   },
  tag = 'nightly' }
use 'nvim-tree/nvim-web-devicons'
use 'sts10/vim-pink-moon'
use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').config() {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
use 'Shatur/neovim-session-manager'
use 'norcalli/nvim-colorizer.lua'
use 'frenzyexists/aquarium-vim'
use {'neoclide/coc.nvim', branch = 'release'  }
use 'shaunsingh/nord.nvim'
use 'andweeb/presence.nvim'
end)
