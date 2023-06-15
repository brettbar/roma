local r_dark = {
  accent = '#E6B450',
  bg = '#0A0E14',
  fg = '#B3B1AD',
  ui = '#4D5566',

  -- tag = '#39BAE6',
  tag = '#FF5454',
  func = '#FFB454',
  -- entity = '#59C2FF',
  entity = "#FF595F",
  string = '#C2D94C',
  regexp = '#95E6CB',
  markup = '#F07178',
  keyword = '#FF8F40',
  special = '#E6B673',
  comment = '#626A73',
  constant = '#FFEE99',
  operator = '#F29668',
  error = '#FF3333',
  lsp_parameter = '#CB9FF8',

  line = '#00010A',
  panel_bg = '#0D1016',
  panel_shadow = '#00010A',
  panel_border = '#000000',
  gutter_normal = '#323945',
  gutter_active = '#464D5E',
  selection_bg = '#273747',
  selection_inactive = '#1B2733',
  selection_border = '#304357',
  guide_active = '#393F4D',
  guide_normal = '#242A35',

  vcs_added = '#91B362',
  vcs_modified = '#6994BF',
  vcs_removed = '#D96C75',

  vcs_added_bg = '#1D2214',
  vcs_removed_bg = '#2D2220',

  fg_idle = '#3E4B59',
  warning = '#FF8F40'
}


function r_dark.terminal_color()
  vim.g.terminal_color_0 = r_dark.bg
  vim.g.terminal_color_1 = r_dark.markup
  vim.g.terminal_color_2 = r_dark.string
  vim.g.terminal_color_3 = r_dark.accent
  vim.g.terminal_color_4 = r_dark.tag
  vim.g.terminal_color_5 = r_dark.constant
  vim.g.terminal_color_6 = r_dark.regexp
  vim.g.terminal_color_7 = r_dark.fg
  vim.g.terminal_color_8 = r_dark.fg_idle
  vim.g.terminal_color_9 = r_dark.error
  vim.g.terminal_color_10 = r_dark.string
  vim.g.terminal_color_11 = r_dark.accent
  vim.g.terminal_color_12 = r_dark.tag
  vim.g.terminal_color_13 = r_dark.constant
  vim.g.terminal_color_14 = r_dark.regexp
  vim.g.terminal_color_15 = r_dark.comment
  vim.g.terminal_color_background = r_dark.bg
  vim.g.terminal_color_foreground = r_dark.fg
end

