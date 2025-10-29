return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
        -- this is an example, not a default. Please see the readme for more configuration options
        vim.g.molten_output_win_max_height = 12
    end,
  },
  {
    "numirias/semshi",
    ft = "python",
    build = ":UpdateRemotePlugins",
    init = function()
      -- Configure semshi options
      vim.g.semshi_no_default_builtin_highlight = 1  -- Use your colorscheme highlights
      vim.fn.sign_define("semshi_error", { text = "E", texthl = "ErrorMsg" })
    end,
  },
}
