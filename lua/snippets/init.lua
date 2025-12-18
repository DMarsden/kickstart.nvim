local luasnip = require 'luasnip'
local fmt = require('luasnip.extras.fmt').fmt
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
luasnip.add_snippets('all', {
  s('yl', { t 'Yoneda lemma' }),
  s('ye', { t 'Yoneda embedding' }),
})
luasnip.add_snippets('all', {
  s('%is', fmt('%include TikZ/{}.snip', { i(1) })),
})
