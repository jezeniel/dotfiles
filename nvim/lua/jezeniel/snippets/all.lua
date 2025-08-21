local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("all", {
	s("expand", t("loaded")),
	s("expand2", t("loaded2")),
})
