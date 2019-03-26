" Author: harttle <yangjvn@126.com>
" Description: fecs for HTMl files

call ale#Set('html_fecs_executable', 'fecs')
call ale#Set('html_fecs_use_global', get(g:, 'ale_use_global_executables', 0))

call ale#linter#Define('html', {
\   'name': 'fecs',
\   'executable': function('ale#handlers#fecs#GetExecutable'),
\   'command': function('ale#handlers#fecs#GetCommand'),
\   'callback': 'ale#handlers#fecs#Handle',
\})
