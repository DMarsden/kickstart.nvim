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
  s('ef', { t 'Ehrenfeucht-Fra\\"iss\\\'e' }),
})

-- lhs2Tex related snippets
luasnip.add_snippets('all', {
  s('%is', fmta('%include TikZ/<>.snip', { i(1) })),
})

-- LaTeX related snippets (enabled more broadly for book work)
luasnip.add_snippets('all', {
  s('usepackage', fmta('\\usepackage{<>}\n', { i(1, 'amsmath') })),
  s('chapter', fmta('\\chapter{<>}\n', { i(1) })),
  s('label', fmta('\\label{<>}\n', { i(1) })),
  s('ref', fmta('\\ref{<>}', { i(1) })),
  s('eqref', fmta('\\eqref{<>}', { i(1) })),
  s('bib', fmta('\\bibliographystyle{<>}\n\\bibliography{<>}', { i(1, 'apalike'), i(2) })),
})

-- TikZ specific snippets (enabled more broadly for book work)
luasnip.add_snippets('all', {
  s('dimensions', fmta('\\coordinate dimensions at(<>,<>);', { i(1), i(2) })),
})
