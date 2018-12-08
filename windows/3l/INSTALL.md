Installing Keyboard and setting it default:
1.  Run 3l/setup.exe.
2.  On the control panel, under Clock, Region and Language, click Change keyboards or other input methods.
3.  Under the Keyboards and Languages tab, click Change Keyboards.
4.  Click Add
5.  Under English (United States), find US - Custom, and press OK.
6.  Under Default input language, set English (United States) - US - Custom.
7.  Under Installed Services, select US, and click Remove.
8.  Click OK.
9.  Back in the Region and Language window, select the Administrative tab.
10. Click Copy Settings.
11. Check Welcome screen and system accounts.
12. Click OK
13. Click OK

Getting modifier keys where the are supposed to be:
1. Install SharpKeys (https://github.com/randyrants/sharpkeys).
2. Open 3l.skl in SharpKeys.
3. Click Write to Registry.
4. Reboot or log out.

To uninstall:
1. Delete registry keys from SharpKeys.
2. Reboot or log off
3. Reset keyboard to US.
4. Uninstall 3l from Control Panel\Programs\Programs and Features.

Notes:
1. Windows does not support extra modifier keys, so I have set the symbols layer as AltGr, and the cursor layer as Caps lock. This means that the cursor layer will toggle rather than just hold.
2. SharpKeys is used to rebind the keys that cannot be changed using MKLC. You can do it yoursef using regedit, under HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
3. Because MKLC only supports rebinding characters, and SharpKeys does not support modifiers, cursor keys do not work. They will insert a placeholder word instead. The numpad does work.
