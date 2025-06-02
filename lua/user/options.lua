-- Type :help options to view full details on the options
local options = {
  backup = true,                           -- creates a backup file
  backupdir = "~/tmp/",                    -- directory with backup files
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = false,                      -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 4,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = true,                         -- creates a swapfile
  directory = "~/tmp/",                    -- directory with swap files
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 4 spaces for a tab
  softtabstop = 4,                         -- insert 4 spaces for a tab
  cursorline = false,                      -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 4 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 4,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 15,                      -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
  listchars = "tab:→›,trail:×,precedes:<,extends:>", -- Make some invisible chars visible
  list = true,                                       -- Enable listing the chars form listchars
  statusline = "%<%F%h%m%r%h%w %= %04l;%02v %P",     -- Status bar
  laststatus = 2,                                    -- Always show the status bar
  wildmenu = true,                                                    -- File completition mode
  wildignore = "*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png", -- Ignoring some wildcards
  wildmode = "list:longest",                                          -- turn on wild mode huge list
  equalalways = false,                     -- Do not resize windows when one window is closed/opened
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use
