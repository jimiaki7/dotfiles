-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.colors = {

	foreground = "#c0caf5",
	background = "#1a1b26",
	cursor_bg = "#c0caf5",
	cursor_border = "#c0caf5",
	cursor_fg = "#1a1b26",
	selection_bg = "#283457",
	selection_fg = "#c0caf5",
	split = "#7aa2f7",
	compose_cursor = "#ff9e64",
	scrollbar_thumb = "#292e42",

	ansi = { "#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
	brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" },

	-- Kanagawa theme
	--foreground = "#dcd7ba",
	--background = "#1f1f28",
	--cursor_bg = "#c8c093",
	--cursor_fg = "#c8c093",
	--cursor_border = "#c8c093",
	--selection_fg = "#c8c093",
	--selection_bg = "#2d4f67",
	--scrollbar_thumb = "#16161d",
	--split = "#16161d",

	--ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
	--brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
	--indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18

-- unabling tab bar
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = false

-- window decoration
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 13

-- keybindings

config.keys = {
	-- Default QuickSelect keybind (CTRL-SHIFT-Space) is captured by something else
	{
		key = "A",
		mods = "CTRL|SHIFT",
		action = wezterm.action.QuickSelect,
	},
}

-- skipping confirmation on quit
config.skip_close_confirmation_for_processes_named = {
	"bash",
	"sh",
	"zsh",
	"fish",
	"tmux",
	"nu",
	"cmd.exe",
	"pwsh.exe",
	"powershell.exe",
	"wezterm",
}

-- and finally, return the configuration to wezterm
return config
