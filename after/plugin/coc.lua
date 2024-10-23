-- Set key mappings for autocompletion
vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<S-TAB>"', { noremap = true, silent = true, expr = true })

-- Key mappings for navigation and actions
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':call CocActionAsync("doHover")<CR>', { noremap = true, silent = true })

-- Key mappings for code actions
vim.api.nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format-selected)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>f', '<Plug>(coc-format-selected)', { noremap = true, silent = true })

-- Set the global extensions to install
vim.g.coc_global_extensions = {
  'coc-tsserver',  -- TypeScript
  'coc-pyright',   -- Python
  'coc-json',      -- JSON support
  'coc-html',      -- HTML support
  'coc-css'        -- CSS support
}
