local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.color_scheme = "Batman"
	config.font = wezterm.font_with_fallback({
		"Fira Code",
		"DengXian",
	})
end

return module
