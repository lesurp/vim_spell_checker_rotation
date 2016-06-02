# Spell checker rotation

This plugin allows you to simply switch between different dictionaries - useful when writing in different languages regularly

## How to use

You need to map the `SpellCheckRotate` function, for example like this:

````
nnoremap <leader>sp :call SpellCheckRotate()<cr>
````

You also need to create a list of the different dictionaries you wish to use, like this:

````
let g:spell_checker_rotation = ['en_us', 'fr']
````

Now pressing the shortcut ( `\sp` in my example) will rotate between the different dictionaries !

## Languages available

Well this script only uses the default dictionaries already available in vim.
It actually just use the `set spelllang` command, so nothing fancy.

You'll find here a list of the languages support on vim (by default):
[http://ftp.vim.org/vim/runtime/spell/](http://ftp.vim.org/vim/runtime/spell/)
