# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$(git_prompt_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='%{$fg[blue]%}%1~%{$reset_color%}$(git_prompt_info)%{$reset_color%} %{$fg[cyan]%}::%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}:%{$fg[yellow]%}??"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$reset_color%}:%{$fg[cyan]%}M"
ZSH_THEME_GIT_PROMPT_ADDED="%{$reset_color%}:%{$fg[green]%}A"
