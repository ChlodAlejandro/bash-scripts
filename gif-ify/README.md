# gif-ify
Convert any video file into a .GIF file.

*NOTE: Pronounced '(gif || jif || whatever)-ee-fi'*

## Requirements
* ffmpeg (Tested on `3.2.12-1`)

## Usage
1. Add execution permissions
```sh
chmod +x gif-ify.sh
```
2. Execute `gif-ify.sh`
```sh
$ ./gif-ify.sh
```

## Expected output
```
File > video.mkv
Generating video palette...
frame=    1 fps=0.5 q=-0.0 Lsize=N/A time=00:00:00.03 bitrate=N/A speed=0.0154x
Generated palette. Building .GIF...
frame=  <?> fps= <?> q=-0.0 Lsize=      <?> time=<?>:<?>:<?>.<?> bitrate=   <?>kbits/s speed= <?>x
Done.
```