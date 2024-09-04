return {
  'nvim-treesitter/nvim-treesitter-context',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>j', function()
      require('treesitter-context').go_to_context(vim.v.count1)
    end, { desc = 'Jump to treesitter context', silent = true })
  end,
}
