let s:rotation = 0

function! SpellCheckRotate()
	let rotation = rotation + 1
	if rotation >= len(g:spell_check_rotation)
		rotation = 0
	endif
	let new_language = spell_check_rotation[rotation]
	set spelllang=new_language spell
	echo new_language
endfunction

