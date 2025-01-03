local config = {
	{
		"preservim/nerdtree",
		event = "VimEnter",
		init = function()
			vim.api.nvim_create_autocmd("VimEnter", {
				callback = function()
					if vim.fn.argc() == 0 then
						vim.cmd("NERDTree")
					end
				end,
			})
		end,
		config = function(_, opts)
			--require("nerdtree").setup(opts)
		end,
	},
}

return config
