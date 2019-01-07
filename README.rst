``3l`` - A better modifier based keyboard layout
================================================

**Three Layout**, more commonly called ``3l``, is an `alternative keyboard
layout`_ designed for efficently typing not only English, but also computer
programs.  ``3l`` is modifier based, so many of the keys which would normally
be accesed on the top row (with numbers on QWERTY) can be accessed on the main
part of the keyboard.

.. _`alternative keyboard layout`: https://en.wikipedia.org/wiki/Keyboard_layout#Non-QWERTY-based_Latin-script_keyboard_layouts

To give you an idea on how much this layout can improve your typing efficency,
compare typing distance of George Orwell's *Nineteen Eighty-Four* to other
common layouts:

===================================================== =============
QWERTY                                                 10.4 miles
Neo 2.0                                                 6.3 miles
Antibracket (which this keyboard layout was based on)   6.3 miles
Dvorak                                                  6.2 miles
Colemak                                                 5.9 miles
Workman                                                 5.8 miles
WULY (my old layout)                                    5.6 miles
ARENSITO                                                5.3 miles
``3l``                                                **4.9 miles**
===================================================== =============

Typing distance is not the only factor that ``3l`` optimizes for. ``3l`` helps
**increase hand alternation**, **reduce bottom-to-top row jumps**, **decrease
lateral motion**, and also strives to be **easy to learn**.

.. image:: docs/standard_three.png

See the ``docs`` directory for more images of the layout.

Testing the layout without installation
---------------------------------------

On Linux using X, you can run ``linux/xmodmap/test_layout.sh`` from the base of
this repository to temporarily set your keyboard layout. To undo this, you can
either figure out how to type ``setxkbmap us`` (or whatever layout you were
using before), or it will return back to normal next time you log out and back
in.

On Windows, compile and run the provided AHK script. Your keyboard layout will
return to normal when the script exits (in system tray) or you press both
``Alt`` keys at the same time.

Installation
------------

Linux
~~~~~

Place the ``linux/xkb/symbols/3l`` file in your system's ``symbols`` directory
[1]_, then either:

1. Run ``setxkbmap 3l`` to set the layout *temporarily*.
2. Or, to set ``3l`` as the *default keyboard layout* for your system, add a
   section to your X11 configuration::

       $ cat /etc/X11/xorg.conf.d/99-keyboard.conf
       Section "InputClass"
               Identifier "system-keyboard"
               MatchIsKeyboard "on"
               Option "XkbLayout" "3l"
       EndSection

   ``systemd`` has the ``localectl`` utility that you may optionally use to
   maintain this configuration file.

There may also be a package for ``3l`` in your distribution. There is at least a
package in the Arch Linux AUR available under `threelayout`_.

To create a console mapping from the ``xkb`` symbols file, you can use the
``ckbcomp`` utility.

.. [1] This is typically something like ``/usr/share/X11/xkb/symbols``.
.. _`threelayout`: https://aur.archlinux.org/packages/threelayout

Mac OS X [2]_
~~~~~~~~~~~~~

1. Install `Karabiner Elements`_
2. Copy the ``macosx/karabiner.json`` file to the ``~/.config/karabiner/``
   directory.
3. Select the ``3l`` profile from Karabiner Elements.

.. [2] Get off your hipster butt. This can be used to refer to "OS X" and
       "macOS" as well.
.. _`Karabiner Elements`: https://github.com/tekezo/Karabiner-Elements

Windows
~~~~~~~

Place the AHK script in your "Startup" folder.

Layout Mods
-----------

There are a number of modifications that can be preformed to the layout.
Currently, these are only supported on systems with ``xmodmap`` (Sorry Windows
and Mac OS X users).

To apply a mod, run ``xmodmap ~/path/to/git/repo/linux/xmodmap/mod-XXX`` at
login, where ``XXX`` is the name of the mod you wish to apply.

Users are encouraged to submit the mods they find useful in a pull request.

WhackyInsert
~~~~~~~~~~~~

This mod gives you an ``Insert`` key on QWERTY's Whack/Pipe key (above enter).
Useful on some notebooks which do not have an ``Insert`` key, but also
convenient on desktop keyboards.

ChromebookSuperTab
~~~~~~~~~~~~~~~~~~

Many Chromebook computers have a ``Super_L`` key that acts as a "search" key in
Chrome OS where the Caps Lock key should be. As such, when using alternative
layouts that makes good use of this key, the good use is lost. This mod makes
the ``Super_L`` act as ``Tab`` for these systems.

Users' Registry
---------------

This section lists people who have learned to type on ``3l``. Users who learn
to type at least 15 WPM (that's what it takes to get past the initial learning
threshold) on ``3l`` can be added to this list. This list is included here so
you can query typists to see what they like and dislike about the layout before
you dedicate time to learning, or so you can reach out for learning tips.

* `Jack Rosenthal`__ (Me, who created ``3l`` in the Fall of 2015)
* `Josh Hoffer`__ (who learned ``3l`` in the Spring of 2017)
* `Sumner Evans`__ (who learned ``3l`` in the Spring of 2017)
* `Robert Zampino`__ (who learned ``3l`` in the Spring of 2018)
* `Patrick Nichols`__ (who learned ``3l`` in the Fall of 2018)
* `David Florness`__ (who learned ``3l`` in the Fall of 2018)
* `Daichi Jameson`__ (who learned ``3l`` in the Fall of 2018)
* `Jesus Nunez`__ (who learned ``3l`` in the Fall of 2018)

__ http://inside.mines.edu/~jrosenth
__ https://github.com/JoshH100
__ https://github.com/sumnerevans
__ https://github.com/robozman
__ https://github.com/panichol
__ https://github.com/edwargix
__ https://github.com/daichij
__ https://github.com/jnunez101


If you learn the layout, feel free to submit a PR with your name added.
