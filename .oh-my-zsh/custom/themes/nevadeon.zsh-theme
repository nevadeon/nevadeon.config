# Put your custom themes in this folder.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-themes

error_spacing() {
	if (($1 / 10 == 0)); then
		echo "  "
	elif (($1 / 100 == 0)); then
		echo " "
	fi
}

PROMPT='%(?:%{$fg_bold[green]%}%1{➜%}  :%{$fg[red]%}%(?..$?)$(error_spacing $?)) %{$fg_bold[cyan]%}%2c %{$fg_bold[green]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""s

RPROMPT='$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"
