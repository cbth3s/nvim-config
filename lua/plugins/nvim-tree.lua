return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      api.config.mappings.default_on_attach(bufnr)

      vim.keymap.set("n", "<CR>", function()
        local node = api.tree.get_node_under_cursor()

        if node and node.type == "file" then
          api.node.open.edit()
          vim.cmd('wincmd p')
        else
          api.node.open.edit()
        end
      end, { desc = "Open file but keep focus in NvimTree", buffer = bufnr, noremap = true, silent = true })
    end

    require("nvim-tree").setup({
      update_focused_file = {
        enable = false,
        update_cwd = false,
      },
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      on_attach = my_on_attach,
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree explorer" })
  end,
}
