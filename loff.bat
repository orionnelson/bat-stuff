@echo off
start "" "signalrgb://effect/apply/Good Night!"&& timeout /t 3 && start cmd /k "taskkill /F /IM SignalRgb.exe && liquidctl --match kraken set sync color off"
 
