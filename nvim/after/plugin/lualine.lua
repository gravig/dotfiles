local colors = {
	blue   = '#80a0ff',
	cyan   = '#79dac8',
	green  = '#3cc25f',
	black  = '#080808',
	white  = '#c6c6c6',
	red    = '#ff5189',
	violet = '#d183e8',
	grey   = '#303030',

	added  = '#98be65',
	modified = '#ff8800',
	removed = '#ec5f67',
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.red },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.green } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

local config = {
	options = {
		theme = bubbles_theme,
		component_separators = '|',
		section_separators = { left = '|', right = '|' },
	},
	sections = {
		lualine_a = {
			{ 'mode', separator = { left = '|' }, right_padding = 2 },
		},
		lualine_b = {
			'filename',
			{
				'branch',
				color = { fg = colors.violet, gui = 'bold' },
			},
		},
		lualine_c = { 'fileformat' },
		lualine_x = {
			{
				'diff',
				symbols = {
					added = ' ',
					modified = '~ ',
					removed = ' ',
				},
				diff_color = {
					added = { fg = colors.added },
					modified = { fg = colors.modified },
					removed = { fg = colors.removed },
				},
			},
		},
		lualine_y = { 'filetype', 'progress' },
		lualine_z = {
			{ 'location', separator = { right = '|' }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
}

require("lualine").setup(config)


