if [[ $(pactl list | grep "Active Port: analog-output") == *"headphones"* ]]; then
	pactl set-sink-port 0 analog-output-lineout
	notify-send "Switched Output To Speakers" -t 500
else
	pactl set-sink-port 0 analog-output-headphones
	notify-send "Switched Output to HeadPhones" -t 500
fi
