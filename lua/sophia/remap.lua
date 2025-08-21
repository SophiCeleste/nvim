local builtin = require('telescope.builtin')
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.w)
vim.keymap.set('n', '<leader>q', vim.cmd.q)
vim.keymap.set('i', 'kj', '<esc>')
vim.keymap.set('n', '<leader><leader>', vim.cmd.so)
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>e', vim.cmd.Ex,				{ desc = 'file explorer' })
vim.keymap.set('n', '<leader>w', vim.cmd.w,					{ desc = 'write to file' })
vim.keymap.set('i', 'kj', '<esc>',							{ desc = 'exit insert mode' })
vim.keymap.set('n', '<leader><leader>', vim.cmd.so,			{ desc = 'source file' })
vim.keymap.set('n', '<leader>sf', builtin.find_files,		{ desc = 'find files' })
vim.keymap.set('n', '<C-g>', builtin.git_files,				{ desc = 'find files in current git repo' })

vim.keymap.set('n', '<leader>sg', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)

end,														{ desc = 'grep search' })

vim.keymap.set('n', '<leader>q', vim.cmd.q,					{ desc = 'quit' })

vim.keymap.set('n', '<leader>to', function()
	vim.api.nvim_command('TSDisable highlight')
end,														{ desc = 'disable treesitter highlighting' })

vim.keymap.set('n', '<leader>ta', function()
	vim.api.nvim_command('TSEnable highlight')
end,														{ desc = 'enable treesitter highlighting' })
-- Replaces all occurences of the word under the cursor; requires confirmation
vim.keymap.set('n', '<leader>/r', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]])
