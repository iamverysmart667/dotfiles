#for i in `seq 1 2`; do
#  urxvt -name ncmpcpp -e ncmpcpp &
#  urxvt -name cava -e cava &
#  sleep 0.1
#  killall urxvt
#done

urxvt -name ncmpcpp -e ncmpcpp &
urxvt -name cava -e cava &
urxvt -name album_art -e ~/.ncmpcpp/album_art.sh 2> /dev/null &
