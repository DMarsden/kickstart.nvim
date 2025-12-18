local luasnip = require 'luasnip'
local fmta = require('luasnip.extras.fmt').fmta
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local rep = require('luasnip.extras').rep

-- Text related snippets
luasnip.add_snippets('all', {
  s('yl', { t 'Yoneda lemma' }),
  s('ye', { t 'Yoneda embedding' }),
})

-- lhs2Tex related snippets
luasnip.add_snippets('all', {
  s('%is', fmta('%include TikZ/<>.snip', { i(1) })),
})

-- LaTeX related snippets (enabled more broadly for book work)
luasnip.add_snippets('all', {
  s('usepackage', fmta('\\usepackage{<>}\n', { i(1, 'amsmath') })),
  s('chapter', fmta('\\chapter{<>}\n', { i(1) })),
})

-- luasnip.add_snippets('all', {
--   s('\\be', fmta('\\begin{<>}\n\t<>\n\\end{<>}\n', { i(1, 'equation*'), i(2), rep(1) })),
-- })
