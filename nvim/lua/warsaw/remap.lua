-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]search?" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]isualize - open netrw" })
vim.keymap.set("n", "<leader>b", vim.cmd.NvimTreeToggle, { desc = "Open NvimTree" })
vim.keymap.set("n", "<C-[>", vim.cmd.BufferPrevious, { desc = "Previous buffer" })
vim.keymap.set("n", "<C-]>", vim.cmd.BufferNext, { desc = "Next buffer" })
vim.keymap.set("n", "<C-x>", vim.cmd.BufferClose, { desc = "Close buffer" })
vim.keymap.set("n", "<A-e>", vim.cmd.EslintFixAll, { desc = "Eslint format" })
vim.keymap.set("n", "<C-s>", function()
    if vim.fn.exists(":EslintFixAll") > 0 then 
       vim.cmd.EslintFixAll()
    end

    if vim.fn.exists(":CocCommand") > 0 then
    	vim.cmd.CocCommand("prettier.formatFile")	
    end
    vim.cmd.w()
end, { desc = "Eslint format" })
