eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

# setting path for VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" 
export PATH="/Users/lesterhoutenbos/.local/share/solana/install/active_release/bin:$PATH"
