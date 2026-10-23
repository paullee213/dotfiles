----------------
---- INPUTS ----
----------------

hl.config({
    input = {
	kb_layout = "us",

	follow_mouse = 1,

	sensitivity = 0,
	touchpad = {
	    natural_scroll = false,
	}
    },
    general = {
	gaps_in = 5,
	gaps_out = 10,
	border_size = 1,
	col = {
	    active_border = "rgba(89b4faee)",
	    inactive_border = "rgba(313244aa)"
	},
	-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
	resize_on_border = true,
	-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
	allow_tearing = true,
	layout = "dwindle",
    },
    decoration = {
	rounding = 10,
	rounding_power = 2,

	-- Change transparency of focused and unfocused windows
	active_opacity = 1.0,
	inactive_opacity = 1.0,

	shadow = {
	    enabled = true,
	    range = 4,
	    render_power = 3,
	    color = 0xee1a1a1a,
	},

	blur = {
	    enabled = true,
	    size = 5,
	    passes = 1,
	    vibrancy = 0.1696
	}
    },
    
    animations = {
	enabled = false,
    },

    -- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ 
    dwindle = {
	preserve_split = true, -- You probably want this
    },

    -- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ 
    master = {
	new_status = "master",
    },

    -- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ 
    scrolling = {
	fullscreen_on_one_column = true,
    }
})

hl.gesture({
   fingers = 3,
   direction = "horizontal",
   action = "workspace"
})
