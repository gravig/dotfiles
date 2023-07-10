local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = "[S]earch [G]git files" })
vim.keymap.set('n', '<leader>pf', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end,
{ desc = "[P]roject [F]ind - grep in project" })

vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = "[P]roject [G]grep - telescope live grep" })

