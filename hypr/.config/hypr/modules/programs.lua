------------------
---- PROGRAMS ----
------------------
local P = {}

P.terminal = "kitty"
P.fileManager = "dolphin"

-- rofi
P.menu = "rofi -show drun -show-icons"
P.runner = "eval \"$(rofi -dmenu -p \"Run:\" -theme-str 'entry { placeholder: \"Type command...\"; }')\""
P.clipboardHistory = "cliphist list | rofi -dmenu | cliphist decode | wl-copy && wtype -M ctrl v"
P.controlCenter = "~/.config/scripts/rofi/control_center.sh"

return P