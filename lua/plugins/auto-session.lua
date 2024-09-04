-- auto-session (session lens included)
-- https://github.com/rmagatti/auto-session

return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
  },
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>sp', '<cmd>SessionSearch<CR>', desc = '[S]search [P]roject' },
  },
  config = function()
    require('auto-session').setup {
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  end,
}
