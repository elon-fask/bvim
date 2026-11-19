return {
  {
    "Diogo-ss/42-header.nvim",
    cmd = { "Stdheader" },
    keys = {
      { "<F1>", "<cmd>Stdheader<cr>", desc = "Insert 42 Header" },
    },
    init = function()
      -- Force Neovim global variables before the plugin initializes
      vim.g.user = "atboulaa"
      vim.g.mail = "atboulaa@student.1337.ma"
    end,
    config = function()
      require("42header").setup({
        default_map = true,
        auto_update = true,
        user = "atboulaa",
        mail = "atboulaa@student.1337.ma",
      })
    end,
  },
}
