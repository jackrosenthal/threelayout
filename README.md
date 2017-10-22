# `3l` - A better modifier based keyboard layout

![Three Layout Reference Image](https://raw.githubusercontent.com/jackrosenthal/threelayout/master/docs/standard_three.png)

See the `docs` directory for more images of the layout.

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

1. Run `setxkbmap 3l` to set the layout temporarily
2. Or add a section to your X11 configuration that specifies `3l` as the
   default keyboard layout. Here is an example of this configuration:

        $ cat /etc/X11/xorg.conf.d/99-keyboard.conf
        Section "InputClass"
                Identifier "system-keyboard"
                MatchIsKeyboard "on"
                Option "XkbLayout" "3l"
        EndSection

    `systemd` has the `localectl` utility that you may optionally use to
    maintain this configuration file.

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

## Layout Mods

There are a number of modifications that can be preformed to the layout.
Currently, these are only supported on systems with `xmodmap` (Sorry Windows
and Mac OS X users).

To apply a mod, run `xmodmap ~/path/to/git/repo/linux/xmodmap/mod-XXX` at
login, where `XXX` is the name of the mod you wish to apply.

Users are encouraged to submit the mods they find useful in a pull request.

### WhackyInsert

This mod gives you an `Insert` key on QWERTY's Whack/Pipe key (above enter).
Useful on some notebooks which do not have an `Insert` key, but also convenient
on desktop keyboards.

### ChromebookSuperTab

Many Chromebook computers have a `Super_L` key that acts as a "search" key in
Chrome OS where the Caps Lock key should be. As such, when using alternative
layouts that makes good use of this key, the good use is lost. This mod
makes the `Super_L` act as `Tab` for these systems.

