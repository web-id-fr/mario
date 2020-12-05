COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CYAN='\033[0;36m'
COLOR_RESET='\033[0;0m'

echo "Changing the user login shell to bash..."

if [[ $SHELL != '/bin/bash' ]]
then
    echo -e "${COLOR_RED}Shell is $SHELL, setting bash shell...${COLOR_RESET}"
    chsh -s /bin/bash
    if [[ $? != 0 ]]
    then
        echo -e "${COLOR_RED}Could not set shell.${COLOR_RESET}"
        exit 1
    fi
else
    echo -e "Shell is already ${COLOR_GREEN}$SHELL${COLOR_RESET}."
fi