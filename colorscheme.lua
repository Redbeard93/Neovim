-- lazyvim原始配置加入个人配置之后的备份版
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
          bg = "NONE",
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = "NONE",
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = "NONE",
        }
        hl.TelescopePromptBorder = {
          bg = "NONE",
          fg = c.bg_dark,
        }
        hl.TelescopePromptTitle = {
          bg = "NONE",
          fg = prompt,
        }
        hl.TelescopePreviewTitle = {
          bg = "NONE",
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = "NONE",
          fg = c.bg_dark,
        }
        hl.Normal = {
          bg = "NONE",
        }
        hl.NormalFloat = {
          bg = "NONE",
        }
        hl.CursorColumn = {
          bg = "NONE",
          fg = "NONE",
          bold = true,
        }
        hl.CursorLine = {
          bg = "NONE",
          fg = "NONE",
          bold = true,
        }
        hl.CursorLineNr = {
          bold = true,
          bg = "NONE",
          fg = "#cebc86",
        }
        hl.LineNrAbove = {
          italic = true,
          bg = "NONE",
          fg = "#9E619E",
        }
        hl.LineNrBelow = {
          italic = true,
          bg = "NONE",
          fg = "#619E9E",
        }
        hl.Whitespace = {
          fg = "#616161",
        }
        hl.NonText = {
          fg = "#616161",
        }
        hl.LspInlayHint = {
          bg = "NONE",
          fg = "#545c7e",
        }
        hl.StatusLine = {
          bg = "NONE",
          fg = "#828bb8",
        }
        hl.StatusLineNC = {
          bg = "NONE",
          fg = "#3b4261",
        }
      end,
    },
  },
}
