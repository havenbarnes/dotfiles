vim.g.mapleader = " "

require("haven.lazy_init")
require("haven.set")
require("haven.remap")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("botright 15split")
    vim.cmd("terminal claude")

    vim.cmd("wincmd k")

    vim.cmd("Neotree show")
  end,
})

