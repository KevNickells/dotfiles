#!/usr/bin/env bash

[[ -t 1 ]] || export TERM=dumb
#dark_grey_text=$(tput setaf 0)
#red_text=$(tput setaf 1)
#green_text=$(tput setaf 2)
yellow_text=$(tput setaf 3)
#blue_text=$(tput setaf 4)
purple_text=$(tput setaf 5)
#cyan_text=$(tput setaf 6)
white_text=$(tput setaf 7)

dark_grey_background=$(tput setab 0)
#red_background=$(tput setab 1)
#green_background=$(tput setab 2)
#yellow_background=$(tput setab 3)
blue_background=$(tput setab 4)
#magenta_background=$(tput setab 5)
#puce_background=$(tput setab 6)
white_background=$(tput setab 7)
# move_up=`tput cuu 1`
# clear_line=`tput el 1`
bold=`tput bold`
underline=`tput smul`
reset=`tput sgr0`

title=${bold}${blue_background}${white_text}
body=${white_background}${purple_text}
command_text=${dark_grey_background}${yellow_text}

# this is an example animation exampl
# echo "This is normal text"
# sleep 1
# echo "${MOVE_UP}${CLEAR_LINE}${BOLD}${txtred}This is bolded"
# sleep 1
# echo "${MOVE_UP}${CLEAR_LINE}${UNDERLINE}This is underlined${RESET}"

cat << EOF
"${title}Conflict tool${reset}
${command_text}:DiffConflicts${reset} ${body}-> splits config file into two${reset}
${command_text}:windo${reset} ${body}set modifiable -> allows editing on these files${reset}

${command_text}do${reset} ${body}- take right (do other) ${reset}
${command_text}dp${reset} ${body}- take left (do personal) ${reset}

${title}Squash commits (shrink history)${reset}
${command_text}git reset --hard <<commit hash>>
git push --force${reset}

${title}Squash with a new commit${reset}
${command_text}git reset --soft <<commit hash>>
git push --force${reset}

${title}oh-my-posh setup${reset}
${command_text}source ~/.oh-my-posh.nu${reset}


EOF
