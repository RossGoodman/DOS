setlocal ENABLEDELAYEDEXPANSION
set Count=0
for /F "usebackq" %%D in (`dir /b /ad /o-n %TargetRoot%\????????`) do (
 set /a Count+=1
 if !Count! leq 5 (
  echo !Count! keep folder %%D
 ) else (
  echo !Count! delete folder %%D
  rmdir /s /q %TargetRoot%\%%D
 )
)
 
