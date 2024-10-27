-- 定义高亮颜色
local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- 创建高亮组
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F38BA8", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#FAB387", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#F9E2AF", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#A6E3A1", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#94E2D5", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#89B4FA", bg = "NONE" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#C6A0F6", bg = "NONE" })
end)

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "LazyFile",
    opts = function()
      LazyVim.toggle.map("<leader>ug", {
        name = "Indention Guides",
        get = function()
          return require("ibl.config").get_config(0).enabled
        end,
        set = function(state)
          require("ibl").setup_buffer(0, { enabled = state })
        end,
      })

      return {
        highlight = highlight,
        indent = {
          char = "│",
          tab_char = "│",
        },
        scope = { show_start = false, show_end = false },
        exclude = {
          filetypes = {
            "help",
            "alpha",
            "dashboard",
            "neo-tree",
            "Trouble",
            "trouble",
            "lazy",
            "mason",
            "notify",
            "toggleterm",
            "lazyterm",
          },
        },
      }
    end,
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          highlight = highlight, -- 确保 highlight 配置被传递给 ibl
        },
      })
    end,
  },
}
