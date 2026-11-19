return {
  "MoulatiMehdi/42norm.nvim",
  event = "BufReadPost",
  opts = {
    format_on_save = false,
    header_on_save = false,
    lint_on_change = true,
  },
  keys = {
    { "<leader>cn", "<cmd>Norminette<cr>", desc = "Run Norminette Diagnostics" },
    { "<leader>cf", "<cmd>Format42<cr>", desc = "Format file with c-formatter-42" },
  },
  config = function(_, opts)
    local norm = require("42norm")
    norm.setup(opts)

    vim.api.nvim_create_user_command("Norminette", function()
      norm.check_norms()
    end, {})

    -- Safe wrapper for formatting that detaches LSP briefly to avoid change-tracking crashes
    vim.api.nvim_create_user_command("Format42", function()
      local bufnr = vim.api.nvim_get_current_buf()
      -- Get active LSP clients attached to this buffer
      local clients = vim.lsp.get_clients({ bufnr = bufnr })

      -- Temporarily detach LSP clients so they don't choke on bulk line replacements
      for _, client in ipairs(clients) do
        vim.lsp.buf_detach_client(bufnr, client.id)
      end

      -- Run the 42 format
      pcall(function()
        norm.format()
      end)

      -- Re-attach the LSP clients after a brief moment
      vim.defer_fn(function()
        if vim.api.nvim_buf_is_valid(bufnr) then
          for _, client in ipairs(clients) do
            if vim.fn.executable(client.name) == 1 or true then
              vim.lsp.buf_attach_client(bufnr, client.id)
            end
          end
        end
      end, 100)
    end, {})

    -- Disable LazyVim autoformat for C/C++ so they don't clash on save
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "cpp" },
      callback = function()
        vim.b.autoformat = false
      end,
    })
  end,
}
