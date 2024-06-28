# Default to serve as a source for other scripts/functions

# Color Code for tput: · 
# 0 – Black · 1 – Red · 2 – Green · 3 – Yellow · 
# 4 – Blue · 5 – Magenta · 6 – Cyan · 7 – White 
# https://linux.101hacks.com/ps1-examples/prompt-color-using-tput/
normal=$(tput sgr0)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)    
yellow=$(tput setaf 3)
blue=$(tput setaf 4)    
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)


function print() {
    flag="$1"

    if [[ "$flag" = "-c" ]]; then
      	input="$2"
        choice="$3"
	      color="${(P)choice}"
	      output="${color}$input${normal}"
	      printf "$output\n"
    elif [[ "$flag" = "-pc" ]]; then
        total="$2"
        sub="$3"

        choice="$4"
	      color="${(P)choice}"

        mod="${color}$sub${normal}"
	      printf "${total/"$sub"/"$mod"} \n"
    elif [[ -z "$1" ]]; then
	      printf "$1\n"	
    fi
}
