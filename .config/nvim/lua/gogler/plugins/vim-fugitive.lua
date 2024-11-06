return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>G", "<cmd>:G<cr>", {})
	end,
}
