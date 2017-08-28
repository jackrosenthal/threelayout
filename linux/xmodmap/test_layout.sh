#!/bin/bash
for cmd in setxkbmap xmodmap; do
    if ! command -v $cmd >/dev/null; then
        echo "Uh oh. Looks like you are missing $cmd!" 1>&2
        exit 1
    fi
done

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if ! [[ -e "$DIR/xmodmap" ]]; then
    echo "Uh oh. I'm missing a file I need." 1>&2
    exit 1
fi

setxkbmap "us(intl)"
xmodmap "$DIR/xmodmap"
