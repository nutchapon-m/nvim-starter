return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  -- 'catppuccin/nvim',
  -- 'rebelot/kanagawa.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    -- Tokyonight Theme
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
    }
    vim.cmd.colorscheme 'tokyonight-night'

    -- Catppuccin Theme
    -- require('catppuccin').setup {
    --   flavour = 'mocha',
    --   background = {
    --     light = 'latte',
    --     dark = 'mocha',
    --   },
    --   transparent_background = false,
    -- }
    -- vim.cmd.colorscheme 'catppuccin'
    --
    -- Kanagawa Theme
    -- require('kanagawa').setup {
    --   theme = 'dragon',
    --   background = {
    --     dark = 'dragon',
    --     light = 'lotus',
    --   },
    -- }
    -- vim.cmd.colorscheme 'kanagawa'
  end,
}
