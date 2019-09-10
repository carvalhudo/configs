#!/bin/sh

xrdb ${HOME}/.Xresources

setxkbmap br
nitrogen --restore

exec compton &
exec nm-applet &

export DOC_PATH="${HOME}/Documentos"
export DOW_PATH="${HOME}/Downloads"
export IMG_PATH="${HOME}/Imagens"
export VID_PATH="${HOME}/Vídeos"
export TERMINAL="urxvt"
export SCRIPTS_PATH="${HOME}/.local/share/scripts"
