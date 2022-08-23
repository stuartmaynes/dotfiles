#/bin/bash

cd ~ && mkdir Projects Substrakt && cd Projects
git clone git@github.com:stuartmaynes/dotfiles.git dotfiles

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install asdf
brew install bash
brew install bat
brew install composer
brew install fd
brew install fish
brew install fzf
brew install git
brew install gnu-sed
brew install jq
brew install lazygit
brew install lf
brew install lua
brew install mackup
brew install mysql@5.7
brew install neovim
brew install pgcli
brew install php
brew install poetry
brew install ripgrep
brew install skhd
brew install starship
brew install tealdeer
brew install terraform
brew install the_silver_seacher
brew install tmux
brew install trash-cli
brew install tree
brew install wget
brew install yabai
brew install zoxide

# start services
brew services start skhd
brew services start yabai

# casks
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

# mackup
cp ~/Projects/dotfiles/mackup/.mackup.cfg ~/.mackup.cfg
mackup restore

# fisher https://github.com/jorgebucaran/fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# tpm https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# valet install
composer global require laravel/valet
valet install

# a better PHP REPL
composer global require psy/psysh:@stable
