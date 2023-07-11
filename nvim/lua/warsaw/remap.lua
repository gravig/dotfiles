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
vim.keymap.set("n", "<Esc>", function() end)
vim.keymap.set("n", "<C-s>", function()
  if vim.fn.exists(":EslintFixAll") > 0 then 
    vim.cmd.EslintFixAll()
  end

  if vim.fn.exists(":CocCommand") > 0 then
    vim.cmd.CocCommand("prettier.formatFile")	
  end
  vim.cmd.w()
end, { desc = "Eslint format" })

vim.opt.nu = true
vim.opt.guicursor = ""
vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.scrolloff = 8
-- vim.opt.colorcolumn = "80"

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>","<C-d>zz^")
vim.keymap.set("n", "<C-u>","<C-u>zz^")
