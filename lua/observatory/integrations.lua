-- Highlight groups for other plugins

local M = {}

M.registry = {}

---@param name string
---@param fn fun(c: table, o: table): table<string, table>
local function add(name, fn)
  M.registry[name] = fn
end

-- mini.nvim
add("mini", function(c, o)
  local g = {
    MiniAnimateCursor = { reverse = true, nocombine = true },

    MiniClueDescGroup = { fg = c.kw, bg = c.bg_float },
    MiniClueNextKey = { fg = c.func, bg = c.bg_float, bold = o.bold },
    MiniClueNextKeyWithPostkeys = { fg = c.macro, bg = c.bg_float },
    MiniClueSeparator = { fg = c.punct, bg = c.bg_float },

    -- MiniCursorwordCurrent links here, and the word under the cursor is not a
    -- special case of itself, so it is left alone.
    MiniCursorword = { bg = c.bg_sel },

    MiniDepsPlaceholder = { fg = c.comment },
    MiniDepsTitleError = { fg = c.bg, bg = c.err, bold = o.bold },
    MiniDepsTitleSame = { fg = c.bg, bg = c.info, bold = o.bold },
    MiniDepsTitleUpdate = { fg = c.bg, bg = c.ok, bold = o.bold },

    MiniFilesCursorLine = { bg = c.bg_sel },
    MiniFilesFile = { fg = c.text },
    MiniFilesTitle = { fg = c.comment, bg = c.bg_float },

    MiniHipatternsFixme = { fg = c.bg, bg = c.err, bold = o.bold },
    MiniHipatternsHack = { fg = c.bg, bg = c.warn, bold = o.bold },
    MiniHipatternsNote = { fg = c.bg, bg = c.hint, bold = o.bold },
    MiniHipatternsTodo = { fg = c.bg, bg = c.info, bold = o.bold },

    MiniIndentscopePrefix = { nocombine = true },
    MiniIndentscopeSymbol = { fg = c.punct, nocombine = true },

    MiniJump = { fg = c.bg, bg = c.cursearch, bold = o.bold },
    MiniJump2dDim = { fg = c.comment, nocombine = true },
    MiniJump2dSpot = { fg = c.err, bold = o.bold, nocombine = true },
    MiniJump2dSpotAhead = { fg = c.hint, bg = c.bg_float, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.warn, bold = o.bold, nocombine = true },

    MiniMapNormal = { fg = c.comment, bg = c.bg_float },
    MiniMapSymbolCount = { fg = c.num },
    MiniMapSymbolLine = { fg = c.func },
    MiniMapSymbolView = { fg = c.border },

    MiniOperatorsExchangeFrom = { bg = c.bg_hl },

    MiniPickBorderText = { fg = c.title, bg = c.bg_float },
    MiniPickIconDirectory = { fg = c.dir, bg = c.bg_float },
    MiniPickMatchCurrent = { bg = c.bg_sel },
    MiniPickMatchMarked = { bg = c.diff_change },
    MiniPickMatchRanges = { fg = c.match, bg = c.bg_float, bold = o.bold },
    MiniPickPreviewLine = { bg = c.bg_sel },
    MiniPickPreviewRegion = { bg = c.bg_hl },
    MiniPickPrompt = { fg = c.func, bg = c.bg_float, bold = o.bold },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = c.comment, italic = o.italic },
    MiniStarterItem = { fg = c.text },
    MiniStarterQuery = { fg = c.match, bold = o.bold },
    MiniStarterSection = { fg = c.kw, bold = o.bold },

    MiniStatuslineFilename = { fg = c.text, bg = c.bg_alt },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.warn, bold = o.bold },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.ok, bold = o.bold },
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.accent, bold = o.bold },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.hint, bold = o.bold },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.err, bold = o.bold },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.kw, bold = o.bold },

    MiniSurround = { fg = c.bg, bg = c.warn },

    MiniTablineCurrent = { fg = c.func, bg = c.bg_alt, bold = o.bold },
    MiniTablineFill = { bg = c.bg },
    MiniTablineModifiedCurrent = { fg = c.warn, bg = c.bg_alt, bold = o.bold },
    MiniTablineModifiedHidden = { fg = c.comment, bg = c.bg_alt, italic = o.italic },
    MiniTablineModifiedVisible = { fg = c.warn, bg = c.bg_alt },
    MiniTablineTabpagesection = { fg = c.bg, bg = c.hint, bold = o.bold },
    MiniTablineVisible = { fg = c.dim, bg = c.bg_alt },

    MiniTestEmphasis = { bold = o.bold },
    MiniTestFail = { fg = c.err, bold = o.bold },
    MiniTestPass = { fg = c.ok, bold = o.bold },

    MiniTrailspace = { bg = c.err },
  }
  -- mini.icons keeps a fixed set of nine named colors, override the non-linked ones.
  local icons = {
    Azure = c.info,
    Blue = c.mod,
    Grey = c.dim,
    Purple = c.kw,
  }
  for name, hex in pairs(icons) do
    g["MiniIcons" .. name] = { fg = hex }
  end
  return g
