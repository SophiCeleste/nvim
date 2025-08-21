local builtin = require('telescope.builtin')
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.w)
vim.keymap.set('n', '<leader>q', vim.cmd.q)
vim.keymap.set('i', 'kj', '<esc>')
vim.keymap.set('n', '<leader><leader>', vim.cmd.so)
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sg', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)
-- Replaces all occurences of the word under the cursor; requires confirmation
vim.keymap.set('n', '<leader>/r', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]])
