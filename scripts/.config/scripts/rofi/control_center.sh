#!/usr/bin/env bash

# Options to display
options="📶\tWi-Fi Settings\n󰂯\tBluetooth Settings\n🔋\tPower Menu"

# Launch Rofi with a clean, minimal layout
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Control Center" -theme-str 'window {width: 250px; border-radius: 12px;} listview {lines: 3;}')

case "$chosen" in
    *"Wi-Fi Settings"*)
        ~/.config/scripts/wifi_manager.sh
        ;;
    *"Bluetooth Settings"*)
        ~/.config/scripts/bluetooth_manager.sh
        ;;
    *"Power Menu"*)
        # Triggers a sub-menu for power commands
        power_options="🔒\tLock\n\tSuspend\n󰗽\tLogout\n󰜉\tReboot\n\tShutdown"
        power_chosen=$(echo -e "$power_options" | rofi -dmenu -i -p "Power" -theme-str 'window {width: 200px; border-radius: 12px;} listview {lines: 5;}')
        
        case "$power_chosen" in
            *"Lock"*)
                hyprlock
                ;;
            *"Suspend"*)
                hyprlock & systemctl suspend
                ;;
            *"Logout"*)
                hyprctl dispatch exit
                ;;
            *"Reboot"*)
                systemctl reboot
                ;;
            *"Shutdown"*)
                systemctl poweroff
                ;;
        esac
        ;;
esac