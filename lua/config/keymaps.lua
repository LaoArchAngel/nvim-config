-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--#region Hop

local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set("n", "f", function()
  hop.hint_char2({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, { remap = true, desc = "Go forward to 2-character match" })

vim.keymap.set("n", "F", function()
  hop.hint_char2({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, { remap = true, desc = "Go back to 2-character match" })

vim.keymap.set("n", "t", function()
  hop.hint_char2({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
end, { remap = true, desc = "Go forward to 2-character match" })

vim.keymap.set("n", "T", function()
  hop.hint_char2({ direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = -1 })
end, { remap = true, desc = "Go back to 2-character match" })

vim.keymap.set("n", "/", function()
  hop.hint_patterns()
end, { remap = true, desc = "Go to pattern" })

vim.keymap.set("n", "gl", function()
  hop.hint_lines_skip_whitespace()
end, { remap = true, desc = "Go to line" })
--#endregion
--
--#region Surround
vim.keymap.set("x", "ys", "<Plug>(nvim-surround-visual)", { remap = false, desc = "Surround the selected text" })
--#endregion
