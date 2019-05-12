# gif-ify
Convert any video file into a .GIF file.

*NOTE: Pronounced '(gif || jif || whatever)-ee-fi'*

## Requirements
* ffmpeg (Tested on `3.2.12-1`)

## Usage

**By default, you are using `gif-ify.balanced.sh`. If you wish to have a better quality of GIF, you need to download a different type (`gif-ify.uhd.sh`, for example) then rename it to `gif-ify.sh`. You may also choose not to do this, if you're satisfied with the quality of GIFs the balanced version outputs.**

*Also, `gif-ify.all.sh` is for testing purposes only. This generates .GIFs for every stock quality level.*

1. Add execution permissions if you haven't already.
```sh
$ chmod +x gif-ify.sh
```
2. Execute `gif-ify.sh`.
```sh
$ ./gif-ify.sh
```

## Expected Output
```
File > video.mkv
Generating video palette...
frame=    1 fps=0.5 q=-0.0 Lsize=N/A time=00:00:00.03 bitrate=N/A speed=0.0154x
Generated palette. Building .GIF...
frame=  <?> fps= <?> q=-0.0 Lsize=      <?> time=<?>:<?>:<?>.<?> bitrate=   <?>kbits/s speed= <?>x
Done.
```

## Developer Notes
You can create your own quality presets by duplicating the `gif-ify.sh` file and replacing the `FPS` and `SCALE` variables.