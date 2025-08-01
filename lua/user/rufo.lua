vim.g.rufo_errors_buffers_position = "right"

local keymap = vim.keymap.set

keymap("n", "<leader>m", "<cmd>Rufo<cr>", opts)
keymap("v", "<leader>m", "<cmd>Rufo<cr>", opts)
