-- Automatically install lazy (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | Lazy sync
  augroup end
]])

require("lazy").setup({
  -- colorschemes
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "lunarvim/darkplus.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme darkplus]])
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa-wave]])
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme poimandres]])
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[catppuccin-mocha]])
    end,
  },
  {
    "akinsho/horizon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme horizon]])
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme sonokai]])
    end,
  },
  {
    "kepano/flexoki-neovim",
    name = 'flexoki',
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme flexoki-dark]])
    end,
  },
  {
    "rmehri01/onenord.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme onenord]])
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    priority = 1000,
    opts = {
        -- custom options here
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
  },
  {
    "kaicataldo/material.vim",
    lazy = true,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme material]])
    end,
  },

  {
    -- Command % extension to language specific blocks
    'andymass/vim-matchup',
    config = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },

  -- Completition
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  { "rafamadriz/friendly-snippets" },

  -- Copilot AI companion
  { "github/copilot.vim" },

  -- LSP
  { "nvimtools/none-ls.nvim" },
  { "neovim/nvim-lspconfig" }, -- enable LSP
  { "RRethy/vim-illuminate" },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  -- Copilot
  { "github/copilot.vim" },

  -- Misc.
  --{ "famiu/bufdelete.nvim" }, -- Delete buffers without messing with windows
  { "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins
  { 'nvim-tree/nvim-web-devicons' },
  { 'echasnovski/mini.nvim', version = '*' },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  {
    -- Semantic Highlighting for Python
    'vim-python/python-syntax',
    config = function()
      -- may set any options here
      vim.g.python_highlight_builtins = 1
      vim.g.python_highlight_exceptions = 1
      vim.g.python_highlight_string_formatting = 1
      vim.g.python_highlight_string_format = 1
      vim.g.python_highlight_func_calls = 1
      vim.g.python_highlight_class_vars = 1
      vim.g.python_highlight_space_errors = 1
    end
  },
  {
    -- Dispatch async commands
    "tpope/vim-dispatch",
    lazy = true,
    cmd = {"Dispatch", "Make", "Focus", "Start"},
  },
  {
    -- Open markdown as HTML in browser
    "iamcco/markdown-preview.nvim",
    lazy = true,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    'nvim-treesitter/playground',
    lazy = true,
    cmd = { "TSCaptureUnderCursor" },
    dependencies = { 'nvim-treesitter/playground' },
  },
  { "windwp/nvim-autopairs", dependencies = { 'nvim-treesitter/playground' } }, -- Autopairs, integrates with both cmp and treesitter
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-fzf-native.nvim' }
  },
  { "lewis6991/gitsigns.nvim" },
  { "numToStr/Comment.nvim", dependencies = { 'nvim-treesitter/playground' } },
  { "JoosepAlviste/nvim-ts-context-commentstring", dependencies = { 'nvim-treesitter/playground' } },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "akinsho/toggleterm.nvim", version = "*", config = true},
  { "ahmedkhalf/project.nvim" },
  {
     "lukas-reineke/indent-blankline.nvim",
     main = "ibl",
     opts = {
       enabled = true
     }
  },
  { "goolord/alpha-nvim" },
  { "psf/black" },
  { "ruby-formatter/rufo-vim" },
  { "stsewd/isort.nvim" },

  -- Copy to system clipboard
  { "ojroques/vim-oscyank" }
})
