# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Set colors. Colors can be edited or switched here.
if [ -f "${HOME}/setup/bash_colors" ]; then
	source ${HOME}/setup/bash_colors
fi

# Set aliases. Aalises can be edited here
if [ -f "${HOME}/setup/bash_alias" ]; then
	source ${HOME}/setup/bash_alias
fi

# Include functions. Edit functions here
if [ -f "${HOME}/setup/bash_func" ]; then
	source ${HOME}/setup/bash_func
fi


# Set history characteristics
export HISTCONTROL=ignoredups:erasedups # No duplicate entries
export HISTSIZE=5000                    # Large history
export HISTFILESIZe=10000               # Very large history
shopt -s histappend            # Append history
shopt -s histverify            # Edit history recall


# Set to allow vi edits on command line
set -o vi


# Set the path as the window title
PROMPT_COMMAND='echo -ne "\033];${PWD}\007"'


# Bash git prompt
if [ -f "${HOME}/.bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
	source ${HOME}/.bash-git-prompt/gitprompt.sh
fi

# Get git completion
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi


# Base path
#export PATH=.:${HOME}/bin:${HOME}/.local:$PATH

# Set path for LaTeX
#export PATH=/Library/TeX/textbin:$PATH

# Set path for HomeBrew ruby
#export PATH=/usr/local/env/ruby/bin:$PATH



# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Rarrell/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Rarrell/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Rarrell/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Rarrell/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda2 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Rarrell/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Rarrell/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/Rarrell/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Rarrell/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<



# Prompt settings
PS1="$(echo $PS1 | sed 's/(base) //')" # Remove the (base) from the prompt. This must be after the conda setups where (base) is inserted.
PS1="\[$BICyan\]\u \[$BICyan\][\W] \[$BIGreen\]> \[$Color_Off\]"



