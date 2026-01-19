return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended: pin major version
		ft = { "rust" },
		dependencies = {
			"neovim/nvim-lspconfig",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- RustaceanVim uses a global config table
			vim.g.rustaceanvim = {
				tools = {
					hover_actions = {
						border = "rounded",
					},
					float_win_config = {
						border = "rounded",
					},
				},

				server = {
					on_attach = function(_, bufnr)
						local map = function(mode, lhs, rhs)
							vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
						end

						map("n", "K", vim.lsp.buf.hover)
						map("n", "gd", vim.lsp.buf.definition)
						map("n", "gr", vim.lsp.buf.references)
						map("n", "<leader>ca", vim.lsp.buf.code_action)
						map("n", "<leader>rn", vim.lsp.buf.rename)
						map("n", "<leader>f", function()
							vim.lsp.buf.format { async = true }
						end)
					end,

					default_settings = {
						["rust-analyzer"] = {
							cargo = {
								allFeatures = true,
								loadOutDirsFromCheck = true,
								buildScripts = {
									enable = true,
								},
							},
							checkOnSave = {
								command = "clippy",
							},
							procMacro = {
								enable = true,
							},
							diagnostics = {
								enable = true,
							},
						},
					},
				},
			}
		end,
	},
}
