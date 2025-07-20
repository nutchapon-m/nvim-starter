return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true },
  },
  keys = {
    { '<leader>y', mode = { 'n' }, '<CMD>Yazi<CR>', desc = 'Open yazi at the current file' },
  },
  opts = {
    open_multiple_tabs = true,
    yazi_floating_window_border = 'single',
    keymaps = {
      show_help = '<F1>',
    },
  },
}
