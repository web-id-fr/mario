COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_CYAN='\033[0;36m'
COLOR_RESET='\033[0;0m'

echo "Checking if homebrew is installed..."
brew --version &> /dev/null
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Homebrew is not installed, installing...${COLOR_RESET}"
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# First line of brew --version is "Homebrew X.X.X"
# (tail is a hack to prevent a display of a "Broken pipe")
BREW_VERSION=`brew --version | tail | head -n 1 | sed 's/Homebrew //'`
if [[ $? != 0 ]]
then
    echo -e "${COLOR_RED}Homebrew could not be installed.${COLOR_RESET}"
    exit 1
fi
echo -e "Homebrew ${COLOR_GREEN}${BREW_VERSION}${COLOR_RESET} is installed."