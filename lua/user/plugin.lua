local fn = vim.fn
local ensure_packer = function()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print("Installing packer close and reopen Neovim...")
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  -- Plugin Mangager
  use("wbthomason/packer.nvim")

  -- Lua Development
  use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins

  -- LSP
  use("neovim/nvim-lspconfig") -- enable LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("b0o/SchemaStore.nvim")

  -- Rust
  use("simrat39/rust-tools.nvim")

  -- Debugging
  use("mfussenegger/nvim-dap")

  -- Completion
  use("christianchiarulli/nvim-cmp")
  use("hrsh7th/cmp-buffer") -- buffer completions
  use("hrsh7th/cmp-path") -- path completions
  use("hrsh7th/cmp-cmdline") -- cmdline completions
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-emoji")
  use("hrsh7th/cmp-nvim-lua")

  -- Snippet
  use("L3MON4D3/LuaSnip") --snippet engine
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

  -- Syntax/Treesitter
  use("nvim-treesitter/nvim-treesitter")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("p00f/nvim-ts-rainbow")
  use("nvim-treesitter/playground")
  use("windwp/nvim-ts-autotag")
  use("nvim-treesitter/nvim-treesitter-textobjects")
  use("kylechui/nvim-surround")

  -- Fuzzy Finder/Telescope
  use("nvim-telescope/telescope.nvim")
  use("nvim-telescope/telescope-media-files.nvim")
  use("tom-anders/telescope-vim-bookmarks.nvim")

  -- Color
  use("NvChad/nvim-colorizer.lua")
  use("nvim-colortils/colortils.nvim")

  -- Colorschemes
  use("lunarvim/onedarker.nvim")

  -- Utility
  use("rcarriga/nvim-notify")

  -- Icon
  use("kyazdani42/nvim-web-devicons")

  -- Statusline
  use("christianchiarulli/lualine.nvim")

  -- Startup
  use("goolord/alpha-nvim")

  -- Indent
  use("lukas-reineke/indent-blankline.nvim")

  -- File Explorer
  use("kyazdani42/nvim-tree.lua")

  -- Comment
  use("numToStr/Comment.nvim")
  use("folke/todo-comments.nvim")

  -- Terminal
  use("akinsho/toggleterm.nvim")

  -- Project
  use("ahmedkhalf/project.nvim")
  use("windwp/nvim-spectre")

  -- Session
  use("rmagatti/auto-session")
  use("rmagatti/session-lens")

  -- Quickfix
  use("kevinhwang91/nvim-bqf")

  -- Editing Support
  use("windwp/nvim-autopairs")
  -- use("andymass/vim-matchup")
  use("folke/zen-mode.nvim")
  use("karb94/neoscroll.nvim")
  -- use("junegunn/vim-slash")

  -- Git
  use("lewis6991/gitsigns.nvim")
  use("f-person/git-blame.nvim")

  -- Tab
  use("romgrk/barbar.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
