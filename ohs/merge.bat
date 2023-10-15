@ECHO Off
SETLOCAL

del combined.csv

for %%f in (*.csv) do (
    (ECHO %%f | FIND /I "combined.csv" > NUL) || (
        type "%%f"	
        echo.
   )>> combined.csv
)
ECHO Merged files to 'combined.csv'
PAUSE