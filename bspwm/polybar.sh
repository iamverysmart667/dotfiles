if [[ $(xrandr | grep "HDMI1 connected") ]]; then
  polybar main &
  polybar secondary &
else
  polybar default &
fi
