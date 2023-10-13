vim.g['mkdp_auto_start'] = 0
vim.g['mkdp_browser'] = '/usr/bin/firefox'
vim.keymap.set('n','mm',':MarkdownPreviewToggle<CR>')
vim.keymap.set('n','tm',':TableModeToggle<CR>')

vim.keymap.set('i', ',f', '<Esc>/<++><CR>:nohlsearch<CR>c4l')
vim.keymap.set('i', ',p', '![](<++>)<++><Esc>F[a')
vim.keymap.set('i', ',l', '[](<++>)<++><Esc>F[a')
vim.keymap.set('i', ',b', '****<++><Esc>F*hi')

vim.keymap.set('i', ',1', "#<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',2', "##<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',3', "###<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',4', "####<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',5', "#####<Space><CR><++><Esc>kA")
vim.keymap.set('i', ',6', "######<Space><CR><++><Esc>kA")

-- ------------ Outline -------------
local opts = {
  highlight_hovered_item = true,
  show_guides = false,
  auto_preview = false,
  position = 'right',
  relative_width = true,
  width = 25,
  auto_close = false,
  show_numbers = false,
  show_relative_numbers = false,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  autofold_depth = nil,
  auto_unfold_hover = true,
  fold_markers = { '', '' },
  wrap = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<CR>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "W",
    unfold_all = "E",
    fold_reset = "R",
  },
  lsp_blacklist = {},
  symbol_blacklist = {},
  symbols = {
    Variable = { icon = "", hl = "@constant" },
  },
}

require("symbols-outline").setup()
vim.keymap.set('n','<F5>',':SymbolsOutline<CR>')
