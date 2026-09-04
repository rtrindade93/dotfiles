-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function () 
  hl.exec_cmd("awww-daemon & awww img /home/ricardo/Images/Wallpaper_rally_1_catppuccin.png")
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprctl setcursor catppuccin-mocha-light-cursors 24")
  hl.exec_cmd("dunst")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("playerctld daemon")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)