#!/bin/bash

cp .git-completion.bash ~/
cp .git_aliases ~/
cp .gitconfig ~/
cp .gitignore_global ~/
cp -r git-ps1 ~/

if [ $SHELL = "/bin/zsh" ]
then
    cp .zshrc_git ~/
    echo "source ~/.zshrc_git" >> ~/.zshrc
else
    cat .bash_profile >> ~/.bash_profile
    cat .bash_profile >> ~/.bashrc
fi
