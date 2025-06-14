return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		--[[ local alpha_term = require("alpha.term") ]]
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
			dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
			dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "AlphaShortcut"
		dashboard.section.buttons.opts.hl = "AlphaButtons"

		-- local width = 100
		-- local height = 20
		-- dashboard.section.terminal.command = "onefetch ."
		-- dashboard.section.terminal.width = width
		-- dashboard.section.terminal.height = height
		-- dashboard.section.terminal.opts.window_config = { border = 'none', col = (vim.api.nvim_win_get_width(0) / 2 - (width / 2)) }
		-- dashboard.section.terminal.opts.redraw = true

		-- dashboard.section.header.val = "  𝕟 𝕖 𝕠 𝕧 𝕚 𝕞  "
		dashboard.section.header.val = {
			[[ ┌─────────────────────────────────────────────────────────────────┐ ]],
			[[ │                     ,                                           │ ]],
			[[ │                     \`-._           __                          │ ]],
			[[ │                      \\  \-..____,.'  `.                        │ ]],
			[[ │                       :  )       :      :\                      │ ]],
			[[ │                        ;'        '   ;  | :                     │ ]],
			[[ │                        )..      .. .:.`.; :                     │ ]],
			[[ │                       /::...  .:::...   ` ;                     │ ]],
			[[ │                       `:o>   /\o_>        : `.                  │ ]],
			[[ │                      `-`.__ ;   __..--- /:.   \                 │ ]],
			[[ │                     ==== \_/   ;=====_.':.     ;                │ ]],
			[[ │                       ,/'`--'...`--....        ;                │ ]],
			[[ │                            ;                    ;               │ ]],
			[[ │                        . '                       ;              │ ]],
			[[ │                      .'     ..     ,      .       ;             │ ]],
			[[ │                     :       ::..  /      ;::.     |             │ ]],
			[[ │                    /      `.;::.  |       ;:..    ;             │ ]],
			[[ │                   :         |:.   :       ;:.    ;              │ ]],
			[[ │                   :         ::     ;:..   |.    ;               │ ]],
			[[ │                    :       :;      :::....|     |               │ ]],
			[[ │                    /\     ,/ \      ;:::::;     ;               │ ]],
			[[ │                  .:. \:..|    :     ; '.--|     ;               │ ]],
			[[ │                 ::.  :''  `-.,,;     ;'   ;     ;               │ ]],
			[[ │              .-'. _.'\      / `;      \,__:      \              │ ]],
			[[ │              `---'    `----'   ;      /    \,.,,,/              │ ]],
			[[ │                                 `----`                          │ ]],
			[[ └─────────────────────────────────────────────────────────────────┘ ]],
			[[                              Neovim                                 ]],

		}


		dashboard.config.layout = {
			{ type = "padding", val = 1 },
			-- dashboard.section.terminal,
			-- { type = "padding", val = 2 },
			dashboard.section.header,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			{ type = "padding", val = 1 },
			dashboard.section.footer,
		}

		alpha.setup(dashboard.opts)
	end,
}
