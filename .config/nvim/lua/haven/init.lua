vim.g.mapleader = " "

require("haven.lazy_init")
require("haven.set")
require("haven.remap")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.schedule(function()
      vim.cmd("Neotree show")
      vim.cmd("wincmd l")
      vim.cmd("botright 15split")
      vim.cmd("terminal")
      vim.cmd("wincmd k")
    end)
  end,
})

