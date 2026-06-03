---------------------
---- KEYBINDINGS ----
---------------------

local apps = require("modules.programs")
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local secondMod = "SUPER + SHIFT" -- Sets "Windows" + "SHIFT" key as second modifier
local mediaMod = "SUPER + ALT" -- Sets "Windows" + "ALT" key as media modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(apps.terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(apps.menu))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(apps.runner))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(apps.clipboardHistory))
hl.bind(secondMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(apps.fileManager))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(apps.controlCenter))

-- Move focus with mainMod + vim navigation keys
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down" }))

-- Move focus with secondMod + arrow keys
hl.bind(secondMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(secondMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(secondMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(secondMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i}))
    hl.bind(secondMod .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind(mediaMod .. " + right",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(mediaMod .. " + left",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind(mediaMod .. " + space", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })