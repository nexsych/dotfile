export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export XINITRC="$XDG_CONFIG_HOME/x/xinitrc"

export CM_MAX_CLIPS=15
export CM_SELECTIONS="clipboard"
export CM_HISTLENGTH=15
export CM_DIR="$XDG_STATE_HOME"

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	  exec startx $XINITRC
#fi
