" debPlugin.vim -- a Vim plugin for browsing debian packages
" copyright (C) 2007, arno renevier <arenevier@fdn.fr>
" Distributed under the GNU General Public License.
" Last Change: 2007 July 15
"
" This part only sets the autocommands. Functions are in autoload/deb.vim.
" Latest version of that file can be found at
" http://www.fdn.fr/~arenevier/vim/plugin/debPlugin.vim
"
if &cp || exists("g:loaded_debPlugin") || !has("unix") || v:version < 700
    finish
endif
let g:loaded_debPlugin = 1

autocmd BufReadCmd   *.deb		call deb#browse(expand("<amatch>"))
