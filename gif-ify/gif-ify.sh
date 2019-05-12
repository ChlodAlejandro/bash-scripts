read -p "File > "  filen
echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=30,scale=720:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=30,scale=720:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen.gif"
rm ".$filen-palette.png"
echo Done.
