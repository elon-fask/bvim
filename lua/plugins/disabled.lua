-- Plugins to disable. Add entries here to prevent them from loading.

return {
  -- ── AI / Coding Assistants (disabled for performance) ───────────────
  { "tzachar/cmp-tabnine", enabled = false },
  -- { "Exafunction/codeium.nvim", enabled = false },
  { "zbirenbaum/copilot.lua", enabled = false },
  { "zbirenbaum/copilot-cmp", enabled = false },

  -- ── Tracking / Telemetry (disabled for performance & privacy) ────────
  -- { "IogaMaster/neocord", enabled = false },
  -- { "wakatime/vim-wakatime", enabled = false },

  -- ── Mini animate (can cause perceived lag on slower machines) ─────────
  -- Uncomment to disable smooth animations if still laggy:
  -- { "echasnovski/mini.animate", enabled = false },
}
