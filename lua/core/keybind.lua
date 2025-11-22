vim.g.mapleader = " "

local map = vim.keymap.set


-- split window
map("n", "<leader>vs", "<Cmd>vsplit<CR>")

map("n", "<leader>bn", "<Cmd>bnext<CR>")


-- toggle window
map('t', '<A-j>', [[<C-\><C-n><C-w>j]], {desc = 'Terminal -> lower window'})
map('t', '<A-k>', [[<C-\><C-n><C-w>k]], {desc = 'Terminal -> upper window'})
map('t', '<A-h>', [[<C-\><C-n><C-w>h]], {desc = 'Terminal -> left window'})
map('t', '<A-l>', [[<C-\><C-n><C-w>l]], {desc = 'Terminal -> right window'})

map('n', '<A-j>', [[<C-w>j]], {desc = 'Current window -> lower window'})
map('n', '<A-k>', [[<C-w>k]], {desc = 'Current window -> upper window'})
map('n', '<A-h>', [[<C-w>h]], {desc = 'Current window -> left window'})
map('n', '<A-l>', [[<C-w>l]], {desc = 'Current window -> right window'})


-- resize budder
local opts = { noremap = true, silent = true }
map('n', '<C-Right>', ':vertical resize +4<CR>', opts)
map('n', '<C-Left>', ':vertical resize -4<CR>', opts)


-- quit neovim
map('n', '<leader>qq', '<cmd>confirm qa<CR>', {desc = 'Quit all (confirm)'})

