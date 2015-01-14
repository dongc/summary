@echo off

echo ---create floder---
if not exist "E:\\batch\\output" (
	echo create output floder
	md output
)

echo ---append '>' '>>' ---
echo weclome to batch script > targetfile.txt

echo ---pause---
echo pause ,Press any key to continue
pause

echo ---exit---
echo exit detail

if errorlevel 1 (
	echo error 1
) else if errorlevel 2 (
	echo error 2
) else (
	echo success
)

call subif.bat 1
echo --Back to normal--


echo ---type output file content---
type targetfile.txt

echo ---FOR %%var IN set DO command---
echo 6. for in 
set items=a b c d
set letters=x y z

for %%a in (%items%) do (
	for %%b in (%letters%) do (
		call output.bat %%a %%b
	)
)

echo ---FOR *.txt---
for %%a in (*.txt) do (
	type %%a
)


echo ---print file content by line--- 
for /F "delims=" %%a in (targetfile.txt) do (
	echo %%a
)

echo ---iterator Array---
for /L %%i in (1,1,5) do (
	echo %%i
)

echo ---if---
call if.bat 2

rem ---goto---
echo 11. goto 
call goto.bat up

echo ---string handle---
set v1= hello world
set v2= dongc

echo 21. string join
set vnew=%v1%%v2%
echo %vnew%

echo 22. string substr
echo %v1:~1,5%

echo 23. string replace
echo %vnew:dongc=dc%
echo %vnew: =%

echo 31. integer 

echo 32. External input
set /p exInput="please input string:   "
echo %input%

echo 33. check variable defined
if defined exInput (
	echo %exInput% defined
) else (
	echo not defined
)


echo ---enviroment variable---
echo 41. current directory
echo %CD%

echo 42. current Date
echo %DATE%

echo 43. current Time
echo %TIME%

echo 44. random
echo %RANDOM%

echo 45. 
exit /b




