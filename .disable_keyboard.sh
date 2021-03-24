keyboard=$(xinput | grep "AT Translated Set 2 keyboard")
keyboard_id=$(echo $keyboard | sed 's/.*id=\(..\).*/\1/')

touchpad=$(xinput | grep "FTCS1000:00 2808:0101 Touchpad")
touchpad_id=$(echo $touchpad | sed 's/.*id=\(..\).*/\1/')

check_keyboardio=$(xinput | grep "Keyboardio")

if [ "$check_keyboardio" ];
then
  xinput float $keyboard_id
  xinput float $touchpad_id
fi
