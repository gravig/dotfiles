local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
})

local cmp = require("cmp")
local cmp_select = { begavior = cmp.SelectBehavior.Select }

cmp.setup({
  	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
})


lsp.defaults.cmp_mappings({
	["C-p"] = cmp.mapping.select_prev_item(cmp_select),
	["C-n"] = cmp.mapping.select_next_item(cmp_select),
})
