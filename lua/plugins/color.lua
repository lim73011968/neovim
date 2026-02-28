local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
end
return {
    {
    	--"bluz71/vim-moonfly-colors",
	--"https://github.com/sainnhe/sonokai",
	--"calind/selenized.nvim",
    	"Mofiqul/adwaita.nvim",
	--"ellisonleao/gruvbox.nvim",
	--"cocopon/iceberg.vim",
	config = function ()
	    vim.g.adwaita_darker = true
	    vim.cmd.colorscheme "adwaita"
	    --enable_transparency()
	end
    },
}

