local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "zh", opts)
keymap("n", "<C-j>", "<C-E>", opts)
keymap("n", "<C-k>", "<C-y>", opts)
keymap("n", "<C-l>", "zl", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -1<CR>", opts)
keymap("n", "<S-Down>", ":resize +1<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +1<CR>", opts)

-- Navigate buffers
keymap("n", ")", ":bnext<CR>", opts)
keymap("n", "(", ":bprevious<CR>", opts)

-- Navigate jumps back
keymap("n", "[", "<C-t>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- text highlighters
keymap("n", "<F5>", ":set wrap!<CR>", opts)
keymap("n", "<F6>", ":set number!<CR>", opts)
keymap("n", "<F7>", ":set spell! spelllang=en<CR>", opts)
keymap("n", "<F8>", ":set spell! spelllang=pt_br<CR>", opts)

-- Nvimtree Toggle
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Keep previous string in copy register after pasting
--keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Copy to linux primary selection (to paste from primary selection use <Control + Insert>)
-- keymap("v", "<leader>y", '"*y', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("v", "<leader>Y", '"+yg', opts)
keymap("v", "<leader>yy", '"+yy', opts)

-- Copy to system clipboard from neovim running in WSL
keymap('v', '<leader>c', '<Plug>OSCYankVisual')

-- Paste from linux primary selection (to copy to primary selection use <leader>y)
-- keymap("v", "<leader>p", '"*p', opts)
keymap("v", "<leader>p", '"+p', opts)
keymap("v", "<leader>P", '"+P', opts)
keymap("n", "<leader>p", '"+p', opts)
keymap("n", "<leader>P", '"+P', opts)

-- Copilot
vim.g.copilot_no_tab_map = true
keymap('i', '<leader>k', 'copilot#Accept("\\<CR>")', {expr=true, replace_keycodes = false})
keymap('i', '<leader>l', '<Plug>(copilot-accept-word)')
keymap('i', '<leader>j', '<Plug>(copilot-accept-line)')
