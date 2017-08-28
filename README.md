# `3l` - A better modifier based keyboard layout

      normal           shift            sym                 cur/num
    qfuyzxkcwb      QFUYZXKCWB      "_[]^!<>=&      PU BS UP DL PD      123
    oheaidrtns      OHEAIDRTNS      /-{}*?()':      HM LF DN RT EN      456
    ,m.j;glpv        M J GLPV       #$|~`+%\@                          0789

(See the `docs` directory for full images of the layout.)

## Testing the layout without installation

On Linux using X, you can run `linux/xmodmap/test_layout.sh` from the base of
this repository to temporarily set your keyboard layout. To undo this, you can
either figure out how to type `setxkbmap us` (or whatever layout you were using
before), or it will return back to normal next time you log out and back in.

On Windows, compile and run the provided AHK script. Your keyboard layout will
return to normal when the script exits (in system tray) or you press both `Alt`
keys at the same time.

## Installation

### Linux

Place the `linux/xkb/symbols/3l` file in your system's symbols directory, then
either:

1. Run `setxkbmap 3l` to set the layout tempoarily
2. Or add a section to your X11 configuration that specifies `3l` as the
   default keyboard layout. An example of this configuration is shown below.

    $ cat /etc/X11/xorg.conf.d/00-keyboard.conf
    Section "InputClass"
            Identifier "system-keyboard"
            MatchIsKeyboard "on"
            Option "XkbLayout" "3l"
    EndSection

There may also be a package for `3l` in your distribution. There is at least an
Arch Linux AUR package available under
[`threelayout`](https://aur.archlinux.org/packages/threelayout).

To create a console mapping from the `xkb` symbols file, you can use the
`ckbcomp` utility.

### Mac OS X¹

1. Install [Karabiner Elements](https://github.com/tekezo/Karabiner-Elements).
2. Copy the `karabiner.json` file from the `macosx` directory to the
   `~/.config/karabiner/` directory.
3. Select the `3l` profile from Karabiner Elements.

¹Of course, this can be used to refer to "OS X" and "macOS" as well.

### Windows

Place the AHK script in your "Startup" folder.
