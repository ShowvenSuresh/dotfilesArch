-- set the line number and relative line number
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true;
vim.opt.relativenumber = true;
-- setting the mapleader for the custom mappings
vim.g.mapleader = ' ';
vim.g.maplocalleader = ' ';
-- enablind mouse mode
vim.opt.mouse = 'a';
-- turn off showmode
vim.o.showmode = false
-- get lazy packagemanager
require("config.lazy")
-- set the color scheme

-- map key to  cpoy and paste to  clicpboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true });
vim.keymap.set("n", "<leader>y", '"+yy', { noremap = true, silent = true });
--paste
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true });
vim.keymap.set("v", "<leader>p", '"+p', { noremap = true, silent = true });
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
]])
