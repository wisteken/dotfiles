return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    event = { "BufReadPre" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash",
          "css",
          "cue",
          "dockerfile",
          "git_config",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "gowork",
          "graphql",
          "hcl",
          "html",
          "javascript",
          "jq",
          "jsdoc",
          "json",
          "json5",
          "jsonnet",
          "lua",
          "make",
          "markdown",
          "markdown_inline", -- required by lspsaga.nvim
          "prisma",
          "proto",
          "python",
          "regex",
          "ruby",
          "rust",
          "scss",
          "sql",
          "starlark",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vue",
          "yaml",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPre" },
    dependencies = { "nvim-treesitter" },
    init = function()
      local palette = require("utils.colors").palette

      require("utils.highlight").force_set_highlights("treesitter-context_hl", {
        TreesitterContext = { bg = palette.surface1, blend = 10 },
      })
    end,
    opts = {
      max_lines = 4,
    },
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    opts = { enable_autocmd = false },
  },
}
