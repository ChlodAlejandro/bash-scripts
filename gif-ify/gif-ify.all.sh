read -p "File > "  filen

FPS=10
SCALE=320

echo "============= [ TOILET (320 @ 10fps) ] ============="

echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen-toilet.gif"
rm ".$filen-palette.png"
echo Done.

FPS=30
SCALE=1280

echo "============= [ BALANCED (720 @ 30fps) ] ============="

echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen-bal.gif"
rm ".$filen-palette.png"
echo Done.

FPS=30
SCALE=1920

echo "============= [ HIGH-DEF (1080 @ 30fps) ] ============="

echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen-hd.gif"
rm ".$filen-palette.png"
echo Done.

FPS=30
SCALE=3840

echo "============= [ UHD-1 (2160 @ 30fps) ] ============="

echo Generating video palette...
ffmpeg -v quiet -stats -y -i "$filen" \-vf fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen ".$filen-palette.png"
echo Generated palette. Building .GIF...
ffmpeg -v quiet -stats -i "$filen" -i ".$filen-palette.png" -filter_complex \ "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$filen-uhd.gif"
rm ".$filen-palette.png"
echo Done.