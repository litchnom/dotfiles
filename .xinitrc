xrdb -load ~/.Xresources
sh ~/.fehbg
pgrep redshift $> /dev/null || redshift -l 53:0 &> /dev/null &
setxkbmap gb

i3
