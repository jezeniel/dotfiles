local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("c", {
	s(
		"fn",
		fmt(
			[[
	{} {}({}) {{
		{}
	}}
	]],
			{
				i(1, "type"),
				i(2, "name"),
				i(3, "params"),
				i(4),
			}
		)
	),
	s(
		"stdmain",
		fmt(
			[[
	#include <stdio.h>

	int main() {{
		{}
		return 0;

	}}
	]],
			{ i(1) }
		)
	),
})
