-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'

    -- Document existing key chains
    opts = {
      spec = {
        { '<leader>l', desc = '[L]anguage', mode = { 'x', 'n' } },
        -- { '<leader>d', desc = '[D]ocument', mode = { 'x', 'n' } },
        { '<leader>r', desc = '[R]emove', mode = { 'x', 'n' } },
        { '<leader>s', desc = '[S]earch', mode = { 'x', 'n' } },
        { '<leader>w', desc = '[W]orkspace', mode = { 'x', 'n' } },
        { '<leader>t', desc = '[T]oggle', mode = { 'x', 'n' } },
        { '<leader>h', desc = 'Git [H]unk', mode = { 'v', 'n' } },
        { '<leader>x', desc = 'Quick Fix', mode = { 'x', 'n' } },
      },
    },
  },
}
