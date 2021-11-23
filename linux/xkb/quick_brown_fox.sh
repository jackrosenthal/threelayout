#!/bin/bash

set -e

HERE="$(realpath "$(dirname "$BASH_SOURCE")")"

rm -f /tmp/quick_brown_fox.{pid,wid}
xkbcomp -I"${HERE}" "${HERE}/test.xkb" "${DISPLAY}"
urxvt -e bash -c 'echo "${WINDOW_ID}" >/tmp/quick_brown_fox.wid && echo $$ > /tmp/quick_brown_fox.pid && cat >/tmp/quick_brown_fox.out' &

while ! [ -e /tmp/quick_brown_fox.pid ]; do
    continue
done
WID="$(cat /tmp/quick_brown_fox.wid)"

declare -A keycodes=(
    [Esc]=23
    [Q]=24
    [F]=25
    [U]=26
    [Y]=27
    [Z]=28
    [X]=29
    [K]=30
    [C]=31
    [W]=32
    [B]=33
    [Enter]=36
    [CtrlL]=37
    [O]=38
    [H]=39
    [E]=40
    [A]=41
    [I]=42
    [D]=43
    [R]=44
    [T]=45
    [N]=46
    [S]=47
    [Sym]=48
    [LShift]=50
    [Comma]=52
    [M]=53
    [Period]=54
    [J]=55
    [Semicolon]=56
    [G]=57
    [L]=58
    [P]=59
    [V]=60
    [Cur]=61
    [RShift]=62
    [AltL]=64
    [Space]=65
    [Tab]=66
)

prog=(
    KEYDOWN LShift
    T
    KEYUP LShift
    H E
    Space
    Q U I C K
    Space
    B R O W N
    Space
    F O X
    Space
    J U M P S
    Space
    O V E R
    Space
    T H E
    Space
    L A Z Y
    Space
    D O G
    Period
    Enter
    KEYDOWN RShift
    O H E A H E A R T S Period
    Enter
    KEYUP RShift
    KEYDOWN LShift
    J U S T I F Y Comma
    Enter
    KEYUP LShift
    KEYDOWN RShift
    G U Y B R U S H Semicolon
    KEYUP RShift
    Enter
    KEYDOWN LShift
    Q U I C K L Y Space Z I P S Space L I N U X Space V R O O M
    KEYUP LShift
    KEYDOWN Sym
    X
    KEYUP Sym
    Enter
    KEYDOWN Cur
    K C W Space
    R T N Space
    G L P V Enter
    KEYUP Cur
    KEYDOWN Sym
    Q F U Y Z X K C W B Space
    O H E A I D R T N S Space
    Comma M Period J Semicolon G L P V Enter
    KEYUP Sym
)

cmd=key
for key in "${prog[@]}"; do
    if [[ "${key}" == "KEYDOWN" ]]; then
        cmd=keydown
    elif [[ "${key}" == "KEYUP" ]]; then
        cmd=keyup
    else
        xdotool "${cmd}" --window "${WID}" "${keycodes[${key}]}"
        cmd=key
    fi
done

kill "$(cat /tmp/quick_brown_fox.pid)"
sleep 1
diff "${HERE}/quick_brown_fox.out" "/tmp/quick_brown_fox.out"
