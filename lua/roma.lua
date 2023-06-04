-- Theme: z
-- Author: glepnir
-- License: MIT
-- Source: http://github.com/glepnir/z-nvim
local z = {
  base0 = "#1B2229",
  base1 = "#1c1f24",
  base2 = "#202328",
  base3 = "#23272e",
  base4 = "#3f444a",
  base5 = "#5B6268",
  base6 = "#73797e",
  base7 = "#9ca0a4",
  base8 = "#b1b1b1",

  bg = "#000000",
  bg1 = "#504945",
  bg_popup = "#3E4556",
  bg_highlight = "#2E323C",
  bg_visual = "#b3deef",

  fg = "#a3a2a2",
  fg_alt = "#5B6268",

  black = "#000000",

  red = "#d75f5f",
  dark_red = "#af5f5f",

  light_orange = "#ffb173",
  orange = "#ffa155",

  green = "#baba8c",
  dark_green = "#98be65",

  blue = "#61afef",
  violet = "#CBA6F7",

  maroon = "#875f5f",
  brown = "#af8787",

  grey = "#928374",

  none = "NONE",
}

function z.terminal_color()
  -- "black" slot
  vim.g.terminal_color_0 = z.bg
  -- "red" slot
  vim.g.terminal_color_1 = z.red
  -- "green" slot
  vim.g.terminal_color_2 = z.green
  -- "yellow" slot
  vim.g.terminal_color_3 = z.light_orange
  -- "blue" slot
  vim.g.terminal_color_4 = z.blue
  -- "purple" slot
  vim.g.terminal_color_5 = z.violet
  -- "cyan" slot
  vim.g.terminal_color_6 = z.brown
  -- "white" slot
  vim.g.terminal_color_7 = z.bg1

  -- "bright black" slot
  vim.g.terminal_color_8 = z.brown
  -- "bright red" slot
  vim.g.terminal_color_9 = z.red
  -- "bright green" slot
  vim.g.terminal_color_10 = z.green
  -- "bright yellow" slot
  vim.g.terminal_color_11 = z.light_orange
  -- "bright blue" slot
  vim.g.terminal_color_12 = z.blue
  -- "bright violet" slot
  vim.g.terminal_color_13 = z.violet
  -- "bright cyan" slot
  vim.g.terminal_color_14 = z.brown
  -- "bright white" slot
  vim.g.terminal_color_15 = z.fg
end

