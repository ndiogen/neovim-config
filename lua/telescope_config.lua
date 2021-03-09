return { setup = function()
    local actions = require('telescope.actions');

    require('telescope').setup{
      defaults = {
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

        set_env = { ['COLORTERM'] = 'truecolor' },
        windblend = 0.8,

        shorten_path = true,

        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        }
      }
    }


    vim.api.nvim_set_keymap('n', 'sf', ":lua require('telescope.builtin').find_files()<CR>",  {})
    vim.api.nvim_set_keymap('n', 'sa', ":lua require('telescope.builtin').grep_string()<CR>", {})
    vim.api.nvim_set_keymap('n', 'sb', ":lua require('telescope.builtin').buffers()<CR>", {})

    vim.api.nvim_set_keymap('n', 'ga', ":lua require('telescope.builtin').live_grep()<CR>",   {})

    vim.api.nvim_set_keymap('n', 'sS', ":lua require('telescope.builtin').builtin()<CR>",     {})
end }
