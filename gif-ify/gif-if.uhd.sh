read -p "File > "  filen

FPS=30
SCALE=3840

echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen.gif"
rm ".$filen-palette.png"
echo Done.