end)

-- blink.cmp
add("blink", function(c, o)
  return {
    BlinkCmpDocBorder = { fg = c.border, bg = c.bg_float },
    BlinkCmpDocSeparator = { fg = c.border, bg = c.bg_float },
    BlinkCmpGhostText = { fg = c.comment, italic = o.italic },
    BlinkCmpKind = { fg = c.typ },
    BlinkCmpLabel = { fg = c.text },
    BlinkCmpLabelDeprecated = { fg = c.comment, strikethrough = true },
    BlinkCmpLabelDescription = { fg = c.comment },
    BlinkCmpLabelDetail = { fg = c.dim },
    BlinkCmpLabelMatch = { fg = c.match, bold = o.bold },
    BlinkCmpMenuBorder = { fg = c.border, bg = c.bg_float },
    BlinkCmpMenuSelection = { bg = c.bg_hl, bold = o.bold },
    BlinkCmpScrollBarGutter = { bg = c.bg_alt },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.macro, bold = o.bold },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg = c.bg_float },
    BlinkCmpSource = { fg = c.comment },
    BlinkCmpKindColor = { fg = c.num },
    BlinkCmpKindConstant = { fg = c.num },
    BlinkCmpKindEnumMember = { fg = c.prop },
    BlinkCmpKindEvent = { fg = c.macro },
    BlinkCmpKindField = { fg = c.prop },
    BlinkCmpKindFile = { fg = c.dir },
    BlinkCmpKindFolder = { fg = c.dir },
    BlinkCmpKindFunction = { fg = c.func },
    BlinkCmpKindKeyword = { fg = c.kw },
    BlinkCmpKindMethod = { fg = c.func },
    BlinkCmpKindModule = { fg = c.mod },
    BlinkCmpKindOperator = { fg = c.op },
    BlinkCmpKindProperty = { fg = c.prop },
    BlinkCmpKindReference = { fg = c.macro },
    BlinkCmpKindSnippet = { fg = c.esc },
    BlinkCmpKindText = { fg = c.str },
    BlinkCmpKindUnit = { fg = c.num },
    BlinkCmpKindValue = { fg = c.num },
    BlinkCmpKindVariable = { fg = c.text },
  }
end)

-- nvim-cmp
add("cmp", function(c, o)
  local g = {
    CmpItemAbbrDeprecated = { fg = c.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.match, bold = o.bold },
    CmpItemAbbrMatchFuzzy = { fg = c.match },
    CmpItemMenu = { fg = c.comment },
    CmpGhostText = { fg = c.comment, italic = o.italic },
  }
  local kinds = {
    Class = c.typ,
    Color = c.num,
    Constant = c.num,
    Constructor = c.typ,
    Enum = c.typ,
    EnumMember = c.prop,
    Event = c.macro,
    Field = c.prop,
    File = c.dir,
    Folder = c.dir,
    Function = c.func,
    Interface = c.typ,
    Keyword = c.kw,
    Method = c.func,
    Module = c.mod,
    Operator = c.op,
    Property = c.prop,
    Reference = c.macro,
    Struct = c.typ,
    Text = c.str,
    TypeParameter = c.typ,
    Unit = c.num,
    Value = c.num,
    Variable = c.text,
  }
  for kind, hex in pairs(kinds) do
    g["CmpItemKind" .. kind] = { fg = hex }
  end
  return g
end)

-- gitsigns
add("gitsigns", function(c, o)
  return {
    GitSignsChangedelete = { fg = c.warn },
    GitSignsUntracked = { fg = c.hint },
    GitSignsDeleteLn = { bg = c.diff_delete },
    GitSignsAddInline = { bg = c.diff_text },
    GitSignsChangeInline = { bg = c.diff_text },
    GitSignsDeleteInline = { bg = c.diff_delete },
    GitSignsCurrentLineBlame = { fg = c.lnr, italic = o.italic },
  }
end)

