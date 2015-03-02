synclient TapButton1=0
synclient TapButton2=0
synclient TapButton3=0
synclient PalmDetect=1
synclient HorizTwoFingerScroll=1

feh --bg-center ~/.wallpaper.png

setxkbmap us -option ctrl:nocaps

xrdb -merge ~/.Xresources 

exec i3
