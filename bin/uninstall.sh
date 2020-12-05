COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CYAN='\033[0;36m'
COLOR_RESET='\033[0;0m'

echo "Removing ansible..."
ansible --version &> /dev/null
if [[ $? != 0 ]]
then
    echo -e "${COLOR_CYAN}Ansible is not installed, skipping.${COLOR_RESET}"
else
    brew uninstall ansible@2.8

    if [[ $? != 0 ]]
    then
        echo -e "${COLOR_RED}Ansible could not be uninstalled.${COLOR_RESET}"
    fi
fi

echo "Removing homebrew..."
brew --version &> /dev/null
if [[ $? != 0 ]]
then
    echo -e "${COLOR_CYAN}Brew is not installed, skipping.${COLOR_RESET}"
else
    sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

    if [[ $? != 0 ]]
    then
        echo -e "${COLOR_RED}Brew could not be uninstalled.${COLOR_RESET}"
    fi
fi
