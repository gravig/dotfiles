function hide_background()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function set_one_dark ()
	-- ATOM ONE DARK THEME
	vim.cmd('colorscheme onedark')

	require('onedark').setup {
		-- options: dark, darker, cool, deep, warm, warmer
		style = 'darker',
		transparent = true,
	}
	require('onedark').load()
	-- hide_background()
end

function set_rose_pine () 
	vim.cmd('colorscheme rose-pine')
	hide_background()
end

set_one_dark()
-- set_rose_pine()
