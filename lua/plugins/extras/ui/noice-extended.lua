return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = opts.routes or {}

    -- Suppress "No information available" LSP hover noise
    table.insert(opts.routes, {
      filter = { event = "notify", find = "No information available" },
      opts = { skip = true },
    })

    -- Suppress treesitter query errors (e.g. invalid "tab" node in queries)
    table.insert(opts.routes, {
      filter = { event = "msg_show", find = "Query err" },
      opts = { skip = true },
    })
    table.insert(opts.routes, {
      filter = { event = "msg_show", find = "treesitter" },
      opts = { skip = true },
    })

    opts.presets = opts.presets or {}
    opts.presets.lsp_doc_border = true
    opts.presets.bottom_search = false

    -- Disable treesitter highlighting in the cmdline popup to avoid query errors
    opts.cmdline = opts.cmdline or {}
    opts.cmdline.enabled = true
    opts.cmdline.format = opts.cmdline.format or {}
    -- Use plain vim highlighting instead of treesitter for all cmdline formats
    opts.highlight = opts.highlight or {}
    opts.highlight.skip_query_validation = true
  end,
}
