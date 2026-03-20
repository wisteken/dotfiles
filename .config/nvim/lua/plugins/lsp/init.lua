return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufWritePre", "BufNewFile" },
    dependencies = { "blink.cmp" },
    init = function()
      local colors = require("utils.colors")
      local palette = colors.palette

      require("utils.highlight").force_set_highlights("lspconfig_hl", {
        LspInlayHint = { link = "DiagnosticHint" },
        -- https://github.com/catppuccin/vscode/blob/catppuccin-vsc-v3.15.2/packages/catppuccin-vsc/src/theme/extensions/error-lens.ts
        DiagnosticErrorLine = { bg = colors.alpha_blend(palette.red, palette.base, 0.15) },
        DiagnosticWarnLine = { bg = colors.alpha_blend(palette.peach, palette.base, 0.15) },
        DiagnosticHintLine = { bg = colors.alpha_blend(palette.green, palette.base, 0.15) },
        DiagnosticInfoLine = { bg = colors.alpha_blend(palette.blue, palette.base, 0.15) },
      })

      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
            [vim.diagnostic.severity.INFO] = " ",
          },
          linehl = {
            [vim.diagnostic.severity.ERROR] = "DiagnosticErrorLine",
            [vim.diagnostic.severity.WARN] = "DiagnosticWarnLine",
            [vim.diagnostic.severity.HINT] = "DiagnosticHintLine",
            [vim.diagnostic.severity.INFO] = "DiagnosticInfoLine",
          },
        },
      })
    end,
    config = function()
      local augroup = vim.api.nvim_create_augroup("neovim_lspconfig_setup", { clear = true })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        ---@param args { buf: integer }
        callback = function(args)
          require("plugins.lsp.config.lsp_actions_on_save")({ buf = args.buf })
        end,
      })

      vim.lsp.config("*", {
        on_attach = require("plugins.lsp.config.utils").on_attach_common,
        capabilities = require("blink.cmp").get_lsp_capabilities({
          textDocument = {
            foldingRange = {
              dynamicRegistration = false,
              lineFoldingOnly = true,
            },
          },
        }),
      })

      vim.lsp.enable({
        -- Go
        "gopls",

        -- JavaScript
        "biome",
        "eslint",
        "prismals",
        "tailwindcss",
        "vtsls",
        "vue_ls",

        -- JSON (JSON Schema)
        "jsonls",
        "jsonnet_ls",
        "yamlls",

        -- Others
        "gh_actions_ls",
        "bashls",
        "buf_ls",
        "dockerls",
        "graphql",
        "lua_ls",
        "nixd",
        "pyright",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    version = "*",
    lazy = true,
    opts = {
      formatters = {
        shfmt = { append_args = { "-i", "2" } },
      },
      -- stylua: ignore
      formatters_by_ft = {
        javascript      = { "biome", "prettierd", stop_after_first = true },
        typescript      = { "biome", "prettierd", stop_after_first = true },
        javascriptreact = { "biome", "prettierd", stop_after_first = true },
        typescriptreact = { "biome", "prettierd", stop_after_first = true },
        json            = { "biome", "prettierd", stop_after_first = true },
        jsonc           = { "biome", "prettierd", stop_after_first = true },
        graphql         = { "biome", "prettierd", stop_after_first = true },
        lua             = { "stylua" },
        sh              = { "shfmt" },
        zsh             = { "shfmt" },
        nix             = { "nixfmt" },
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = { "nvim-web-devicons", "nvim-treesitter" },
    event = { "LspAttach" },
    init = function()
      local palette = require("utils.colors").palette
      require("utils.highlight").set_highlights("lspsaga_hl", {
        SagaNormal = { bg = palette.crust },
        SagaBorder = { bg = palette.crust },
      })
    end,
    opts = function()
      return {
        symbol_in_winbar = { enable = false },
        lightbulb = { enable = false },
        code_action = { show_server_name = true },
        ui = {
          -- create padding around the floating window
          border = { " ", " ", " ", " ", " ", " ", " ", " " },
          kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
        },
        scroll_preview = {
          scroll_down = "<Down>",
          scroll_up = "<Up>",
        },
      }
    end,
  },
}