local syntax = {
  -- Base.
  Normal = { fg = r_dark.fg, bg = r_dark.bg },
  NormalFloat = { bg = r_dark.bg },
  FloatBorder = { fg = r_dark.comment },
  FloatTitle = { fg = r_dark.fg },
  ColorColumn = { bg = r_dark.line },
  Cursor = { fg = r_dark.bg, bg = r_dark.fg },
  CursorColumn = { bg = r_dark.line },
  CursorLine = { bg = r_dark.line },
  CursorLineNr = { fg = r_dark.accent, bg = r_dark.line },
  LineNr = { fg = r_dark.guide_normal },

  Directory = { fg = r_dark.func },
  ErrorMsg = { fg = r_dark.error },
  VertSplit = { fg = r_dark.panel_border, bg = r_dark.bg },
  Folded = { fg = r_dark.fg_idle, bg = r_dark.panel_bg },
  FoldColumn = { bg = r_dark.bg },
  SignColumn = { bg = r_dark.bg },

  MatchParen = { sp = r_dark.func, underline = true },
  ModeMsg = { fg = r_dark.string },
  MoreMsg = { fg = r_dark.string },
  NonText = { fg = r_dark.guide_normal },
  Pmenu = { fg = r_dark.fg, bg = r_dark.selection_inactive },
  PmenuSel = { fg = r_dark.fg, bg = r_dark.selection_inactive, reverse = true },
  Question = { fg = r_dark.string },
  Search = { fg = r_dark.bg, bg = r_dark.constant },
  CurSearch = { fg = r_dark.bg, bg = r_dark.special },
  IncSearch = { fg = r_dark.keyword, bg = r_dark.selection_inactive },
  SpecialKey = { fg = r_dark.selection_inactive },
  SpellCap = { sp = r_dark.tag, undercurl = true },
  SpellLocal = { sp = r_dark.keyword, undercurl = true },
  SpellBad = { sp = r_dark.error, undercurl = true },
  SpellRare = { sp = r_dark.regexp, undercurl = true },
  StatusLine = { fg = r_dark.fg, bg = r_dark.panel_bg },
  StatusLineNC = { fg = r_dark.fg_idle, bg = r_dark.panel_bg },
  WildMenu = { fg = r_dark.fg, bg = r_dark.markup },
  TabLine = { fg = r_dark.comment, bg = r_dark.panel_shadow },
  TabLineFill = { fg = r_dark.fg, bg = r_dark.panel_border },
  TabLineSel = { fg = r_dark.fg, bg = r_dark.bg },
  Title = { fg = r_dark.keyword },
  Visual = { bg = r_dark.selection_inactive },
  WarningMsg = { fg = r_dark.warning },

  Comment = { fg = r_dark.comment, italic = true },
  Constant = { fg = r_dark.constant },
  String = { fg = r_dark.string },
  Identifier = { fg = r_dark.entity },
  Function = { fg = r_dark.func },
  Statement = { fg = r_dark.keyword },
  Operator = { fg = r_dark.operator },
  Exception = { fg = r_dark.markup },
  PreProc = { fg = r_dark.accent },
  Type = { fg = r_dark.entity },
  Structure = { fg = r_dark.special },
  Special = { fg = r_dark.accent },
  Delimiter = { fg = r_dark.special },
  Underlined = { sp = r_dark.tag, underline = true },
  Ignore = { fg = r_dark.fg },
  Error = { fg = r_dark.white, bg = r_dark.error },
  Todo = { fg = r_dark.markup },
  qfLineNr = { fg = r_dark.keyword },
  qfError = { fg = r_dark.error },
  Conceal = { fg = r_dark.comment },
  CursorLineConceal = { fg = r_dark.guide_normal, bg = r_dark.line },

  DiffAdd = { bg = r_dark.vcs_added_bg },
  DiffAdded = { fg = r_dark.vcs_added },
  DiffDelete = { bg = r_dark.vcs_removed_bg },
  DiffRemoved = { fg = r_dark.vcs_removed },
  DiffText = { bg = r_dark.gutter_normal },
  DiffChange = { bg = r_dark.selection_inactive },

  -- LSP.
  DiagnosticError = { fg = r_dark.error },
  DiagnosticWarn = { fg = r_dark.keyword },
  DiagnosticInfo = { fg = r_dark.tag },
  DiagnosticHint = { fg = r_dark.regexp },

  DiagnosticUnderlineError = { sp = r_dark.error, undercurl = true },
  DiagnosticUnderlineWarn = { sp = r_dark.keyword, undercurl = true },
  DiagnosticUnderlineInfo = { sp = r_dark.tag, undercurl = true },
  DiagnosticUnderlineHint = { sp = r_dark.regexp, undercurl = true },

  -- Markdown.
  markdownCode = { fg = r_dark.special },

  -- TreeSitter.
  ['@property'] = { fg = r_dark.tag },
  ['@field'] = { fg = r_dark.tag },
  ['@parameter'] = { fg = r_dark.fg },
  ['@namespace'] = { fg = r_dark.func },
  ['@variable.builtin'] = { fg = r_dark.func },
  ['@text.title'] = { fg = r_dark.keyword },
  ['@type.qualifier'] = { fg = r_dark.keyword },
  ['@storageclass'] = { fg = r_dark.keyword },
  ['@tag'] = { fg = r_dark.keyword },
  ['@tag.attribute'] = { fg = r_dark.entity },
  ['@tag.delimiter'] = { link = 'Delimiter' },
  ['@variable'] = { fg = r_dark.fg },

  ['@lsp.type.namespace'] = { link = '@namespace' },
  ['@lsp.type.type'] = { link = '@type' },
  ['@lsp.type.class'] = { link = '@type' },
  ['@lsp.type.enum'] = { link = '@type' },
  ['@lsp.type.interface'] = { link = '@type' },
  ['@lsp.type.struct'] = { link = '@structure' },
  ['@lsp.type.parameter'] = { fg = r_dark.lsp_parameter },
  ['@lsp.type.field'] = { link = '@field' },
  ['@lsp.type.variable'] = { link = '@variable' },
  ['@lsp.type.property'] = { link = '@property' },
  ['@lsp.type.enumMember'] = { link = '@constant' },
  ['@lsp.type.function'] = { link = '@function' },
  ['@lsp.type.method'] = { link = '@method' },
  ['@lsp.type.macro'] = { link = '@macro' },
  ['@lsp.type.decorator'] = { link = '@function' },
  ['@lsp.mod.constant'] = { link = '@constant' },

  -- Gitsigns.
  GitSignsAddLn = { fg = r_dark.vcs_added },
  GitSignsDeleteLn = { fg = r_dark.vcs_removed },
  GitSignsChange = { fg = r_dark.vcs_modified },

  -- Telescope.
  TelescopePromptBorder = { fg = r_dark.accent },

  -- Cmp.
  CmpItemAbbrMatch = { fg = r_dark.keyword },
  CmpItemAbbrMatchFuzzy = { fg = r_dark.func },
  CmpItemKindText = { fg = r_dark.string },
  CmpItemKindMethod = { fg = r_dark.keyword },
  CmpItemKindFunction = { fg = r_dark.func },
  CmpItemKindConstructor = { fg = r_dark.keyword },
  CmpItemKindField = { fg = r_dark.entity },
  CmpItemKindVariable = { fg = r_dark.tag },
  CmpItemKindClass = { fg = r_dark.entity },
  CmpItemKindInterface = { fg = r_dark.entity },
  CmpItemKindModule = { fg = r_dark.keyword },
  CmpItemKindProperty = { fg = r_dark.keyword },
  CmpItemKindUnit = { fg = r_dark.constant },
  CmpItemKindValue = { fg = r_dark.constant },
  CmpItemKindEnum = { fg = r_dark.entity },
  CmpItemKindKeyword = { fg = r_dark.keyword },
  CmpItemKindSnippet = { fg = r_dark.regexp },
  CmpItemKindColor = { fg = r_dark.special },
  CmpItemKindFile = { fg = r_dark.special },
  CmpItemKindReference = { fg = r_dark.special },
  CmpItemKindFolder = { fg = r_dark.special },
  CmpItemKindEnumMember = { fg = r_dark.constant },
  CmpItemKindConstant = { fg = r_dark.constant },
  CmpItemKindStruct = { fg = r_dark.entity },
  CmpItemKindEvent = { fg = r_dark.tag },
  CmpItemKindOperator = { fg = r_dark.operator },
  CmpItemKindTypeParameter = { fg = r_dark.tag },
  CmpItemMenu = { fg = r_dark.comment },

  -- Word under cursor.
  CursorWord = { bg = r_dark.selection_inactive },
  CursorWord0 = { bg = r_dark.selection_inactive },
  CursorWord1 = { bg = r_dark.selection_inactive },

  -- Noice
  NoiceLspProgressTitle = { fg = r_dark.fg },
  NoiceLspProgressClient = { fg = r_dark.special },

  -- NvimTree.
  NvimTreeGitDirty = { fg = r_dark.accent },
  NvimTreeGitStaged = { fg = r_dark.vcs_modified },
  NvimTreeGitMerge = { fg = r_dark.error },
  NvimTreeGitNew = { fg = r_dark.vcs_added },
  NvimTreeGitDeleted = { fg = r_dark.vcs_removed },

  NvimTreeFolderName = { fg = r_dark.special },
  NvimTreeFolderIcon = { fg = r_dark.accent },
  NvimTreeOpenedFolderName = { fg = r_dark.special },
  NvimTreeRootFolder = { fg = r_dark.keyword },
  NvimTreeSpecialFile = { fg = r_dark.fg },
  NvimTreeExecFile = { fg = r_dark.fg },
  NvimTreeIndentMarker = { fg = r_dark.guide_normal },

  NvimTreeWindowPicker = { fg = r_dark.keyword, bg = r_dark.panel_border, bold = true },

  -- Neo-tree.
  NeoTreeRootName = { fg = r_dark.fg, bold = true },

  -- WhichKey.
  WhichKeyFloat = { bg = r_dark.bg },

  -- Indent blankline.
  IndentBlanklineContextChar = { fg = r_dark.comment },

  -- Neogit.
  NeogitDiffContextHighlight = { bg = r_dark.line },
  NeogitHunkHeader = { fg = r_dark.tag },
  NeogitHunkHeaderHighlight = { fg = r_dark.tag, bg = r_dark.line },
  NeogitDiffAddHighlight = { bg = r_dark.vcs_added_bg },
  NeogitDiffDeleteHighlight = { bg = r_dark.vcs_removed_bg },

  -- Hop.
  HopNextKey = { fg = r_dark.keyword, bold = true, underline = true },
  HopNextKey1 = { fg = r_dark.entity, bold = true, underline = true },
  HopNextKey2 = { fg = r_dark.tag },
  HopUnmatched = { fg = r_dark.comment },

  -- Leap.
  LeapMatch = { fg = r_dark.regexp, underline = true },
  LeapLabelPrimary = { fg = r_dark.bg, bg = r_dark.regexp },
  LeapLabelSecondary = { fg = r_dark.bg, bg = r_dark.entity },
  LeapLabelSelected = { fg = r_dark.bg, bg = r_dark.tag },

  -- LSP Signature.
  LspSignatureActiveParameter = { italic = true },

  -- Notify.
  NotifyERROR = { fg = r_dark.vcs_removed },
  NotifyWARN = { fg = r_dark.func },
  NotifyINFO = { fg = r_dark.vcs_added },
  NotifyDEBUG = { fg = r_dark.comment },
  NotifyTRACE = { fg = r_dark.vcs_modified },
  NotifyERRORTitle = { fg = r_dark.error },
  NotifyWARNTitle = { fg = r_dark.warning },
  NotifyINFOTitle = { fg = r_dark.string },
  NotifyDEBUGTitle = { fg = r_dark.ui },
  NotifyTRACETitle = { fg = r_dark.entity },

  -- Dap.
  NvimDapVirtualText = { fg = r_dark.regexp },

  -- DAP UI.
  DapUIScope = { fg = r_dark.func },
  DapUIType = { fg = r_dark.entity },
  DapUIDecoration = { fg = r_dark.tag },
  DapUIThread = { fg = r_dark.string },
  DapUIStoppedThread = { fg = r_dark.special },
  DapUISource = { fg = r_dark.regexp },
  DapUILineNumber = { fg = r_dark.constant },
  DapUIFloatBorder = { fg = r_dark.panel_border },
  DapUIWatchesEmpty = { fg = r_dark.warning },
  DapUIWatchesValue = { fg = r_dark.string },
  DapUIWatchesError = { fg = r_dark.error },
  DapUIBreakpointsPath = { fg = r_dark.regexp },
  DapUIBreakpointsInfo = { fg = r_dark.constant },
  DapUIBreakpointsCurrentLine = { fg = r_dark.constant, bold = true },

  -- Visual Multi.
  VM_Extend = { bg = r_dark.selection_inactive },
  VM_Cursor = { bg = r_dark.selection_inactive, sp = r_dark.fg, underline = true },
  VM_Insert = { sp = r_dark.fg, underline = true },
  VM_Mono = { fg = r_dark.bg, bg = r_dark.comment },
}


local async_load_plugin

local set_hl = function(tbl)
  for group, conf in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
  r_dark.terminal_color()
  async_load_plugin:close()
end))

function r_dark.colorscheme()
  vim.api.nvim_command("hi clear")

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "roma"

  set_hl(syntax)

  async_load_plugin:send()
end

r_dark.colorscheme()

return r_dark
