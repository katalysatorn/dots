#!/bin/bash

status = $(cat /sys/class/power_supply/BAT0/status)

if [[ $status == "Charging" ]]; then
	hyprctl


