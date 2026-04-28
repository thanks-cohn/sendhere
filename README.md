# SendHere

Select files. Right click. Send them somewhere. Done.

Stop dragging files across your desktop like an animal.  
THE FUTURE IS NOW. 

SendHere adds a simple right-click action to Dolphin so you can send selected files to a destination folder without dragging, copying paths, or playing window games.

No dragging.  
No copying paths.  
No guessing.  

Just: select → SendHere → choose destination → done.

---

## How It Works

1. Select files in Dolphin
2. Right click → SendHere
3. Choose the destination folder
4. Done

---

## Current Status

This is an early v0 build.

Right now, SendHere copies files using `cp -r`.

That means:

- If a file with the same name already exists, normal copy behavior applies
- Overwrite/conflict handling is not polished yet
- Rename-on-conflict is not implemented yet
- Move mode is not implemented yet

Future versions should handle this better with options like:

- skip existing files
- overwrite existing files
- rename duplicates automatically
- move instead of copy

---

## Requirements

Currently tested on:

- Garuda Linux
- KDE Plasma 6
- Dolphin file manager
- Wayland session

Required tools:

- `bash`
- `kdialog`
- `cp`
- KDE/Dolphin service menu support

On Arch/Garuda systems, these are usually already available. If not:

```bash
sudo pacman -S kdialog


------------------------------------------------------------

FILE PLACEMENT (MANUAL SETUP)

If you are not using install.sh, do this manually:

1) MAIN SCRIPT

Put the sendhere script here:

  ~/.local/bin/sendhere

Make it executable:

  chmod +x ~/.local/bin/sendhere

Make sure ~/.local/bin is in your PATH.

------------------------------------------------------------

2) RIGHT CLICK MENU (DOLPHIN)

Put the service file here:

  ~/.local/share/kio/servicemenus/sendhere.desktop

If the folders do not exist:

  mkdir -p ~/.local/bin
  mkdir -p ~/.local/share/kio/servicemenus

------------------------------------------------------------

3) FIX THE EXEC PATH (IMPORTANT)

Open the file:

  nano ~/.local/share/kio/servicemenus/sendhere.desktop

Make sure this line exists:

  Exec=sendhere %U

If that does NOT work, use full path:

  Exec=/home/your-username/.local/bin/sendhere %U

Example:

  Exec=/home/big-bro/.local/bin/sendhere %U

------------------------------------------------------------

4) REFRESH DOLPHIN

Run:

  kbuildsycoca6
  killall dolphin
  dolphin &

------------------------------------------------------------

NOTES

- Replace "your-username" with your actual username
- Built for KDE Plasma + Dolphin
- Tested on Garuda Linux (Arch-based)
- v0 does NOT handle file overwrite conflicts yet





