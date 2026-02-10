-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'christoomey/vim-tmux-navigator' },
  { 'github/copilot.vim' },
  { 'nvim-treesitter/nvim-treesitter-context' },
  {
    'ThePrimeagen/harpoon',
    keys = function()
      local keys = {
        {
          '<leader>H',
          function()
            require('harpoon.mark').add_file()
          end,
          desc = 'Harpoon Add File',
        },
        {
          '<leader>l',
          function()
            require('harpoon.ui').toggle_quick_menu()
          end,
          desc = 'Harpoon Quick Menu',
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          '<leader>' .. i,
          function()
            require('harpoon.ui').nav_file(i)
          end,
          desc = 'Harpoon to File ' .. i,
        })
      end
      return keys
    end,
  },
}
