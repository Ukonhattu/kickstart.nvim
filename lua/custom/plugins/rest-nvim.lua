return {
	"rest-nvim/rest.nvim",
	config = function()
		local parser = vim.fs.joinpath(
			vim.fn.stdpath("data"),
			"lazy-rocks",
			"rest.nvim",
			"lib",
			"lua",
			"5.1",
			"parser",
			"http.so"
		)
		if vim.uv.fs_stat(parser) then
			vim.treesitter.language.add("http", { path = parser })
		end
	end,
}
