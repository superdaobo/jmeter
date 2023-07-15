@echo off
set JMETER_HOME=%cd%\apache-jmeter-5.5

echo Starting JMeter...
echo JMETER_HOME=%JMETER_HOME%
echo.

start /B %JMETER_HOME%\bin\jmeter.bat -t %JMETER_HOME%\lcyz.jmx -Jjmeter.save.saveservice.output_format=csv

echo JMeter has started.
echo.

pause