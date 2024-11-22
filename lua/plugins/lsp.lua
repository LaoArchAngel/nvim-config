return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = true,
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
