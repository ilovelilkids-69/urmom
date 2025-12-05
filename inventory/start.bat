set BASE=%0\..
set REPORT_SHARE=\\files\inventory$
set REPORT_FILE=%REPORT_SHARE%\aida\%COMPUTERNAME%.csv

if exist %REPORT_SHARE% goto start_inventory
echo Inventory share '%REPORT_SHARE%' does not exist!
goto end

:start_inventory
start /LOW %BASE%\ldinventory -o %REPORT_FILE%.new -a 43200

:end
