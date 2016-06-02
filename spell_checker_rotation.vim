let s:rotation = 0

function! SpellCheckRotate()
	let s:rotation = s:rotation + 1
	if s:rotation >= len(g:spell_check_rotation)
		s:rotation = 0
	let t:new_language = g:spell_check_rotation[s:rotation]
		set spelllang=t:new_language spell
	echo t:new_language
endfunction

