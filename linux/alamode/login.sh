#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
setxkbmap "us(intl)"
[[ -e "$DIR/.Xmodmap" ]] && xmodmap "$DIR/.Xmodmap"
