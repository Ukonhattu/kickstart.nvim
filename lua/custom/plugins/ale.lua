return {
	{
		"dense-analysis/ale",
		-- Optionally, you can lazy-load ALE for specific filetypes.
		-- For example, to load only for languages you use ALE with:
		ft = { "cs", "python", "javascript", "typescript", "lua", "sh" },
		config = function()
			-- Basic ALE settings:
			-- Require explicit linters for each filetype
			vim.g.ale_linters_explicit = 1
			-- Automatically run fixers on file save
			vim.g.ale_fix_on_save = 1
			-- Enable ALE's completion integration (if you're using it)
			vim.g.ale_completion_enabled = 1

			-- Define linters for specific languages.
			-- If you're using ALE as your primary linter, list the tools you want to run.
			vim.g.ale_linters = {
				-- For C#, you might want to use OmniSharp (if configured)
				cs = { "OmniSharp" },
				-- For Python, you might use flake8 or pylint:
				python = { "flake8" },
				-- For JavaScript/TypeScript, ESLint is common:
				javascript = { "eslint" },
				typescript = { "eslint" },
				-- Add more languages as needed
			}

			-- Define fixers for specific languages.
			-- For example, you could use "csharpier" for C# or "prettier" for JS/TS.
			vim.g.ale_fixers = {
				cs = { "dotnet-format" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				-- Configure fixers for other languages here.
			}

			-- If you're using Language Server Protocol (LSP) for diagnostics in some languages,
			-- you might want to disable ALE's built-in linters for those filetypes.
			-- For example, if you use OmniSharp via LSP for C#, you could do:
			-- vim.g.ale_linters_ignore = { cs = 1 }

			-- Optionally, you can configure additional ALE settings:
			-- For example, to set a delay for linting or to adjust UI options.
			vim.g.ale_lint_delay = 500 -- delay in milliseconds
		end,
	},
}
