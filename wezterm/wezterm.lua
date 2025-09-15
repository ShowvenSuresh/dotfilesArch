-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Add a color scheme
config.color_scheme = 'Tango (terminal.sexy)'
--config.color_scheme = 'tokyonight_night'
-- disable the ftop tab bar
config.enable_tab_bar = false
-- change all the padding to  0
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.window_background_opacity = 0.85


config.text_background_opacity = 1.0


-- and finally, return the configuration to wezterm
return config
