let s:rotation = 0

function! SpellCheckRotate()
	let s:rotation = s:rotation + 1
	if s:rotation >= len(g:spell_check_rotation)
		s:rotation = 0
	endif
	let new_language = g:spell_check_rotation[s:rotation]
		set spelllang=new_language spell
	echo new_language
endfunction

