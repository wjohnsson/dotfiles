#####################
# pre-existing lines
#####################
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/palemoon

################
# defined by me
################
setxkbmap se

# reverse scrolling so that scrolling up = content moves down
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1

# turn off annoying beep sounds
xset -b

# avoid using the ./ prefix each time a program is to be executed
export PATH=.:$PATH

# For using GNU Global with gtags in emacs
export GTAGSLABEL=pygments
