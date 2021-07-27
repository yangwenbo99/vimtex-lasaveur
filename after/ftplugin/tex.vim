if !exists('b:doneLoadingLasaveurSnippets')
	let b:doneLoadingLasaveurSnippets = 1
	" neosnippet
	let s:snippet_path = expand('<sfile>:p:h:h:h') . '/lasnippets/tex.snip'
	execute 'NeoSnippetSource '.s:snippet_path
end
