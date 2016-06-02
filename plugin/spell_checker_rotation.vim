let g:spell_checker_rotation = 0

function! SpellCheckRotate()
	let spell_checker_rotation = spell_checker_rotation + 1
	if spell_checker_rotation >= len(spell_check_spell_checker_rotation)
		spell_checker_rotation = 0
	endif
	let new_language = spell_check_rotation[spell_checker_rotation]
	set spelllang=new_language spell
	echo new_language
endfunction

