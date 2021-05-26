COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CYAN='\033[0;36m'
COLOR_RESET='\033[0;0m'

echo "Checking if ansible is installed..."
ansible --version &> /dev/null
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Ansible is not installed, installing...${COLOR_RESET}"

    brew install ansible
fi

# First line of ansible --version is "ansible X.X.X"
ANSIBLE_VERSION=`ansible --version | head -n 1 | sed 's/ansible //'`
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Ansible could not be installed.${COLOR_RESET}"
    exit 1
fi
echo -e "Ansible ${COLOR_GREEN}${ANSIBLE_VERSION}${COLOR_RESET} is installed."