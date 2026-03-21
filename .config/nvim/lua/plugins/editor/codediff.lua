return {
  "esmuellert/codediff.nvim",
  cmd = { "CodeDiff" },
  keys = {
    { "<leader>gd", "<cmd>CodeDiff<CR>", desc = "Git: CodeDiff (VSCode-like diff)" },
    { "<leader>gh", "<cmd>CodeDiff history<CR>", desc = "Git: CodeDiff file history" },
    { "<leader>gD", "<cmd>CodeDiff close<CR>", desc = "Git: CodeDiff close" },
  },
  opts = {
    layout = "side-by-side",
    keymaps = {
      view = {
        next_file = "<Tab>",
        prev_file = "<S-Tab>",
      },
    },
  },
}
