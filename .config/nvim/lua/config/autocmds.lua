local function show_readonly_warning()
  vim.api.nvim_create_autocmd("BufReadPost", {
    group = vim.api.nvim_create_augroup("ReadOnlyWarning", { clear = true }),
    callback = function()
      local is_readonly = function()
        local filepath = vim.fn.expand("%:p")
        if string.find(filepath, "/__generated__/", 1, true) then
          return true
        end
        if string.match(filepath, "%.generated%.") then
          return true
        end

        local first_line = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]
        if first_line:match("DO NOT EDIT") then
          return true
        end

        return false
      end

      if is_readonly() then
        vim.bo.readonly = true
        vim.notify("This file is marked as DO NOT EDIT. Opened in read-only mode.", vim.log.levels.WARN)
      end
    end,
  })
end

local function auto_reload_on_focus()
  vim.o.autoread = true
  vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    group = vim.api.nvim_create_augroup("AutoReload", { clear = true }),
    command = "checktime",
  })
end

if not vim.g.vscode then
  show_readonly_warning()
  auto_reload_on_focus()
end
