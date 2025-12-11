return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'gruvbox',
        icons_enabled = true,
        component_separators = { left = '│', right = '│' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', icon = '' } },
        lualine_b = {
            { 'branch', icon = '' },
            { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' } },
            { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } }
        },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = {},
      },
      inactive_sections = {
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
      },
    })
  end,
}