-- diffview
add("diffview", function(c, o)
  return {
    DiffviewCursorLine = { bg = c.bg_sel },
    DiffviewDim1 = { fg = c.comment },
    DiffviewFilePanelCounter = { fg = c.num, bold = o.bold },
    DiffviewFilePanelDeletions = { fg = c.err },
    DiffviewFilePanelFileName = { fg = c.text },
    DiffviewFilePanelInsertions = { fg = c.ok },
    DiffviewFilePanelPath = { fg = c.comment },
    DiffviewFilePanelRootPath = { fg = c.dir, bold = o.bold },
    DiffviewFilePanelSelected = { fg = c.func, bold = o.bold },
    DiffviewFilePanelTitle = { fg = c.title, bold = o.bold },
    DiffviewFolderName = { fg = c.dir },
    DiffviewFolderSign = { fg = c.punct },
    DiffviewReference = { fg = c.macro },
    DiffviewSecondary = { fg = c.mod },
    DiffviewStatusAdded = { fg = c.ok },
    DiffviewStatusDeleted = { fg = c.err },
    DiffviewStatusIgnored = { fg = c.comment },
    DiffviewStatusModified = { fg = c.info },
    DiffviewStatusRenamed = { fg = c.warn },
    DiffviewStatusUntracked = { fg = c.hint },
  }
end)

-- todo-comments
add("todo_comments", function(c, o)
  local kinds = {
    FIX = c.err,
    TODO = c.info,
    HACK = c.warn,
    WARN = c.warn,
    PERF = c.macro,
    NOTE = c.hint,
    TEST = c.typ,
  }
  local g = {}
  for kind, hex in pairs(kinds) do
    g["TodoFg" .. kind] = { fg = hex }
    g["TodoBg" .. kind] = { fg = c.bg, bg = hex, bold = o.bold }
    g["TodoSign" .. kind] = { fg = hex }
  end
  return g
end)

-- indent-blankline
add("indent_blankline", function(c)
  return {
    IblIndent = { fg = c.nontext, nocombine = true },
    IblWhitespace = { fg = c.nontext, nocombine = true },
    IblScope = { fg = c.punct, nocombine = true },
  }
end)

-- aerial
add("aerial", function(c, o)
  local g = {
    AerialGuide = { fg = c.nontext },
    AerialLineNC = { bg = c.bg_alt },
    AerialNormal = { fg = c.text },
  }
  local kinds = {
    Array = c.num,
    Boolean = c.num,
    Class = c.typ,
    Constant = c.num,
    Constructor = c.typ,
    Enum = c.typ,
    EnumMember = c.prop,
    Event = c.macro,
    Field = c.prop,
    File = c.dir,
    Function = c.func,
    Interface = c.typ,
    Key = c.prop,
    Method = c.func,
    Module = c.mod,
    Namespace = c.mod,
    Null = c.num,
    Number = c.num,
    Object = c.typ,
    Operator = c.op,
    Package = c.mod,
    Property = c.prop,
    String = c.str,
    Struct = c.typ,
    TypeParameter = c.typ,
  }
  -- Aerial links every symbol name to AerialNormal, so plain text, which is why
  -- each name gets its role color here. Variable is the one kind that wants
  -- plain text too, so it is absent from the table above and keeps aerial's link.
  --
  -- The icons it links individually, and five of those links already land where
  -- this table would put them: ClassIcon, EnumIcon, InterfaceIcon and StructIcon
  -- on Type, ConstantIcon on Constant. Those five are left to aerial.
  local icon_linked = {
    Class = true,
    Constant = true,
    Enum = true,
    Interface = true,
    Struct = true,
  }
  for kind, hex in pairs(kinds) do
    g["Aerial" .. kind] = { fg = hex }
    if not icon_linked[kind] then
      g["Aerial" .. kind .. "Icon"] = { fg = hex }
    end
  end
  return g
end)