local syntax = {
  Normal = { fg = z.fg, bg = z.bg },
  Terminal = { fg = z.fg, bg = z.bg },
  SignColumn = { fg = z.fg, bg = z.bg },
  FoldColumn = { fg = z.fg_alt, bg = z.black },
  VertSplit = { fg = z.black, bg = z.bg },
  Folded = { fg = z.light_orange, bg = z.bg_highlight },
  EndOfBuffer = { fg = z.bg, bg = z.none },
  IncSearch = { fg = z.bg1, bg = z.orange },
  Search = { fg = z.bg, bg = z.orange },
  ColorColumn = { bg = z.bg_highlight },
  Conceal = { fg = z.green, bg = z.none },
  Cursor = { bg = z.none, reverse = true },
  vCursor = { bg = z.none, reverse = true },
  iCursor = { bg = z.none, reverse = true },
  lCursor = { bg = z.none, reverse = true },
  CursorIM = { bg = z.none, reverse = true },
  CursorColumn = { bg = z.bg_highlight },
  CursorLine = { bg = z.bg_highlight },
  LineNr = { fg = z.base4 },
  qfLineNr = { fg = z.orange },
  CursorLineNr = { fg = z.red },
  DiffAdd = { fg = z.black, bg = z.dark_green },
  DiffChange = { fg = z.black, bg = z.light_orange },
  DiffDelete = { fg = z.black, bg = z.red },
  DiffText = { fg = z.black, bg = z.fg },
  Directory = { fg = z.blue, bg = z.none },
  ErrorMsg = { fg = z.red, bg = z.none, bold = true },
  WarningMsg = { fg = z.light_orange, bg = z.none, bold = true },
  ModeMsg = { fg = z.fg, bg = z.none, bold = true },
  MatchParen = { fg = z.red, bg = z.none },
  NonText = { fg = z.bg1 },
  Whitespace = { fg = z.base4 },
  SpecialKey = { fg = z.bg1 },
  Pmenu = { fg = z.fg, bg = z.bg_popup },
  PmenuSel = { fg = z.base0, bg = z.blue },
  PmenuSelBold = { fg = z.base0, bg = z.blue },
  PmenuSbar = { bg = z.base4 },
  PmenuThumb = { fg = z.violet, bg = z.light_green },
  WildMenu = { fg = z.bg1, bg = z.green },
  StatusLine = { fg = z.base8, bg = z.base2 },
  StatusLineNC = { fg = z.grey, bg = z.base2 },
  Question = { fg = z.light_orange },
  NormalFloat = { fg = z.base8, bg = z.bg_highlight },
  Tabline = { fg = z.base6, bg = z.base2 },
  TabLineSel = { fg = z.fg, bg = z.blue },
  SpellBad = { fg = z.red, bg = z.none, undercurl = true },
  SpellCap = { fg = z.blue, bg = z.none, undercurl = true },
  SpellLocal = { fg = z.orange, bg = z.none, undercurl = true },
  SpellRare = { fg = z.violet, bg = z.none, undercurl = true },
  Visual = { fg = z.black, bg = z.bg_visual },
  VisualNOS = { fg = z.black, bg = z.bg_visual },
  QuickFixLine = { fg = z.violet, bold = true },
  Debug = { fg = z.orange },
  debugBreakpoint = { fg = z.bg, bg = z.red },

  Boolean = { fg = z.brown },
  Number = { fg = z.brown },
  Float = { fg = z.brown },
  PreProc = { fg = z.violet },
  PreCondit = { fg = z.violet },
  Include = { fg = z.maroon },
  Define = { fg = z.violet },
  Conditional = { fg = z.maroon },
  Repeat = { fg = z.maroon },
  Keyword = { fg = z.maroon },
  Typedef = { fg = z.dark_red },
  Exception = { fg = z.red },
  Statement = { fg = z.red },
  Error = { fg = z.red },
  StorageClass = { fg = z.orange },
  Tag = { fg = z.orange },
  Label = { fg = z.orange },
  Structure = { fg = z.orange },
  Operator = { fg = z.grey },
  Title = { fg = z.orange, bold = true },
  Special = { fg = z.red },
  SpecialChar = { fg = z.maroon },
  Type = { fg = z.dark_red },
  Function = { fg = z.dark_red },
  String = { fg = z.green },
  Constant = { fg = z.brown },
  Character = { fg = z.green },
  Macro = { fg = z.light_orange },
  Identifier = { fg = z.fg },

  Comment = { fg = z.base6, italic = true },
  SpecialComment = { fg = z.grey },
  Todo = { fg = z.violet },
  Delimiter = { fg = z.fg },
  Ignore = { fg = z.grey },
  Underlined = { underline = true },

  DashboardShortCut = { fg = z.maroon },
  DashboardHeader = { fg = z.orange },
  DashboardCenter = { fg = z.dark_red },
  DashboardCenterIcon = { fg = z.blue },
  DashboardFooter = { fg = z.light_orange, bold = true },
}

