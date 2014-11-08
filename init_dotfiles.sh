#!/bin/sh
# 参考：dotfilesの初期化用スクリプト( http://qiita.com/kamina91/items/1544056b165b6ca35d5c )

# current dir
cd $(dirname $0)

# download neobundle files
if [ -e ~/dotfiles/vimfiles/bundle/neobundle.vim ]; then
    echo "neobundle found"
    is_existed=true
else
    echo "install neobundle"
    mkdir -p ~/dotfiles/vimfiles/bundle/
    git clone https://github.com/Shougo/neobundle.vim ~/dotfiles/vimfiles/bundle/neobundle.vim
    is_existed=false
fi

# make symlink
for dotfiles in .?*; do
    case $dotfiles in 
        ..)
            continue;;
        .git)
            continue;;
        *)
            ln -Fis "$PWD/$dotfiles" $HOME;;
    esac
done
if [ -e ~/.vim ]; then
    echo ".vim found. rename .vim dir"
else
    ln -vFis ~/dotfiles/vimfiles ~/.vim;
fi

# install & update NeoBundle plugins
if [ "${is_existed}" == true ]; then
    echo "running NeoBundleUpdate...\n"
    vim -u ~/.vimrc -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e -s -V1
else
    echo "running NeoBundleInstall...\n"
    vim -u ~/.vimrc -i NONE -c "try | NeoBundleInstall! | finally | q! | endtry" -e -s -V1
fi
echo "\ncompleted!"
