return {
	"xvzc/chezmoi.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("chezmoi").setup({
			-- your configuration
			-- default values
			{
				edit = {
					watch = false,
					force = false,
				},
				notification = {
					on_open = true,
					on_apply = true,
					on_watch = false,
				},
				telescope = {
					select = { "<CR>" },
				},
			},
			-- treat all files under chezmoi source directory as chezmoi files
			--  e.g. ~/.local/share/chezmoi/*
			vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
				pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
				callback = function(ev)
					local bufnr = ev.buf
					local edit_watch = function()
						require("chezmoi.commands.__edit").watch(bufnr)
					end
					vim.schedule(edit_watch)
				end,
			}),
		})
	end,
}
