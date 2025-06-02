local colors = {
    black = "#0B0C0F",
    less_black = "#111215",
    blackish = "#363A49",
    shadow = "#2f3137",
    red = "#E95678",
    error = "#F43E5C",
    syntax = {
      apricot = '#F09483',
      blueberry = '#063e60',
      cranberry = '#E95678',
      darkcranberry = '#5A0C1E',
      gray = '#BBBBBB',
      lavender = '#B877DB',
      rosebud = '#FAB795',
      tacao = '#FAC29A',
      turquoise = '#25B0BC',
    },
}

vim.api.nvim_set_hl(0, "NonText", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "StatusLineSeparator", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "StatusLineTerm", { fg = colors.blackish, })
vim.api.nvim_set_hl(0, "StatusLineTermNC", { fg = colors.blackish, })

vim.api.nvim_set_hl(0, "FocusedSymbol", { bg = colors.apricot, })
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.shadow, })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.shadow, })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.shadow, })
vim.api.nvim_set_hl(0, "CurSearch", { bg = colors.syntax.cranberry, fg = 'white', })
vim.api.nvim_set_hl(0, "Search", { bg = colors.syntax.darkcranberry, })
vim.api.nvim_set_hl(0, "Label", { fg = colors.syntax.cranberry, })
vim.api.nvim_set_hl(0, "NvimInternalError", { fg = colors.red, bg = colors.error, })

vim.api.nvim_set_hl(0, "Visual", { bg = colors.syntax.blueberry, })
vim.api.nvim_set_hl(0, "Normal", { bg = colors.black, })
vim.api.nvim_set_hl(0, "NormalNC", { bg = colors.less_black, })
