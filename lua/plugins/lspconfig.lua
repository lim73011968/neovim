return{
    "neovim/nvim-lspconfig",
    event = "BufReadPost", -- Load after a buffer is read
    config = function()
	-- Your nvim-lspconfig setup goes here
	--vim.lsp.config.lua_ls.setup {}
	vim.lsp.config('lua_ls', {})
	--vim.lsp.config('pyright', {})
	--vim.lsp.config('ts_ls', {})
	vim.lsp.config('gdscript', {})
	vim.lsp.config('clangd', {})
    end,
}
