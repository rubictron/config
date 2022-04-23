#add to ~/.bashrc ----------------------{{{
#if [ -f ~/.bash_profile ];then
#    source ~/.bash_profile
#fi
#----------------------------------------}}}

#to source bash_aliases file-------------{{{
if [ -f ~/.bash_aliases ];then
    source ~/.bash_aliases
fi
if [ -f ~/.bash_env ];then
    source ~/.bash_env
fi
#----------------------------------------}}}


#----------------------------------------}}}
red="\033[1;31m"
green="\033[0;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
magenta="\033[1;35m"
cyan="\033[1;36m"
white="\033[0;37m"
end="\033[0m" # This is needed at the end... 

PS1="${cyan}[${blue}\u@\h${green} : ${yellow}\w${cyan}][${white}$?${cyan}]\n${white}\$${end}"

#----------------------------------------}}}

