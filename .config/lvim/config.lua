-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "onedarker"
lvim.transparent_window = true

vim.opt.relativenumber = true

require'colorizer'.setup()


-- lvim.builtin.treesitter.context_commentstring = {
--   enable = true
-- }

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
-- lvim.keys.normal_mode["w"] = ""
lvim.keys.normal_mode["s"] = ":w<CR>"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
lvim.builtin.which_key.mappings['m'] = { ":MaximizerToggle<CR>", 'Maximizer' }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
}


lvim.builtin.which_key.mappings["w"] = {
  name = "+Windows",
  q = { ":q<CR>", "Quit"},
  h = { ":sp<CR>", "Split horizontal" },
  v = { ":vsp<CR>", "Split vertical" }
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.hide_dotfiles = 0

lvim.builtin.terminal.active = true
lvim.builtin.terminal.size = 8

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
lvim.lsp.diagnostics.virtual_text = false
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
lvim.lang.python.formatters = {
  {
    exe = "black",
    args = {}
  }
}
-- set an additional linter
lvim.lang.python.linters = {
  {
    exe = "flake8",
    args = {}
  }
}

lvim.lang.html.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}


lvim.lang.vue.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}

-- Additional Plugins
lvim.plugins = {
  { 'norcalli/nvim-colorizer.lua' },
  { 'ferrine/md-img-paste.vim' },
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
  { 'folke/trouble.nvim' },
  { 'plasticboy/vim-markdown' },
  { 'szw/vim-maximizer' },
  { 'tpope/vim-surround' },
  { 'alvan/vim-closetag' },
  { 'jiangmiao/auto-pairs' },
  { 'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_list = {
        {
          path = '~/vimwiki/',
          path_html = '~/vimwiki/HTML/',
          auto_export = 0,
          index = 'home',
          syntax = 'markdown',
          ext = '.md',
          auto_toc = 1,
          maxhi = 1,
          nested_syntaxes = { python = 'python',  js = 'javascript'},
          list_margin = -1
        }
      }
    end
  },
  { 'nvim-telescope/telescope-project.nvim',
    event = "BufWinEnter",
    setup = function()
    vim.cmd [[packadd telescope.nvim]]
    end
  }
    -- {"folke/tokyonight.nvim"}, {
    --     "ray-x/lsp_signature.nvim",
    --     config = function() require"lsp_signature".on_attach() end,
    --     event = "InsertEnter"
    -- }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  -- { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
  { "BufWinEnter", "*.md", "set nospell" },
}
