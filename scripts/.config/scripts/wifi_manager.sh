#!/usr/bin/env bash


# Launches a terminal-based UI for network management (fast and lightweight)
kitty --title "Wi-Fi Manager" -e env NEWT_COLORS='root=black,black;window=black,black;border=white,black;listbox=white,black;button=white,red;actlistbox=black,white;title=green,black' nmtui