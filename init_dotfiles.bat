@echo off

rem Vim�̃f�B���N�g�����w��
set vim_dir="C:\tools\vim"
rem Github���玝���Ă���dotfiles�̃f�B���N�g�����w��
set dotfiles_dir="%HOME%\dotfiles"

rem .vimrc��.gvimrc�̓n�[�h�����N
fsutil hardlink create "%vim_dir%\_vimrc" "%dotfiles_dir%\.vimrc"
fsutil hardlink create "%vim_dir%\_gvimrc" "%dotfiles_dir%\.gvimrc"

rem vimfiles�ւ̓V���{���b�N�����N
mklink /d %vim_dir%\vimfiles %dotfiles_dir%\vimfiles

rem .atom�ւ̓V���{���b�N�����N
mklink /d %HOME%\.atom %HOME%\dotfiles\.atom
