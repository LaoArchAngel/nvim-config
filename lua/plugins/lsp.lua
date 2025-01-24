return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = true,
          root_dir = function(fname)

            local util = require("lspconfig.util");

            local root_files = {
              ".luarc.json",
              ".luarc.jsonc",
              ".luacheckrc",
              ".stylua.toml",
              "stylua.toml",
              "selene.toml",
              "selene.yml",
            }
            
            if string.find(fname, "AMUMSS") then return end

            local root = util.root_pattern(unpack(root_files))(fname)
            if root and root ~= vim.env.HOME then
              return root
            end

            local root_lua = util.root_pattern 'lua/'(fname) or ''
            local root_git = util.find_git_ancestor(fname) or ''
            if root_lua == '' and root_git == '' then
              return
            end
            return #root_lua >= #root_git and root_lua or root_git
          end,
        },
        dockerls = {
          mason = false,
        },
        jsonls = {
          mason = false,
        },
        yamlls = {
          mason = false,
        },
        docker_compose_language_service = {
          mason = false,
        },
      },
    },
  },
}
