return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Set header
    dashboard.section.header.val = {
      ' ====================================================',
      '|                                                    |',
      '|  ██████╗  ██████╗ ██████╗ ██╗  ██╗███████╗██████╗  |',
      '| ██╔════╝ ██╔═══██╗██╔══██╗██║  ██║██╔════╝██╔══██╗ |',
      '| ██║  ███╗██║   ██║██████╔╝███████║█████╗  ██████╔╝ |',
      '| ██║   ██║██║   ██║██╔═══╝ ██╔══██║██╔══╝  ██╔══██╗ |',
      '| ╚██████╔╝╚██████╔╝██║     ██║  ██║███████╗██║  ██║ |',
      '|  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ |',
      '|                                                    |',
      ' ====================================================',
    }
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New File', '<cmd>ene<cr>'),
      dashboard.button('SPC y', '  > Toggle file explorer', '<cmd>Yazi<cr>'),
      dashboard.button('SPC lg', '  > Toggle Lazygit', '<cmd>LazyGit<cr>'),
      dashboard.button('SPC sf', '󰱼  > Find File', [[<cmd> lua require("telescope.builtin").find_files() <cr>]]),
      -- dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      -- dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button('q', '  > Quit NVIM', '<cmd>qa<CR>'),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
