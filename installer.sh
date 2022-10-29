#/bin/bash

cd ~ && mkdir Projects
git clone git@github.com:stuartmaynes/dotfiles.git .config

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install applications
brew install ack
brew install asdf
brew install bat
brew install fd
brew install fzf
brew install git
brew install gnu-sed
brew install jq
brew install jqp
brew install lazygit
brew install lf
brew install neovim
brew install pgcli
brew install poetry
brew install ripgrep
brew install starship
brew install tealdeer
brew install tmux
brew install trash-cli
brew install zoxide

# Homebrew casks
brew install --cask 1password
brew install --cask alacritty
brew install --cask alfred
brew install --cask boop
brew install --cask brave-browser
brew install --cask firefox
brew install --cask font-sf-mono-nerd-font
brew install --cask obsidian
brew install --cask postman
brew install --cask slack
brew install --cask tableplus

# TMUX plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins
