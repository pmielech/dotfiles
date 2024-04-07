return {
  -- "craftzdog/solarized-osaka.nvim",
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      styles = {
        --sidebars = "transparent",
        --floats = "transparent",
      },
    }
  end,
}
