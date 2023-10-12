local Plug = vim.fn['plug#']
vim.g['plug_url_format'] = 'git@github.com:%s.git'

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('neoclide/coc.nvim',{['branch'] = 'release'})
-- " File Tree
Plug 'preservim/nerdtree'
-- " Markdown
Plug('dhruvasagar/vim-table-mode' ,{['for'] = 'markdown'})
Plug('iamcco/markdown-preview.nvim', {['for'] = 'markdown'})
Plug('simrat39/symbols-outline.nvim', {['for'] = 'markdown'})
-- Nvim Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-visual-multi'

vim.call('plug#end')

-- ----------- Theme -----------------
vim.g['airline_theme'] = 'deus'

-- -------- Load Config --------------
require('basic')
require('coc-nvim')
require('nerdtree')
require('utility')
vim.cmd('autocmd BufNewFile,BufRead *.md lua require("markdown")')
