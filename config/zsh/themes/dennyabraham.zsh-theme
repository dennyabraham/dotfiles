ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
  if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='%(?, ,%{$fg[red]%}%{$reset_color%})
%{$FG[$LOGIN_COLOR]%}%n%{$reset_color%}@%{$fg[$HOST_PROMPT_COLOR]%}[%m]%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)
%_$(prompt_char) '

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"
