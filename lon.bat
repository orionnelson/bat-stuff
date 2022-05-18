@echo off
start cmd /k "liquidctl --match kraken set sync color fixed ff0000 && start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WhirlwindFX\SignalRgb.lnk" && timeout /t 3 && taskkill /im signalrgb.exe"
(python -c "print(' '.join([word.capitalize() for word in '%*'.split(' ')]).strip())" & echo.)>2 & (set /p result=)<2
echo "%result%"                                                                                                                                                                         
start "" "signalrgb://effect/apply/%result%"