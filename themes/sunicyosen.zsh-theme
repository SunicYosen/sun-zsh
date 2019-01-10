## zsh colors
# black   or 0	
# red     or 1
# green   or 2
# yellow  or 3
# blue    or 4	
# magenta or 5
# cyan    or 6
# white   or 7
##------------

local ret_status="%(?:%{$fg_bold[green]%}<:%{$fg_bold[red]%}<)"
local ret_suf_status="%(?:%{$fg_bold[green]%}>:%{$fg_bold[red]%}>)"
local ret_dir="%(?:%{$fg_bold[green]%}%c:%{$fg_bold[red]%}%c)"
PROMPT='$(git_prompt_info)${ret_status} ${ret_dir} ${ret_suf_status} %{$reset_color%}'
#'c' is current directory and 'd' is absolute directory

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[git:<%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}>%{$fg[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}>"
