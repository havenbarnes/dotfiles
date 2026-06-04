vim.g.mapleader = " "

require("haven.lazy_init")
require("haven.set")
require("haven.remap")

vim.api.nvim_create_autocmd({"TermOpen", "BufEnter"}, {
  pattern = {"*", "term://*"},
  callback = function()
    if vim.bo.buftype == "terminal" then
      vim.cmd("startinsert")
    end
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.schedule(function()
      vim.cmd("Neotree show")
    end)
  end,
})

