if !exists("g:spell_checker_rotation_counter")
	let g:spell_checker_rotation_counter = 0
endif

if !exists("g:spell_checker_rotation")
	let g:spell_checker_rotation = ['en_us']
endif

function! SpellCheckRotate()
	let spell_checker_rotation_counter = spell_checker_rotation_counter + 1
	if spell_checker_rotation_counter >= len(spell_checker_rotation)
		spell_checker_rotation_counter = 0
	endif
	let new_language = spell_checker_rotation[spell_checker_rotation_counter]
	set spelllang=new_language spell
	echo new_language
endfunction

