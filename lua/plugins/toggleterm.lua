-- toggleterm
-- https://github.com/akinsho/toggleterm.nvim

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = 10,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = 'curved',
    },
  },
  keys = {
    { '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', desc = 'Float Terminal' },
    { '<leader>th', '<cmd>ToggleTerm size=20 direction=horizontal<CR>', desc = 'Horizontal Terminal' },
    { '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<CR>', desc = 'Vertical Terminal' },
  },
}
