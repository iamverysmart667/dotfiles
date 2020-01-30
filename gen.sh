#. ~/.zshrc
mp3_add_img() {
  eyeD3 --add-image "$1:FRONT_COVER" "$2"
}

mp3_ext_img() {
  echo "MP3:"$1""
  eyeD3 --write-images=./ "$1"
}

flac_add_img() {
  metaflac  --preserve-modtime  --import-picture-from="2||||"$1"" "$2"
}

flac_ext_img() {
  echo "FLAC:"$1""
  metaflac --block-number=2 --export-picture-to=FRONT_COVER.jpg "$1" || metaflac --block-number=3 --export-picture-to=FRONT_COVER.jpg "$1"
}

audio_ext_img() {
  if [[ "$1" == *.flac ]]; then
    flac_ext_img "$1"
  else
    mp3_ext_img "$1"
  fi
}

for f in *; do
  album=""

  if [[ "$f" == *.flac ]]; then
    album=$(metaflac --show-tag="album" "$f")
    album=$(echo "$album" | cut -d '=' -f 2)
  elif [[ "$f" == *.mp3 ]]; then
    album=$(eyeD3 "$f" | grep album | head -n1)
    album=$(echo "$album" | cut -d ':' -f 2)
    album=${album:1}
  fi

  if [ ! -d "$album" ] && [ "$album" != "" ]; then
    mkdir "$album"
    audio_ext_img "$f"
    mv "FRONT_COVER.jpg" ./"$album"/
  fi
done