-- nvim-dap
add("dap", function(c, o)
  return {
    DapBreakpoint = { fg = c.err },
    DapBreakpointCondition = { fg = c.warn },
    DapBreakpointRejected = { fg = c.comment },
    DapLogPoint = { fg = c.info },
    -- The stopped line is debugPC, not a Dap group: nvim-dap places its sign with
    -- `linehl = "debugPC"`, which the core map paints.
    DapStopped = { fg = c.ok },

    DapUIBreakpointsCurrentLine = { fg = c.warn, bold = o.bold },
    DapUIBreakpointsDisabledLine = { fg = c.comment },
    DapUIBreakpointsInfo = { fg = c.info },
    DapUIBreakpointsLine = { fg = c.num },
    DapUIBreakpointsPath = { fg = c.dir },
    DapUICurrentFrameName = { fg = c.func, bold = o.bold },
    DapUIDecoration = { fg = c.border },
    DapUIEndofBuffer = { fg = c.bg },
    DapUIFloatBorder = { fg = c.border, bg = c.bg_float },
    DapUIFrameName = { fg = c.text },
    DapUILineNumber = { fg = c.num },
    DapUIModifiedValue = { fg = c.warn, bold = o.bold },
    DapUINormal = { fg = c.text, bg = c.bg },
    DapUIPlayPause = { fg = c.ok },
    DapUIRestart = { fg = c.hint },
    DapUIScope = { fg = c.kw },
    DapUISource = { fg = c.mod },
    DapUIStepBack = { fg = c.info },
    DapUIStepInto = { fg = c.info },
    DapUIStepOut = { fg = c.info },
    DapUIStepOver = { fg = c.info },
    DapUIStop = { fg = c.err },
    DapUIStoppedThread = { fg = c.warn },
    DapUIThread = { fg = c.ok },
    DapUIType = { fg = c.typ },
    DapUIUnavailable = { fg = c.comment },
    DapUIValue = { fg = c.text },
    DapUIVariable = { fg = c.prop },
    DapUIWatchesEmpty = { fg = c.comment },
    DapUIWatchesError = { fg = c.err },
    DapUIWatchesValue = { fg = c.ok },
    DapUIWinSelect = { fg = c.accent, bold = o.bold },
  }
end)

-- lazy.nvim
add("lazy", function(c, o)
  return {
    LazyButton = { fg = c.text, bg = c.bg_alt },
    LazyButtonActive = { fg = c.bg, bg = c.accent, bold = o.bold },
    LazyCommit = { fg = c.num },
    LazyCommitIssue = { fg = c.macro },
    LazyCommitScope = { fg = c.mod, italic = o.italic },
    LazyCommitType = { fg = c.kw, bold = o.bold },
    LazyDimmed = { fg = c.comment },
    LazyDir = { fg = c.dir },
    LazyH2 = { fg = c.title, bold = o.bold },
    LazyLocal = { fg = c.warn },
    LazyNoCond = { fg = c.err },
    LazyProgressDone = { fg = c.ok, bold = o.bold },
    LazyProgressTodo = { fg = c.border, bold = o.bold },
    LazyProp = { fg = c.prop },
    LazyReasonCmd = { fg = c.func },
    LazyReasonFt = { fg = c.typ },
    LazyReasonImport = { fg = c.macro },
    LazyReasonKeys = { fg = c.hint },
    LazyReasonPlugin = { fg = c.mod },
    LazyReasonRuntime = { fg = c.op },
    LazyReasonStart = { fg = c.ok },
    LazySpecial = { fg = c.esc },
    LazyTaskOutput = { fg = c.dim },
    LazyUrl = { fg = c.str, underline = true },
    LazyValue = { fg = c.num },
  }
end)

-- mason.nvim
add("mason", function(c, o)
  return {
    MasonError = { fg = c.err },
    MasonHeader = { fg = c.bg, bg = c.accent, bold = o.bold },
    MasonHeaderSecondary = { fg = c.bg, bg = c.kw, bold = o.bold },
    MasonHeading = { fg = c.title, bold = o.bold },
    MasonHighlight = { fg = c.func },
    MasonHighlightBlock = { fg = c.bg, bg = c.func },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.func, bold = o.bold },
    MasonHighlightBlockBoldSecondary = { fg = c.bg, bg = c.kw, bold = o.bold },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.kw },
    MasonHighlightSecondary = { fg = c.kw },
    MasonLink = { fg = c.str, underline = true },
    MasonMuted = { fg = c.comment },
    MasonMutedBlock = { fg = c.comment, bg = c.bg_alt },
    MasonMutedBlockBold = { fg = c.comment, bg = c.bg_alt, bold = o.bold },
    MasonWarning = { fg = c.warn },
  }
end)

