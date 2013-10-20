# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

# arrow
# PS1='\[\e[1;32m\][\w] → \[\e[m\]'
# congruent
PS1='\[\e[1;32m\][\w] ≡ \[\e[m\]'

# display a quote from Sheldon Cooper of TBBT on login
fortune .sheldon-fortune | cowsay  

# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

# Aliases
alias ll="ls -l"
alias la="ls -a"
alias r="rails"
alias ls="ls -G"
alias cd..="cd .."								    

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
