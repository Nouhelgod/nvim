require("which-key").setup({
	delay = 200,
    preset = "helix",
	plugins = {
		presets = {
			motions = true,
            marks = false,
            registers = false,
		},
	},
    
    win = {
        no_overlap = true,
        padding = {1, 1},
        title = true,
        title_pos = "right",
        wo = {
            winblend = 90,
        },
        row = 1,
        border = "none"
    },
    layout = {
        width = { max = 20 },
    },
})
