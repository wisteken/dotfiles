return {
  {
    "folke/snacks.nvim",
    keys = {
      -- Cmd+` : 下部ターミナルトグル
      {
        "\x1b[96;9~",
        function()
          Snacks.terminal.toggle(nil, {
            win = {
              position = "bottom",
              height = 0.3,
            },
          })
        end,
        mode = { "n", "t" },
        desc = "Terminal: Toggle Bottom",
      },
      -- Cmd+J : 右側ターミナルトグル
      {
        "\x1b[106;9~",
        function()
          Snacks.terminal.toggle(nil, {
            win = {
              position = "right",
              width = 0.4,
            },
          })
        end,
        mode = { "n", "t" },
        desc = "Terminal: Toggle Right",
      },
    },
  },
}
