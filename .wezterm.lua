-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font("JetBrains Mono")
config.font_size = 13
config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 1

-- config.window_background_image = "1.jpeg"
config.background = {
	{
		source = {
			File = wezterm.config_dir .. "/dotfiles/bg/jp-2.jpg",
		},
		hsb = {
			brightness = 0.015,
			hue = 1,
			saturation = 1,
		},
	},
}
-- config.disable_default_key_bindings = true
config.keys = {
	{
		key = "f",
		mods = "SUPER",
		action = wezterm.action.ToggleFullScreen,
	},
}
-- Fix (curly) brackets on non-qwerty keyboards
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
