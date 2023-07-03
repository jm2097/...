#!/usr/bin/env bash

export cpuLabel="%{B#8ec07c}%{F#1d2021} CPU %{B- F-}%{B#504945}%{F#ebdbb2} %percentage%% %{B- F-}"
export tempLabel="%{B#83a598}%{F#1d2021} TEMP %{B- F-}%{B#504945}%{F#ebdbb2} %temperature-c% %{B- F-}"
export memLabel="%{B#fabd2f}%{F#1d2021} MEM %{B- F-}%{B#504945}%{F#ebdbb2} %gb_used% %{B- F-}"
export dateLabel="%{B#fe8019}%{F#1d2021}  %{B- F-}%{B#504945}%{F#ebdbb2} %m/%d/%y %{B- F-}"
export dateLabel_alt="%{B#fe8019}%{F#1d2021}  %{B- F-}%{B#504945}%{F#ebdbb2} %A, %B %d, %Y %{B- F-}"
export timeLabel="%{B#d3869b}%{F#1d2021}  %{B- F-}%{B#504945}%{F#ebdbb2} %I:%M %p %{B- F-}"

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."