-- telescope
add("telescope", function(c, o)
  return {
    TelescopeBorder = { fg = c.border, bg = c.bg_float },
    TelescopeMatching = { fg = c.match, bold = o.bold },
    TelescopeMultiIcon = { fg = c.macro },
    TelescopeMultiSelection = { fg = c.warn },
    TelescopeNormal = { fg = c.text, bg = c.bg_float },
    TelescopePreviewTitle = { fg = c.bg, bg = c.ok, bold = o.bold },
    TelescopePromptCounter = { fg = c.num },
    TelescopePromptPrefix = { fg = c.func },
    TelescopePromptTitle = { fg = c.bg, bg = c.accent, bold = o.bold },
    TelescopeResultsComment = { fg = c.comment },
    TelescopeResultsTitle = { fg = c.bg, bg = c.kw, bold = o.bold },
    TelescopeSelection = { bg = c.bg_sel, bold = o.bold },
    TelescopeSelectionCaret = { fg = c.accent, bg = c.bg_sel },
    TelescopeTitle = { fg = c.title, bold = o.bold },
  }
end)

-- trouble
add("trouble", function(c, o)
  return {
    TroubleCount = { fg = c.num, bold = o.bold },
    TroubleIndent = { fg = c.nontext },
    TroubleNormal = { fg = c.text, bg = c.bg },
    TroubleNormalNC = { fg = c.text, bg = c.bg },
    TroublePos = { fg = c.num },
    TroublePreview = { bg = c.bg_hl },
    TroubleSource = { fg = c.comment },
    TroubleText = { fg = c.text },
  }
end)

-- which-key
add("which_key", function(c, o)
  return {
    WhichKeyGroup = { fg = c.kw },
    WhichKeyIcon = { fg = c.hint },
    WhichKeyIconAzure = { fg = c.info },
    WhichKeyIconBlue = { fg = c.mod },
    WhichKeyIconGrey = { fg = c.dim },
    WhichKeyIconPurple = { fg = c.kw },
    WhichKeySeparator = { fg = c.punct },
    WhichKeyValue = { fg = c.comment },
  }
end)

-- flash
add("flash", function(c, o)
  return {
    FlashBackdrop = { fg = c.comment },
    FlashCurrent = { fg = c.bg, bg = c.cursearch, bold = o.bold },
    FlashCursor = { reverse = true },
    FlashLabel = { fg = c.bg, bg = c.err, bold = o.bold },
    FlashPrompt = { fg = c.text, bg = c.bg_float },
    FlashPromptIcon = { fg = c.warn },
  }
end)

-- snacks
add("snacks", function(c, o)
  return {
    SnacksBackdrop = { bg = c.bg },
    SnacksDashboardDesc = { fg = c.text },
    SnacksDashboardDir = { fg = c.comment },
    SnacksDashboardFooter = { fg = c.comment, italic = o.italic },
    SnacksDashboardHeader = { fg = c.title, bold = o.bold },
    SnacksDashboardIcon = { fg = c.warn },
    SnacksDashboardKey = { fg = c.macro },
    SnacksDashboardSpecial = { fg = c.esc },
    SnacksDashboardTitle = { fg = c.title, bold = o.bold },
    SnacksIndent = { fg = c.nontext },
    SnacksIndentScope = { fg = c.punct },
    SnacksNormal = { fg = c.text, bg = c.bg_float },
    SnacksNotifierDebug = { fg = c.comment, bg = c.bg_float },
    SnacksNotifierError = { fg = c.err, bg = c.bg_float },
    SnacksNotifierInfo = { fg = c.info, bg = c.bg_float },
    SnacksNotifierTitleError = { fg = c.err, bold = o.bold },
    SnacksNotifierTitleInfo = { fg = c.info, bold = o.bold },
    SnacksNotifierTitleWarn = { fg = c.warn, bold = o.bold },
    SnacksNotifierWarn = { fg = c.warn, bg = c.bg_float },
    SnacksPickerBorder = { fg = c.border, bg = c.bg_float },
    SnacksPickerDir = { fg = c.comment },
    SnacksPickerMatch = { fg = c.match, bold = o.bold },
    SnacksPickerPrompt = { fg = c.func, bold = o.bold },
    SnacksPickerTitle = { fg = c.title, bg = c.bg_float, bold = o.bold },
    SnacksWinBar = { fg = c.title, bg = c.bg_alt, bold = o.bold },
  }
end)