local plugin_syntax = {
  ["@function"] = { fg = z.red },
  ["@method"] = { fg = z.red },
  ["@keyword.function"] = { fg = z.red },
  ["@property"] = { fg = z.fg },
  ["@type"] = { fg = z.dark_red },
  ["@variable"] = { fg = z.fg },
  ["@punctuation.bracket"] = { fg = z.grey },

  vimCommentTitle = { fg = z.grey, bold = true },
  vimLet = { fg = z.orange },
  vimVar = { fg = z.orange },
  vimFunction = { fg = z.red },
  vimIsCommand = { fg = z.fg },
  vimCommand = { fg = z.blue },
  vimNotFunc = { fg = z.violet, bold = true },
  vimUserFunc = { fg = z.dark_red, bold = true },
  vimFuncName = { fg = z.dark_red, bold = true },

  diffAdded = { fg = z.dark_green },
  diffRemoved = { fg = z.red },
  diffChanged = { fg = z.blue },
  diffOldFile = { fg = z.light_orange },
  diffNewFile = { fg = z.orange },
  diffFile = { fg = z.orange },
  diffLine = { fg = z.grey },
  diffIndexLine = { fg = z.violet },

  gitcommitSummary = { fg = z.red },
  gitcommitUntracked = { fg = z.grey },
  gitcommitDiscarded = { fg = z.grey },
  gitcommitSelected = { fg = z.grey },
  gitcommitUnmerged = { fg = z.grey },
  gitcommitOnBranch = { fg = z.grey },
  gitcommitArrow = { fg = z.grey },
  gitcommitFile = { fg = z.dark_green },

  VistaBracket = { fg = z.grey },
  VistaChildrenNr = { fg = z.orange },
  VistaKind = { fg = z.violet },
  VistaScope = { fg = z.red },
  VistaScopeKind = { fg = z.blue },
  VistaTag = { fg = z.maroon, bold = true },
  VistaPrefix = { fg = z.grey },
  VistaColon = { fg = z.maroon },
  VistaIcon = { fg = z.light_orange },
  VistaLineNr = { fg = z.fg },

  GitGutterAdd = { fg = z.dark_green },
  GitGutterChange = { fg = z.blue },
  GitGutterDelete = { fg = z.red },
  GitGutterChangeDelete = { fg = z.violet },

  GitSignsAdd = { fg = z.dark_green },
  GitSignsChange = { fg = z.blue },
  GitSignsDelete = { fg = z.red },
  GitSignsAddNr = { fg = z.dark_green },
  GitSignsChangeNr = { fg = z.blue },
  GitSignsDeleteNr = { fg = z.red },
  GitSignsAddLn = { bg = z.bg_popup },
  GitSignsChangeLn = { bg = z.bg_highlight },
  GitSignsDeleteLn = { bg = z.bg1 },

  SignifySignAdd = { fg = z.dark_green },
  SignifySignChange = { fg = z.blue },
  SignifySignDelete = { fg = z.red },

  dbui_tables = { fg = z.blue },

  CursorWord = { bg = z.base4, underline = true },

  NvimTreeFolderName = { fg = z.blue },
  NvimTreeRootFolder = { fg = z.red, bold = true },
  NvimTreeSpecialFile = { fg = z.fg, bg = z.none },
  NvimTreeGitDirty = { fg = z.red },

  TelescopeBorder = { fg = z.dark_red },
  TelescopePromptBorder = { fg = z.blue },
  TelescopeMatching = { fg = z.dark_red },
  TelescopeSelection = { fg = z.light_orange, bg = z.bg_highlight, bold = true },
  TelescopeSelectionCaret = { fg = z.light_orange },
  TelescopeMultiSelection = { fg = z.dark_red },

  -- nvim v0.6.0+
  DiagnosticSignError = { fg = z.red },
  DiagnosticSignWarn = { fg = z.light_orange },
  DiagnosticSignInfo = { fg = z.blue },
  DiagnosticSignHint = { fg = z.orange },

  DiagnosticError = { fg = z.red },
  DiagnosticWarn = { fg = z.light_orange },
  DiagnosticInfo = { fg = z.blue },
  DiagnosticHint = { fg = z.orange },

  LspReferenceRead = { bg = z.bg_highlight, bold = true },
  LspReferenceText = { bg = z.bg_highlight, bold = true },
  LspReferenceWrite = { bg = z.bg_highlight, bold = true },

  DiagnosticVirtualTextError = { fg = z.red },
  DiagnosticVirtualTextWarn = { fg = z.light_orange },
  DiagnosticVirtualTextInfo = { fg = z.blue },
  DiagnosticVirtualTextHint = { fg = z.orange },

  DiagnosticUnderlineError = { undercurl = true, sp = z.red },
  DiagnosticUnderlineWarn = { undercurl = true, sp = z.light_orange },
  DiagnosticUnderlineInfo = { undercurl = true, sp = z.blue },
  DiagnosticUnderlineHint = { undercurl = true, sp = z.orange },

  -- nvim-cmp
  CmpItemAbbr = { fg = z.fg },
  CmpItemAbbrMatch = { fg = "#A6E22E" },
  CmpItemMenu = { fg = z.violet },
  CmpItemKindVariable = { fg = z.fg },
  CmpItemKindFiled = { fg = z.maroon },
  CmpItemKindFunction = { fg = z.dark_red },
  CmpItemKindClass = { fg = z.orange },
  CmpItemKindMethod = { fg = z.dark_red },
  CmpItemKindKeyWord = { fg = z.red },
  CmpItemKindText = { fg = z.light_green },
  CmpItemKindModule = { fg = z.orange },

  -- Neogit
  NeogitDiffAddHighlight = { fg = z.green },
  NeogitDiffDeleteHighlight = { fg = z.red },
  NeogitDiffContextHighlight = { fg = z.blue },
  NeogitHunkHeader = { fg = z.fg },
  NeogitHunkHeaderHighlight = { fg = z.red },
}

local async_load_plugin

local set_hl = function(tbl)
  for group, conf in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
  z.terminal_color()
  set_hl(plugin_syntax)
  async_load_plugin:close()
end))

function z.colorscheme()
  vim.api.nvim_command("hi clear")

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "roma"
  set_hl(syntax)
  async_load_plugin:send()
end

z.colorscheme()

return z
