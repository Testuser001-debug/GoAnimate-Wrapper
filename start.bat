:: Important stuff
@echo off && cls
title GoAnimate Wrapper Remastered, finally!

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start GoAnimate Wrapper ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo Oh crud, not installed.
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo GoAnimate Wrapper is now starting...
echo Please navigate to http://localhost on your browser.
npm start
echo Pausing...
pause
