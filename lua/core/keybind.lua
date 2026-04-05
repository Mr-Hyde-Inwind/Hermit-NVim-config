vim.g.mapleader = " "

local map = vim.keymap.set


-- split window
map("n", "<leader>vs", "<Cmd>vsplit<CR>")
map("n", "<leader>s", "<Cmd>split<CR>")

map("n", "<leader>bn", "<Cmd>bnext<CR>")


-- toggle window
map('t', '<C-j>', [[<C-\><C-n><C-w>j]], {desc = 'Terminal -> lower window'})
map('t', '<C-k>', [[<C-\><C-n><C-w>k]], {desc = 'Terminal -> upper window'})
map('t', '<C-h>', [[<C-\><C-n><C-w>h]], {desc = 'Terminal -> left window'})
map('t', '<C-l>', [[<C-\><C-n><C-w>l]], {desc = 'Terminal -> right window'})

map('n', '<C-j>', [[<C-w>j]], {desc = 'Current window -> lower window'})
map('n', '<C-k>', [[<C-w>k]], {desc = 'Current window -> upper window'})
map('n', '<C-h>', [[<C-w>h]], {desc = 'Current window -> left window'})
map('n', '<C-l>', [[<C-w>l]], {desc = 'Current window -> right window'})


-- resize budder
local opts = { noremap = true, silent = true }
map('n', '<C-Right>', ':vertical resize +4<CR>', opts)
map('n', '<C-Left>', ':vertical resize -4<CR>', opts)


-- quit neovim
map('n', '<leader>qq', '<cmd>confirm qa<CR>', {desc = 'Quit all (confirm)'})


-- Delete word after cursor
map('n', '<A-d>', 'dw')
