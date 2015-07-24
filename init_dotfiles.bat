@echo off

rem Vimのディレクトリを指定
set vim_dir="C:\tools\vim"
rem Githubから持ってきたdotfilesのディレクトリを指定
set dotfiles_dir="%HOME%\dotfiles"

rem .vimrcと.gvimrcはハードリンク
fsutil hardlink create "%vim_dir%\_vimrc" "%dotfiles_dir%\.vimrc"
fsutil hardlink create "%vim_dir%\_gvimrc" "%dotfiles_dir%\.gvimrc"

rem vimfilesへはシンボリックリンク
mklink /d %vim_dir%\vimfiles %dotfiles_dir%\vimfiles

rem .atomへはシンボリックリンク
mklink /d %HOME%\.atom %HOME%\dotfiles\.atom
