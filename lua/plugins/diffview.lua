-- diffview
-- https://github.com/sindrets/diffview.nvim

return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local cb = require('diffview.config').diffview_callback

      require('diffview').setup {
        use_icons = true, -- requires nvim-web-devicons
        enhanced_diff_hl = true, -- better syntax highlighting in diffs
        keymaps = {
          view = {
            ['q'] = '<cmd>DiffviewClose<cr>', -- quit diff view
          },
          file_panel = {
            ['q'] = '<cmd>DiffviewClose<cr>',
          },
        },
      }
    end,
  },
}
