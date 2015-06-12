# Attributes
# 0	Reset all attributes
# 1	Bright
# 2	Dim
# 4	Underscore	
# 5	Blink
# 7	Reverse
# 8	Hidden
# 
# Foreground Colours
# 30	Black
# 31	Red
# 32	Green
# 33	Yellow
# 34	Blue
# 35	Magenta
# 36	Cyan
# 37	White
# 
# Background Colours
# 40	Black
# 41	Red
# 42	Green
# 43	Yellow
# 44	Blue
# 45	Magenta
# 46	Cyan
# 47	White

RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
DARK_GREEN="\[\033[2;32m\]"
DARK_YELLOW="\[\033[2;33m\]"
DARK_CYAN="\[\033[2;36m\]"
NO_COLOR="\[\033[0m\]"

if [ "$(uname)" == "Darwin" ]; then
    export CLICOLOR=1
    # For LSCOLORS - these letters designate which color to use:
    #   a     black
    #   b     red
    #   c     green
    #   d     brown
    #   e     blue
    #   f     magenta
    #   g     cyan
    #   h     light grey
    #   A     bold black, usually shows up as dark grey
    #   B     bold red
    #   C     bold green
    #   D     bold brown, usually shows up as yellow
    #   E     bold blue
    #   F     bold magenta
    #   G     bold cyan
    #   H     bold light grey; looks like bright white
    #   x     default foreground or background
    #
    # And this is the order:
    #
    #   1.   directory
    #   2.   symbolic link
    #   3.   socket
    #   4.   pipe
    #   5.   executable
    #   6.   block special
    #   7.   character special
    #   8.   executable with setuid bit set
    #   9.   executable with setgid bit set
    #   10.  directory writable to others, with sticky bit
    #   11.  directory writable to others, without sticky bit

    #               1 2 3 4 5 6 7 8 9 1011
    export LSCOLORS=GxGxhxDxCxhxhxHBhdhcGc
else
    #
    # NOTE: dircolors is sensitive to the setting of the TERM environment variable
    #
    eval `dircolors --sh ~/.dircolors`
fi
