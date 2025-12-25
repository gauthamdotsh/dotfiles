return {
	"rmagatti/auto-session",
	lazy = false, -- Must be false for auto-session to work
	keys = {
		{ "<leader>wr", "<cmd>AutoSession restore<CR>", desc = "Restore session for cwd" },
		{ "<leader>ws", "<cmd>AutoSession save<CR>", desc = "Save session" },
	},

	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		auto_restore = false, -- Don't auto-restore sessions on startup
		suppressed_dirs = { "~/", "~/Dev/", "~/Downloads/", "~/Documents/", "~/Desktop/" },
	},
}
