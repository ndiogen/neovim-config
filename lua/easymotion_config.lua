return { setup = function()
    vim.api.nvim_set_keymap('', '<A-l>', "<Plug>(easymotion-overwin-line)", {})
    vim.api.nvim_set_keymap('', '<A-j>', "<Plug>(easymotion-j)",            {})
    vim.api.nvim_set_keymap('', '<A-k>', "<Plug>(easymotion-k)",            {})
    vim.api.nvim_set_keymap('', '<A-w>', "<Plug>(easymotion-w)",            {})
    vim.api.nvim_set_keymap('', '<A-e>', "<Plug>(easymotion-e)",            {})
    vim.api.nvim_set_keymap('', '<A-b>', "<Plug>(easymotion-b)",            {})
    vim.api.nvim_set_keymap('', '<A-f>', "<Plug>(easymotion-f)",            {})
    vim.api.nvim_set_keymap('', '<A-F>', "<Plug>(easymotion-F)",            {})
end }
