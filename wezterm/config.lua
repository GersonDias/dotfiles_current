local wezterm = require("wezterm")
local config_dir = wezterm.config_dir

package.path = config_dir .. "/?.lua;" .. package.path

-- Pull in the wezterm API
local theme = require("theme")
local keybindings = require("keybindings")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

theme.apply_to_config(config)
keybindings.apply_to_config(config)

config.default_prog = { "pwsh" }

-- and finally, return the configuration to wezterm
return config
