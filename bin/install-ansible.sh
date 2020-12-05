COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CYAN='\033[0;36m'
COLOR_RESET='\033[0;0m'

echo "Checking if ansible is installed..."
ansible --version &> /dev/null
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Ansible is not installed, installing...${COLOR_RESET}"

    # Ansible 2.8 is used because at the time of writing
    # the latest version could not install "brew cask" with "-" char in their name
    # see : https://github.com/ansible-collections/community.general/commit/4c379bd3b2147710c3e7a1d900cddf47a6b7cd42#diff-87bf7824c29b8c0539854d2aa8e5595ad974b439acbca7511dd5bf1a3e5a0f4a
    # @TODO remove @2.8 eventually to go back to stable version when the bug is fixed
    brew install ansible@2.8
    # @TODO also remove this line
    brew link ansible@2.8
fi

# First line of ansible --version is "ansible X.X.X"
ANSIBLE_VERSION=`ansible --version | head -n 1 | sed 's/ansible //'`
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Ansible could not be installed.${COLOR_RESET}"
    exit 1
fi
echo -e "Ansible ${COLOR_GREEN}${ANSIBLE_VERSION}${COLOR_RESET} is installed."