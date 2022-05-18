@echo off
start cmd /k "taskkill /F /IM SignalRgb.exe && liquidctl --match kraken set sync color off"