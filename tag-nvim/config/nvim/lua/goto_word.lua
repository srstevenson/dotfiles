local M = {}
local namespace = vim.api.nvim_create_namespace("goto_word")
local alphabet = "asdfghjklqwertyuiopzxcvbnm"

function M.jump()
  local buffer = vim.api.nvim_get_current_buf()
  local window = vim.api.nvim_get_current_win()
  local targets = {}
  local bottom = vim.fn.line("w$")
  local row = vim.fn.line("w0")

  while row <= bottom do
    local fold_end = vim.fn.foldclosedend(row)
    if fold_end ~= -1 then
      row = fold_end + 1
    else
      local line = vim.api.nvim_buf_get_lines(buffer, row - 1, row, false)[1]
      local offset = 0
      while true do
        local match = vim.fn.matchstrpos(line, [[\k\+]], offset)
        local start, finish = match[2], match[3]
        if start == -1 then
          break
        end
        local position = vim.fn.screenpos(window, row, start + 1)
        if position.row > 0 and position.col > 0 then
          targets[#targets + 1] = { row = row, start = start }
        end
        offset = finish
      end
      row = row + 1
    end
  end

  if #targets == 0 then
    return
  end

  local width = 1
  while (#alphabet) ^ width < #targets do
    width = width + 1
  end
  for index, target in ipairs(targets) do
    local number = index - 1
    target.label = ""
    for _ = 1, width do
      local digit = number % #alphabet + 1
      target.label = alphabet:sub(digit, digit) .. target.label
      number = math.floor(number / #alphabet)
    end
  end

  local ok, target = pcall(function()
    for position = 1, width do
      vim.api.nvim_buf_clear_namespace(buffer, namespace, 0, -1)
      for _, candidate in ipairs(targets) do
        vim.api.nvim_buf_set_extmark(buffer, namespace, candidate.row - 1, candidate.start, {
          virt_text = { { candidate.label:sub(position), "GotoWordLabel" } },
          virt_text_pos = "overlay",
          hl_mode = "combine",
          priority = 1000,
        })
      end
      vim.cmd.redraw()
      local key = vim.fn.getcharstr()
      targets = vim.tbl_filter(function(candidate)
        return candidate.label:sub(position, position) == key
      end, targets)
      if #targets == 0 then
        return
      end
    end
    return targets[1]
  end)

  vim.api.nvim_buf_clear_namespace(buffer, namespace, 0, -1)
  vim.cmd.redraw()
  if not ok then
    if not tostring(target):find("Interrupt", 1, true) then
      error(target, 0)
    end
    return
  end
  if not target then
    return
  end

  if vim.fn.mode():match("[vV\22]") then
    vim.cmd.normal({ args = { "\27" }, bang = true })
  end
  vim.api.nvim_win_set_cursor(window, { target.row, target.start })
end

return M
