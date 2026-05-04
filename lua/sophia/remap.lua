local builtin = require('telescope.builtin')

-- Leader
vim.g.mapleader = ' '

-- File / session
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'File [E]xplorer' })
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = '[W]rite' })
vim.keymap.set('n', '<leader>q', vim.cmd.q, { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>fq', ':q!<CR>', { desc = '[F]orce [Q]uit' })
vim.keymap.set('n', '<leader><leader>', vim.cmd.so, { desc = '[S]ource current file' })

-- Search (Telescope)
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<C-g>', builtin.git_files, { desc = 'Search [G]it files' })

-- Window
vim.keymap.set('n', 'gw', '<C-w>', { desc = '[G]et [W]indow' })

-- Editing
-- Replace all occurrences of word under cursor; prompts confirmation per match
vim.keymap.set('n', '<leader>/r', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]], { desc = '[/R]eplace word' })
vim.keymap.set('n', '<A-k>', ':m-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('n', '<A-j>', ':m-2<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<leader>ff', 'zf', { desc = 'Create [F]old' })
vim.keymap.set('n', '<leader>ft', 'za', { desc = '[F]old [T]oggle' })
vim.keymap.set('n', '<leader>fk', '[z', { desc = 'Jump to [F]old start' })
vim.keymap.set('n', '<leader>fj', ']z', { desc = 'Jump to [F]old end' })
vim.keymap.set('n', '<leader>fJ', 'zj', { desc = 'Jump to next [F]old' })
vim.keymap.set('n', '<leader>fK', 'zk', { desc = 'Jump to previous [F]old' })

-- Visual mode
vim.keymap.set('v', '<leader>ff', 'zf', { desc = 'Create [F]old' })

-- Insert mode
vim.keymap.set('i', 'kj', '<esc>') -- escape shortcut

-- Symbols
vim.keymap.set('i', '<C-s>a', 'μ', { desc = '[A]verage' })
vim.keymap.set('i', '<C-s>sd', 'σ', { desc = '[S]tandard [D]eviation' })
vim.keymap.set('i', '<C-s>fa', '∀', { desc = '[F]or [A]ll' })
