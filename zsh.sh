#!/usr/bin/env bash
sudo apt install zsh 
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
wget -O .zshrc  https://raw.githubusercontent.com/Toymakerftw/miscellaneous/master/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "export SHELL=/bin/zsh" >> "$HOME/.bash_profile"
echo "exec /bin/zsh -l" >> "$HOME/.bash_profile"
source ~/.zshrc
zsh