-- noice
add("noice", function(c, o)
  return {
    NoiceCmdline = { fg = c.text, bg = c.bg_float },
    NoiceCmdlineIcon = { fg = c.func },
    NoiceCmdlinePopup = { fg = c.text, bg = c.bg_float },
    NoiceCmdlinePopupBorder = { fg = c.border, bg = c.bg_float },
    NoiceCmdlinePopupTitle = { fg = c.title, bold = o.bold },
    NoiceCmdlinePrompt = { fg = c.kw },
    NoiceConfirm = { fg = c.text, bg = c.bg_float },
    NoiceConfirmBorder = { fg = c.border, bg = c.bg_float },
    NoiceLspProgressClient = { fg = c.mod },
    NoiceLspProgressSpinner = { fg = c.hint },
    NoiceLspProgressTitle = { fg = c.title },
    NoiceMini = { fg = c.dim },
    NoiceVirtualText = { fg = c.hint },
  }
end)

-- nvim-notify
add("notify", function(c, o)
  local levels = {
    ERROR = c.err,
    WARN = c.warn,
    INFO = c.info,
    DEBUG = c.comment,
    TRACE = c.hint,
  }
  local g = {}
  for level, hex in pairs(levels) do
    g["Notify" .. level .. "Border"] = { fg = hex, bg = c.bg_float }
    g["Notify" .. level .. "Icon"] = { fg = hex }
    g["Notify" .. level .. "Title"] = { fg = hex, bold = o.bold }
    g["Notify" .. level .. "Body"] = { fg = c.text, bg = c.bg_float }
  end
  return g
end)

-- file explorers
add("neo_tree", function(c, o)
  return {
    NeoTreeCursorLine = { bg = c.bg_sel },
    NeoTreeDimText = { fg = c.comment },
    NeoTreeDirectoryIcon = { fg = c.dir },
    NeoTreeDirectoryName = { fg = c.dir },
    NeoTreeExpander = { fg = c.punct },
    NeoTreeFileIcon = { fg = c.text },
    NeoTreeFileName = { fg = c.text },
    NeoTreeFileNameOpened = { fg = c.func, bold = o.bold },
    NeoTreeFloatBorder = { fg = c.border, bg = c.bg_float },
    NeoTreeFloatTitle = { fg = c.title, bg = c.bg_float, bold = o.bold },
    NeoTreeGitAdded = { fg = c.ok },
    NeoTreeGitConflict = { fg = c.err, bold = o.bold },
    NeoTreeGitDeleted = { fg = c.err },
    NeoTreeGitIgnored = { fg = c.comment },
    NeoTreeGitModified = { fg = c.info },
    NeoTreeGitStaged = { fg = c.ok },
    NeoTreeGitUnstaged = { fg = c.warn },
    NeoTreeGitUntracked = { fg = c.hint },
    NeoTreeIndentMarker = { fg = c.nontext },
    NeoTreeMessage = { fg = c.comment, italic = o.italic },
    NeoTreeModified = { fg = c.warn },
    NeoTreeNormal = { fg = c.text, bg = c.bg },
    NeoTreeNormalNC = { fg = c.text, bg = c.bg },
    NeoTreeRootName = { fg = c.title, bold = o.bold },
    NeoTreeSymbolicLinkTarget = { fg = c.macro },
    NeoTreeTabActive = { fg = c.func, bg = c.bg_alt, bold = o.bold },
    NeoTreeTabInactive = { fg = c.comment, bg = c.bg },
    NeoTreeTitleBar = { fg = c.bg, bg = c.accent, bold = o.bold },
    NeoTreeWinSeparator = { fg = c.border },
  }
end)

add("nvim_tree", function(c, o)
  return {
    NvimTreeCursorLine = { bg = c.bg_sel },
    NvimTreeEmptyFolderName = { fg = c.comment },
    NvimTreeExecFile = { fg = c.ok, bold = o.bold },
    NvimTreeFolderIcon = { fg = c.dir },
    NvimTreeFolderName = { fg = c.dir },
    NvimTreeGitDeleted = { fg = c.err },
    NvimTreeGitDirty = { fg = c.warn },
    NvimTreeGitMerge = { fg = c.err, bold = o.bold },
    NvimTreeGitNew = { fg = c.ok },
    NvimTreeGitRenamed = { fg = c.warn },
    NvimTreeGitStaged = { fg = c.ok },
    NvimTreeImageFile = { fg = c.esc },
    NvimTreeIndentMarker = { fg = c.nontext },
    NvimTreeLiveFilterPrefix = { fg = c.kw, bold = o.bold },
    NvimTreeLiveFilterValue = { fg = c.text },
    NvimTreeSpecialFile = { fg = c.macro },
    NvimTreeSymlink = { fg = c.esc },
    NvimTreeWindowPicker = { fg = c.bg, bg = c.accent, bold = o.bold },
  }
end)

