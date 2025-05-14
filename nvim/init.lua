require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.cmp")
require("nvim-treesitter.configs").setup({
  highlight = { enable = true },
  indent = { enable = true },
})
require("config.lsp")

