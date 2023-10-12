-- 当不存在其他窗口时，自动关闭 NERDTree 窗口
vim.api.nvim_exec([[
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif
]], false)

-- 去除UI指引
vim.g.NERDTreeMinimalUI = 1

-- 将 NERDTree 窗口显示在左侧
vim.g.NERDTreeWinPos = 'left'

-- 设置 NERDTree 窗口宽度为 30 列
vim.g.NERDTreeWinSize = 30

-- NERDTree 忽略指定后缀文件
vim.cmd('set wildignore+=*.meta,*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store')
vim.g.NERDTreeRespectWildIgnore = 1

vim.keymap.set('n','ft',':NERDTreeToggle<CR>')
vim.keymap.set('n','ff',':NERDTreeFocus<CR>')
