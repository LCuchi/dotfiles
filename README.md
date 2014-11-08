### vim ###

dotfiles運用に切り替えました。  
既存の .vimrc や .gvimrc が存在する場合は退避しておいてください。  

    $ cd ~
    $ git clone https://github.com/your_account/dotfiles.git

neobundle.vim と vimproc.vim を予め導入しておきます。

    $ cd ~/dotfiles/vimfiles/bundle
    $ git clone https://github.com/Shougo/neobundle.vim
    $ git clone https://github.com/Shougo/vimproc.vim

vimproc はライブラリのビルドが必要です。  
windows環境の場合は Kaoriya版にバイナリが同梱されていますので、そちらを使われるのが良いかと思います。  
以下はmacの場合の make例です。  

    $ cd ~/dotfiles/vimfiles/bundle/vimproc.vim
    $ make -f make_mac.mak

初期化スクリプトを起動するとリンク設定して NeoBundleInstall されます。  

    $ cd ~/dotfiles
    $ sh init_dotfiles.sh

「dotfilesの初期化用スクリプト」（ http://qiita.com/kamina91/items/1544056b165b6ca35d5c ) を参考にさせて頂きました。

