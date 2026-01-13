-- diffview.nvim: Git差分のビジュアル表示
-- Cursorの差分プレビュー機能を代替
return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git: Diff view" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Git: Close diff view" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Git: File history" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Git: Branch history" },
  },
  opts = {
    enhanced_diff_hl = true,
    use_icons = true,
    view = {
      default = {
        layout = "diff2_horizontal",
      },
      merge_tool = {
        layout = "diff3_mixed",
        disable_diagnostics = true,
      },
      file_history = {
        layout = "diff2_horizontal",
      },
    },
    file_panel = {
      listing_style = "tree",
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
      win_config = {
        position = "left",
        width = 35,
      },
    },
    hooks = {
      diff_buf_read = function(bufnr)
        -- 差分バッファで折りたたみを無効化
        vim.opt_local.foldenable = false
      end,
    },
  },
}
