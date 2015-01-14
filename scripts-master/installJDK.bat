echo ********************************************
echo ** setting up the Java environment variables
echo ** author dongc
echo ** date 2014-08-13 16:07
echo ********************************************

@echo off

echo ---TODO check jdk path---


echo ---SET JDK ENVIRONMENT---
:setpath
set /p jdkpath="Please Enter Jdk's directory path:"
goto checkpath

:checkpath
if not exist "%jdkpath%" (
	echo jdkpath not exist
	goto setpath
) else (
	goto setenv
)


:setenv
echo %jdkpath%
wmic ENVIRONMENT where "name='JAVA_HOME'" delete 
wmic ENVIRONMENT where "name='CLASSPATH'" delete
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="%jdkpath%"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%PATH%;%jdkpath%\bin"
wmic ENVIRONMENT where "name='JAVA_HOME'" get username,VariableValue
wmic ENVIRONMENT create name="CLASSPATH",username="<system>",VariableValue="%jdkpath%\lib"
goto end
:end


echo SUCCESS! SET JDK ENVIRONMENT

pause
exit