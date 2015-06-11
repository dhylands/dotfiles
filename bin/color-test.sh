#!/bin/bash
#############################################################################
#
#  Tests the appearance of colors I like to use in my colorized directory 
#  listings.
#
#############################################################################

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

BLACK="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
MAGENTA="\033[1;35m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"

DARK_BLACK="\033[2;30m"
DARK_RED="\033[2;31m"
DARK_GREEN="\033[2;32m"
DARK_YELLOW="\033[2;33m"
DARK_BLUE="\033[2;34m"
DARK_MAGENTA="\033[2;35m"
DARK_CYAN="\033[2;36m"
DARK_WHITE="\033[2;37m"

BG_BLACK="\033[1;40m"
BG_RED="\033[1;41m"
BG_GREEN="\033[1;42m"
BG_YELLOW="\033[1;43m"
BG_BLUE="\033[1;44m"
BG_MAGENTA="\033[1;45m"
BG_CYAN="\033[1;46m"
BG_WHITE="\033[1;47m"

BG_DARK_BLACK="\033[2;40m"
BG_DARK_RED="\033[2;41m"
BG_DARK_GREEN="\033[2;42m"
BG_DARK_YELLOW="\033[2;43m"
BG_DARK_BLUE="\033[2;44m"
BG_DARK_MAGENTA="\033[2;45m"
BG_DARK_CYAN="\033[2;46m"
BG_DARK_WHITE="\033[2;47m"

BG_NOCOLOR=${BG_DARK_BLACK}

NO_COLOR="\033[0m"

echo -e "${BG_BLACK}  ${NO_COLOR}${BLACK}__ BLACK ${NO_COLOR}"
echo -e "${BG_RED}  ${NO_COLOR}${RED}__ RED ${NO_COLOR}"
echo -e "${BG_GREEN}  ${NO_COLOR}${GREEN}__ GREEN ${NO_COLOR}"
echo -e "${BG_YELLOW}  ${NO_COLOR}${YELLOW}__ YELLOW ${NO_COLOR}"
echo -e "${BG_BLUE}  ${NO_COLOR}${BLUE}__ BLUE ${NO_COLOR}"
echo -e "${BG_MAGENTA}  ${NO_COLOR}${MAGENTA}__ MAGENTA ${NO_COLOR}"
echo -e "${BG_CYAN}  ${NO_COLOR}${CYAN}__ CYAN ${NO_COLOR}"
echo -e "${BG_WHITE}  ${NO_COLOR}${WHITE}__ WHITE ${NO_COLOR}"

echo -e "${BG_DARK_BLACK}  ${NO_COLOR}${DARK_BLACK}__ DARK_BLACK ${NO_COLOR}"
echo -e "${BG_DARK_RED}  ${NO_COLOR}${DARK_RED}__ DARK_RED ${NO_COLOR}"
echo -e "${BG_DARK_GREEN}  ${NO_COLOR}${DARK_GREEN}__ DARK_GREEN ${NO_COLOR}"
echo -e "${BG_DARK_YELLOW}  ${NO_COLOR}${DARK_YELLOW}__ DARK_YELLOW ${NO_COLOR}"
echo -e "${BG_DARK_BLUE}  ${NO_COLOR}${DARK_BLUE}__ DARK_BLUE ${NO_COLOR}"
echo -e "${BG_DARK_MAGENTA}  ${NO_COLOR}${DARK_MAGENTA}__ DARK_MAGENTA ${NO_COLOR}"
echo -e "${BG_DARK_CYAN}  ${NO_COLOR}${DARK_CYAN}__ DARK_CYAN ${NO_COLOR}"
echo -e "${BG_DARK_WHITE}  ${NO_COLOR}${DARK_WHITE}__ DARK_WHITE ${NO_COLOR}"


