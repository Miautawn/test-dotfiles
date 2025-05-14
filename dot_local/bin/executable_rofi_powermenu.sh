#!/usr/bin/env bash

# Theme Elements

option_lock="" #nf-md-lock
option_sleep="󰤄"
option_reboot="" # reboot
option_shutdown="" # shutdown

yes=' Yes'
no=' No'

powermenu_options="$option_lock\n$option_sleep\n$option_reboot\n$option_shutdown"
confirmation_options="$yes\n$no"


choice=$(echo -e $powermenu_options | rofi -dmenu -mesg "󱐋 Power Menu 󱐋" -theme "powermenu_theme")


# # Rofi CMD
# rofi_cmd() {
# 	rofi -dmenu \
# 		-p "$prompt" \
# 		-mesg "$mesg" \
# 		-markup-rows \
# 		-theme ${RASI}
# }

# # Pass variables to rofi dmenu
# run_rofi() {
# 	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6" | rofi_cmd
# }

# # Confirmation CMD
# confirm_cmd() {
# 	rofi -dmenu \
# 		-p 'Confirmation' \
# 		-mesg 'Are you Sure?' \
# 		-selected-row 1 \
# 		-no-click-to-exit \
# 		-theme ${CNFR}
# }

# # Ask for confirmation
# confirm_exit() {
# 	echo -e "$yes\n$no" | confirm_cmd
# }

# # Confirm and execute
# confirm_run () {	
# 	selected="$(confirm_exit)"
# 	if [[ "$selected" == "$yes" ]]; then
#         ${1} && ${2} && ${3}
#     else
#         exit
#     fi	
# }

# # Execute Command
# # run_cmd() {
# # 	if [[ "$1" == '--opt1' ]]; then
# # 		betterlockscreen --lock
# # 	elif [[ "$1" == '--opt2' ]]; then
# # 		confirm_run 'herbstclient quit'
# # 	elif [[ "$1" == '--opt3' ]]; then
# # 		confirm_run 'mpc -q pause' 'pulsemixer --mute' 'betterlockscreen --suspend'
# # 	elif [[ "$1" == '--opt4' ]]; then
# # 		confirm_run 'systemctl hibernate'
# # 	elif [[ "$1" == '--opt5' ]]; then
# # 		confirm_run 'systemctl reboot'
# # 	elif [[ "$1" == '--opt6' ]]; then
# # 		confirm_run 'systemctl poweroff'
# # 	fi
# # }

# # Actions
# chosen="$(run_rofi)"
# case ${chosen} in
#     $option_1)
# 		run_cmd --opt1
#         ;;
#     $option_2)
# 		run_cmd --opt2
#         ;;
#     $option_3)
# 		run_cmd --opt3
#         ;;
#     $option_4)
# 		run_cmd --opt4
#         ;;
#     $option_5)
# 		run_cmd --opt5
#         ;;
#     $option_6)
# 		run_cmd --opt6
#         ;;
# esac