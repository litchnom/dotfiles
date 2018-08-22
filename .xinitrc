xrdb -load ~/.Xresources
sh ~/.fehbg
pgrep redshift $> /dev/null || redshift -l 53:0 &> /dev/null &

setxkbmap gb
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape'

i3
