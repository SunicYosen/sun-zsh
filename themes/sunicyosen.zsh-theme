local ret_status="%(?:%{$fg_bold[green]%}<:%{$fg_bold[red]%}<)"
local ret_suf_status="%(?:%{$fg_bold[green]%}>:%{$fg_bold[red]%}>)"
PROMPT='$(git_prompt_info)${ret_status} %{$fg[cyan]%}%c ${ret_suf_status}%{$reset_color%}'
#'c' is current directory and 'd' is absolute directory

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[blue]%} ]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
