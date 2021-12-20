local opt = vim.opt

local options = {
    laststatus = 2,
    number = true,
    relativenumber = true,
    foldmethod = "indent",
    foldlevel = 99,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    autoindent = true,
    fileformat = "unix",
    numberwidth = 5,
    encoding = "utf-8",
    termguicolors = true,
    completeopt = {'menuone', 'noselect'},
}

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd "colorscheme OceanicNext"
vim.cmd "syntax on"
