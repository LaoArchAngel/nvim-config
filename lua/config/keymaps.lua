-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--#region Hop

local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set("", "f", function()
  hop.hint_patterns({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, { remap = true, desc = "Go forward to pattern match" })

vim.keymap.set("", "F", function()
  hop.hint_patterns({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, { remap = true, desc = "Go back to pattern match" })

vim.keymap.set("", "t", function()
  hop.hint_patterns({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
end, { remap = true, desc = "Go forward to 2-character match" })

vim.keymap.set("", "T", function()
  hop.hint_patterns({ direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = -1 })
end, { remap = true, desc = "Go back to 2-character match" })

vim.keymap.set("", "gl", function()
  hop.hint_lines_skip_whitespace()
end, { remap = true, desc = "Go to line" })
--#endregion
--
--#region Surround
vim.keymap.set("x", "ys", "<Plug>(nvim-surround-visual)", { remap = false, desc = "Surround the selected text" })
--#endregion