-- Others
add("treesitter_context", function(c)
  return {
    TreesitterContext = { bg = c.bg_alt },
    TreesitterContextBottom = { sp = c.border, underline = true },
    TreesitterContextLineNumber = { fg = c.lnr, bg = c.bg_alt },
    TreesitterContextSeparator = { fg = c.border },
  }
end)

add("illuminate", function(c)
  return {
    IlluminatedWordRead = { bg = c.bg_sel },
    IlluminatedWordText = { bg = c.bg_sel },
    IlluminatedWordWrite = { bg = c.bg_hl },
  }
end)

add("rainbow_delimiters", function(c)
  return {
    RainbowDelimiterRed = { fg = c.kw },
    RainbowDelimiterYellow = { fg = c.num },
    RainbowDelimiterBlue = { fg = c.mod },
    RainbowDelimiterOrange = { fg = c.macro },
    RainbowDelimiterGreen = { fg = c.str },
    RainbowDelimiterViolet = { fg = c.typ },
    RainbowDelimiterCyan = { fg = c.func },
  }
end)

add("window_picker", function(c, o)
  return {
    WindowPickerStatusLine = { fg = c.bg, bg = c.accent, bold = o.bold },
    WindowPickerStatusLineNC = { fg = c.bg, bg = c.border, bold = o.bold },
    WindowPickerWinBar = { fg = c.bg, bg = c.accent, bold = o.bold },
    WindowPickerWinBarNC = { fg = c.bg, bg = c.border, bold = o.bold },
  }
end)

add("navic", function(c)
  local g = {
    NavicSeparator = { fg = c.punct },
    NavicText = { fg = c.text },
  }
  local kinds = {
    Array = c.num,
    Boolean = c.num,
    Class = c.typ,
    Constant = c.num,
    Constructor = c.typ,
    Enum = c.typ,
    EnumMember = c.prop,
    Event = c.macro,
    Field = c.prop,
    File = c.dir,
    Function = c.func,
    Interface = c.typ,
    Key = c.prop,
    Method = c.func,
    Module = c.mod,
    Namespace = c.mod,
    Null = c.num,
    Number = c.num,
    Object = c.typ,
    Operator = c.op,
    Package = c.mod,
    Property = c.prop,
    String = c.str,
    Struct = c.typ,
    TypeParameter = c.typ,
    Variable = c.text,
  }
  for kind, hex in pairs(kinds) do
    g["NavicIcons" .. kind] = { fg = hex }
  end
  return g
end)

add("render_markdown", function(c, o)
  local heads = { c.h1, c.h2, c.h3, c.h4, c.h5, c.h6 }
  local g = {
    RenderMarkdownBullet = { fg = c.punct },
    RenderMarkdownCodeInline = { fg = c.str, bg = c.bg_alt },
    RenderMarkdownDash = { fg = c.border },
    RenderMarkdownLink = { fg = c.str, underline = true },
    RenderMarkdownMath = { fg = c.num, italic = o.italic },
    RenderMarkdownQuote = { fg = c.comment },
    RenderMarkdownTableHead = { fg = c.title, bold = o.bold },
    RenderMarkdownTableRow = { fg = c.punct },
  }
  for i, hex in ipairs(heads) do
    g["RenderMarkdownH" .. i] = { fg = hex, bold = o.bold }
    g["RenderMarkdownH" .. i .. "Bg"] = { fg = hex, bg = c.bg_alt, bold = o.bold }
  end
  return g
end)

---All integration names
function M.names()
  local out = vim.tbl_keys(M.registry)
  table.sort(out)
  return out
end

---@param c table palette
---@param o table resolved options
---@return table<string, table>
function M.get(c, o)
  local want = o.integrations
  if want == nil or want == false then
    return {}
  end
  local every = want == true
  local out = {}
  for name, fn in pairs(M.registry) do
    if every or want[name] == true then
      for group, spec in pairs(fn(c, o)) do
        out[group] = spec
      end
    end
  end
  return out
end

return M
