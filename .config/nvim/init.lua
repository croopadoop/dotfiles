-- neovim's lua module loader
vim.loader.enable()

pcall(require, "croopadoop.env")

require("plugin.theme")
require("plugin.mason")
require("plugin.lsp")
require("plugin.treesitter")
require("plugin.oil")
require("croopadoop.options")
