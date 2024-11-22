-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Allow copy of multiple paths
-- require("neo-tree").setup({
--   commands = {
--     copy_selector = function(state)
--       local node = state.tree:get_node()
--       local filepath = node:get_id()
--       local filename = node.name
--       local modify = vim.fn.fnamemodify
--
--       local vals = {
--         ["PATH (CWD)"] = modify(filepath, ":."),
--         ["BASENAME"] = modify(filename, ":r"),
--         ["PATH"] = filepath,
--         ["FILENAME"] = filename,
--         ["PATH (HOME)"] = modify(filepath, ":~"),
--         ["EXTENSION"] = modify(filename, ":e"),
--         ["URI"] = vim.uri_from_fname(filepath),
--       }
--
--       local options = vim.tbl_filter(function(val)
--         return vals[val] ~= ""
--       end, vim.tbl_keys(vals))
--       if vim.tbl_isempty(options) then
--         vim.notify("No values to copy", vim.log.levels.WARN)
--         return
--       end
--       table.sort(options)
--       vim.ui.select(options, {
--         prompt = "Choose to copy to clipboard:",
--         format_item = function(item)
--           return ("%s: %s"):format(item, vals[item])
--         end,
--       }, function(choice)
--         local result = vals[choice]
--         if result then
--           vim.notify(("Copied: `%s`"):format(result))
--           vim.fn.setreg("+", result)
--         end
--       end)
--     end,
--   },
--   window = {
--     mappings = {
--       Y = "copy_selector",
--     },
--   },
-- })
