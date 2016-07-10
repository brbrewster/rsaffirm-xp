set counter=0
set timesrun=0

if not exist "%homedrive%\rsaffirm\lib\TimesScheduled" (
	echo 0 > "%homedrive%\rsaffirm\lib\TimesScheduled"
)


:loop
if %counter% lss 22 (
	"%homedrive%\rsaffirm\lib\wav" %homedrive%\rsaffirm\lib\affirmations.wav /q
	set /a counter=%counter% + 1
	goto loop
)


set /p timesrun=<"%homedrive%\rsaffirm\lib\TimesScheduled"
set /a timesrun=%timesrun% + 1

if %timesrun% lss 6 (

	echo %timesrun% > "%homedrive%\rsaffirm\lib\TimesScheduled"
	"%homedrive%\rsaffirm\Start.exe"
	
	 
) ELSE (

	del "%homedrive%\rsaffirm\lib\TimesScheduled"

)



