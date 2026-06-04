return {
  "greggh/claude-code.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume" },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>ar", "<cmd>ClaudeCodeContinue<cr>", desc = "Resume Claude session" },
  },
  opts = {
    window = {
      position = "vertical",
      split_ratio = 0.35,
    },
  },
}
