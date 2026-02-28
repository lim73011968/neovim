local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Use pwsh if available, otherwise powershell
local shell_cmd = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"

local powershell_options = {
  shell = shell_cmd,
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "2>&1 | Out-File -Encoding UTF8 %s",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

-- Fixed Mappings
map('n', '<c-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', opts)
map('i', '<c-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', opts) -- Map in Insert mode instead of double Normal
map('t', "<Esc>", [[<C-\><C-n>]], opts)

require("toggleterm").setup{
    size = 15,
    direction = "horizontal",
    shell = shell_cmd, -- Forces toggleterm to use the correct executable
}
