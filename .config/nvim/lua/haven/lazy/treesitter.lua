return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  lazy = false,
  main = "nvim-treesitter.configs",
  branch = "main",
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "query", "python", "c", "cpp", "markdown", "markdown_inline", "csv", "json" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end
    configs.setup(opts)
  end,
}
