local utils = require("onedarkpro.utils")

local M = {}

function M.load(config)
	local config = config or require("onedarkpro.config").options

	local colors = {
		name = "onedark",

		bg = "#1e1e1e",
		fg = "#abb2bf",
		red = "#e06c75",
		orange = "#d19a66",
		yellow = "#e5c07b",
		green = "#98c379",
		cyan = "#56b6c2",
		blue = "#61afef",
		purple = "#c678dd",
		white = "#abb2bf",
		black = "#1e1e1e",
		gray = "#5c6370",
		highlight = "#e2be7d",
		none = "NONE",
	}

	-- Additional colors
	colors.color_column = utils.lighten(colors.bg, 0.97)
	colors.comment = utils.lighten(colors.gray, 0.8)
	colors.cursorline = utils.lighten(colors.bg, 0.97)
	colors.indentline = utils.lighten(colors.bg, 0.92)
	colors.menu = utils.lighten(colors.bg, 0.85)
	colors.menu_scroll = utils.lighten(colors.bg, 0.90)
	colors.menu_scroll_thumb = utils.darken(colors.blue, 0.80)
	colors.selection = utils.lighten(colors.bg, 0.8)

	-- Git diff
	colors.diff_add_bg = "#003e4a"
	colors.diff_delete_bg = "#501b20"
	colors.diff_text_bg = "#005869"

	utils.color_overrides(colors, config)

	return colors
end

return M
