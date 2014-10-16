### vim ###

ローカルの任意のディレクトリに clone したファイルをホームディレクトリにコピーして使います。  
既存の .vimrc や .gvimrc が存在する場合は退避しておいてください。

    $ cd /path/to/local_git_repository/
    $ cp -r home ~

NeoBundleでプラグインを導入するため、neobundle.vim と vimproc.vim を予め導入しておきます。

    $ cd ~/.vim/bundle
    $ git clone http://github.com/Shougo/neobundle.vim
    $ git clone https://github.com/Shougo/vimproc.vim


vimproc はライブラリのビルドが必要です。  
windows環境の場合は Kaoriya版にバイナリが同梱されていますので、そちらを使われるのが良いかと思います。  
以下はmacの場合の make例です。  

    $ cd ~/.vim/bundle/vimproc.vim
    $ make -f make_mac.mak

この状態で vim 起動して、

    :NeoBundleUpdate

すると、.vimrc に記載されているプラグインが自動的に導入されます。

