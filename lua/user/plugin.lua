local fn = vim.fn
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim close and reopen Neovim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

return lazy.setup {
  -- Plugin Mangager
  "folke/lazy.nvim",

  -- Lua Development
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins

  -- LSP
  "neovim/nvim-lspconfig", -- enable LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "b0o/SchemaStore.nvim",
  "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
  "ray-x/lsp_signature.nvim",
  "simrat39/symbols-outline.nvim",
  "SmiteshP/nvim-navic",

  -- Rust
  "simrat39/rust-tools.nvim",

  -- Debugging
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",

  -- Completion
  "christianchiarulli/nvim-cmp",
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-emoji",
  "hrsh7th/cmp-nvim-lua",

  -- Snippet
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- Syntax/Treesitter
  "nvim-treesitter/nvim-treesitter",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "p00f/nvim-ts-rainbow",
  "nvim-treesitter/playground",
  "windwp/nvim-ts-autotag",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "kylechui/nvim-surround",

  -- Fuzzy Finder/Telescope
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-media-files.nvim",
  "crusj/bookmarks.nvim",

  -- Color
  "NvChad/nvim-colorizer.lua",
  "nvim-colortils/colortils.nvim",

  -- Colorschemes
  "lunarvim/onedarker.nvim",

  -- Motion
  "phaazon/hop.nvim",

  -- Utility
  "rcarriga/nvim-notify",
  "folke/which-key.nvim",
  "lalitmee/browse.nvim",

  -- Icon
  "kyazdani42/nvim-web-devicons",

  -- Statusline
  "christianchiarulli/lualine.nvim",

  -- Startup
  "goolord/alpha-nvim",

  -- Indent
  "lukas-reineke/indent-blankline.nvim",

  -- File Explorer
  "kyazdani42/nvim-tree.lua",

  -- Comment
  "numToStr/Comment.nvim",
  "folke/todo-comments.nvim",

  -- Terminal
  "akinsho/toggleterm.nvim",

  -- Project
  "ahmedkhalf/project.nvim",
  "windwp/nvim-spectre",

  -- Session
  "rmagatti/auto-session",
  "rmagatti/session-lens",

  -- Quickfix
  "kevinhwang91/nvim-bqf",

  -- Editing Support
  "windwp/nvim-autopairs",
  -- use("andymass/vim-matchup")
  "folke/zen-mode.nvim",
  "karb94/neoscroll.nvim",
  -- use("junegunn/vim-slash")

  -- Git
  "lewis6991/gitsigns.nvim",
  "f-person/git-blame.nvim",

  -- Tab
  "romgrk/barbar.nvim",

}
