local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	"_____     ___ ____",
	" `Mb(     )d' `MM'",
	"  YM.     ,P   MM ",
	"  `Mb     d'   MM ",
	"   YM.   ,P    MM ",
	"   `Mb   d'    MM ",
	"    YM. ,P     MM ",
	"    `Mb d'     MM ",
	"     YM,P      MM ",
	"     `MM'      MM ",
	"      YP      _MM_",
}

dashboard.section.buttons.val = {
	dashboard.button("n", "  Neovim config", ":e $NVIM<CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
}

alpha.setup(dashboard.opts)
