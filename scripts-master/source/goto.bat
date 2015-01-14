@echo off

if "%1" == "" ( 
	goto default
) else (  
	goto %1
)


:default
echo no action
goto end

:up
echo ↑ up
goto end

:down
echo ↓ down

goto end

:left
echo ← left

goto end

:right
echo → right

goto end

:end

