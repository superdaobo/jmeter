@echo off
et JMETER_HOME=%cd%\apache-jmeter-5.5

echo Starting JMeter...
echo JMETER_HOME=%JMETER_HOME%
echo.

tart /B %JMETER_HOME%\bin\jmeter.bat -t %JMETER_HOME%\lcyz.jmx -Jjmeter.ave.aveervice.output_format=cv

echo JMeter ha tarted.
echo.

paue
