# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

# Colors
RED="\[\e[1;31m\]"
BLUE="\[\e[1;34m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[1;33m\]"
DEFAULT="\[\e[m\]"

# dir git-branch sign
PS1="$GREEN[\W]$BLUE\$(__git_ps1)$GREEN → $DEFAULT"

# rude bash prompt ≡
# PS1="$RED ▀█▀ █▬█ █ ▄█▀   █ ▄█▀   ▄█▀ █▬█ █ ▀█▀ ☞ $DEFAULT"

# display a quote from Sheldon Cooper of TBBT on login
fortune ~/.sheldon-fortune | cowsay  
echo

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
alias del="rmtrash"
alias rm="rm -i"
alias mcgill="ssh jdomin9@cgi.cs.mcgill.ca"
alias pyserver="python -m SimpleHTTPServer 8080"
alias cdd="cd ~/Desktop"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
