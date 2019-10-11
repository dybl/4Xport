@echo off

::Set the log file name, we simply use "report.log" as the name. 
set LogFile=report.log

:: You can also generate the log file name according to the system time. (e.g. 201008051121.log)
::set hh=%time:~0,2%
::if /i %hh% LSS 10 (set hh=0%time:~1,1%)
::set LogFile=%location%%date:~10,4%%date:~4,2%%date:~7,2%%hh%%time:~3,2%%time:~6,2%.log


::Set the default error number
set/a ErrorNumber=0

::User need to input the DB Server name and DB name.
::set /p servername=DB Server Name (eg. localhost):
::set /p DBname=Database Name (eg. TestDB):
::set  servername="172.17.17.121\BI2012"
set  servername="127.0.0.1"
set  DBname="HOSPITAL_CUBEDB"
set  username="sa"
set  pwd="junjc9"

:askagain
set /p continueFlag=Did u set the sql connection string ?Are you sure to run SQL Scripts? (Y,N):

if /i "%continueFlag%" equ "Y" goto loop
if /i "%continueFlag%" equ "N" goto end
goto askagain


:loop
echo Deployed Time: %date% %time% >> %LogFile%
echo Server Name: %servername% >> %LogFile%
echo DB Name: %DBname% >> %LogFile%
echo --------------------------------------------------------------------------------------->> %LogFile%

:: put the scripts in current direction 
for /f %%f IN ('dir /o /b *.sql') DO (
echo Deploying %%f >> %LogFile%
sqlcmd -i "%%f" -S %servername% -d %DBname% -U %username% -P %pwd%
if ERRORLEVEL==1 (
echo ^<ERROR^> Error happens when delpoying "%%f". >> %LogFile%
set/a ErrorNumber+=1
)
)

echo --------------------------------------------------------------------------------------->> %LogFile%
echo Total Errors: %ErrorNumber% >> %LogFile%
echo.>> %LogFile%
echo.>> %LogFile%

echo -------------------------------------------
echo Errors: %ErrorNumber%
echo Log File: %LogFile%
pause

:end
exit