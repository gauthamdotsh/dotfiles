return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Configure Lua LSP
		vim.lsp.config["lua_ls"] = {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
				},
			},
		}

		-- Python LSP Server (pylsp)
		vim.lsp.config["pylsp"] = {
			capabilities = capabilities,
			settings = {
				pylsp = {
					plugins = {
						-- Configure jedi for your project structure
						jedi = {
							extra_paths = {
								"./app",
								"./common",
								"./api",
								"./data",
								"./infra",
								"./ingestion",
							},
						},
						-- Linting
						pycodestyle = {
							enabled = true,
							ignore = { "E501" },
							maxLineLength = 88,
						},
						pyflakes = {
							enabled = true,
						},
						mccabe = {
							enabled = false,
						},
						pydocstyle = {
							enabled = false,
						},
						flake8 = {
							enabled = false,
						},
						-- Formatting
						yapf = {
							enabled = true,
						},
						autopep8 = {
							enabled = false,
						},
					},
				},
			},
		}
	end,
}
