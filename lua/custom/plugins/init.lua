-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- My Plugins
  {
    'neoclide/coc.nvim',
    branch = 'release',
  },
  {
    'thePrimeagen/vim-be-good',
    cmd = 'VimBeGood',
  },
  {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local startify = require 'alpha.themes.startify'
      startify.section.header.opts = {
        position = 'center',
        hl = 'CocListFgRed',
      }
      startify.section.header.val = {
        [[                           ⠀⠀⠄⠠⠠⠐⠀⠂⠂⠂⠂⠂⠂⠂⠠⠠⢀                ]],
        [[                          ⡀⠄⠁⠀⣀⣀⣀⣤⣤⣴⣦⣤⣶⣤⣤⣄⣀⠀⢀⠀             ⠀]],
        [[                        ⠈⠠⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠠⠀⡀⠀           ⠀]],
        [[              ⠠⠈⠀⣀⠀⠀⠄⠐⠀⠀⠀⡂⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣄⠀⠀⠁⠠⠀⠀⠀⠀ ⠀⠀⠀ ⠀⠀]],
        [[              ⢁⠀⠺⣿⣇⠀⠐⢀⠀⠄⠁⠄⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⡀⠈⠠ ⠀⠀⠀ ⠀⠀⠀ ]],
        [[              ⠀⠠⠀⠈⠻⣷⡀⠀⠠⢀⠐⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⠀⠐⢀⠀ ⠀  ⠀ ]],
        [[              ⠀⢀⠀⠂⠀⠈⠻⣦⡀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠐⠀ ⠀⠀ ⠀]],
        [[        ⠀⠄⠂⠠⠠⠐⠈⡀⠀⠄⠡⠠⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠀⠀⠐⠀  ⠀⠀]],
        [[        ⠂⠀⣀⣀⣀⣀⠀⠀⠀⣀⣀⣀⣀⢀⣀⣈⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣿⣿⠿⡿⠙⠃⠀⠀⠀⠀⠂⠀⠀ ⠀ ]],
        [[        ⠠⠀⠀⢹⣿⣿⣦⡀⠀⠀⢘⡇⠀⠀⠈⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣄⠀⠀⠀⠀⠀⠀⢀⠠⠀⠁⠀  ⠀⠀⠀]],
        [[        ⠀⠁⠀⢸⠈⢻⣿⣿⣄⠀⢐⡇⠀⠀⠀⣿⣿⡇⠀⣹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⢈⠀⠀⠀⠀⠀ ⠀⠀  ⠀]],
        [[        ⠀⠅⠀⢸⠀⠀⠙⢿⣿⣧⡐⡇⠀⠀⠀⣿⣿⡗⠺⣿⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⡀          ]],
        [[        ⠐⡀⠀⢸⠀⠀⠀⠀⠻⣿⣿⡇⠀⠀⠀⣿⣿⡇⠀⠸⠀⠀⣰⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢀⠀⠀⠀       ]],
        [[        ⠂⠀⣀⣼⣀⠀⠀⠀⠀⠈⢿⡇⠀⠀⣰⣿⣿⣇⣀⣀⣠⣴⡇⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠄⠐⠀       ]],
        [[        ⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⣈⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠂⠀       ]],
        [[        ⠂⠀⠀⠀⠄⠐⠀⠐⠀⠐⠈⠀⠀⠐⠀⠀⠀⣿⣿⡏⠈⠉⠻⣿⣷⡀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠂⠀       ]],
        [[                      ⠀⠅⠀⣿⣿⡗⠀⠀⢀⣿⣿⠇⠀⠈⢿⣿⣯⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠁⠀       ]],
        [[                      ⠈⡀⠀⣿⣿⡷⢤⣶⣾⡛⠋⠀⠀⠀⠈⣿⣿⣆⠈⡿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠁       ]],
        [[                      ⠐⠀⠀⣿⣿⣇⠀⠹⣿⣿⣄⠀⠀⠀⠀⠘⣿⣿⡾⠁⠈⠻⣿⣿⣿⣿⣿⡇⠀⠀⠂       ]],
        [[                     ⠀⠐⠀⢀⣿⣿⣧⠀⠀⠘⢿⣿⣧⡀⠀⠀⠀⠸⣿⠃⠀⠀⠀⠈⢻⣿⣿⣿⡃⠀⠈⠀       ]],
        [[        ⠀⠀             ⠀⠀⠐⠀⠀⢀⠀⡀⢀⠠⠀⢀⠀⠄⠀⠐⠈⠀⠀⠀⡀⠀⠂⠀⠁⠙⠇⠀⠐⠀       ]],
      }
      startify.section.top_buttons.val = {
        startify.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      }
      -- disable MRU
      startify.section.mru.val = { { type = 'padding', val = 0 } }
      -- disable MRU cwd
      startify.section.mru_cwd.val = { { type = 'padding', val = 0 } }
      -- disable nvim_web_devicons
      startify.nvim_web_devicons.enabled = false
      -- startify.nvim_web_devicons.highlight = false
      -- startify.nvim_web_devicons.highlight = 'Keyword'
      --
      startify.section.bottom_buttons.val = {
        startify.button('q', '  Quit NVIM', ':qa<CR>'),
      }
      startify.section.footer = {
        { type = 'text', val = 'footer' },
      }
      -- ignore filetypes in MRU

      startify.mru_opts.ignore = function(path, ext)
        return (string.find(path, 'COMMIT_EDITMSG')) or (vim.tbl_contains(default_mru_ignore, ext))
      end
      alpha.setup(startify.config)
    end,
  },
}
