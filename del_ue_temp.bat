@echo off
rmdir /q /s Binaries
rmdir /q /s Build
rmdir /q /s DerivedDataCache
rmdir /q /s Intermediate
rmdir /q /s Saved
rmdir /q /s .vs

del *.sln

for /f "usebackq tokens=*" %%i in (`dir /b /s /a:d Binaries`) do (
  rmdir /q /s "%%i"
  rem rd /s /q "%%i"
)

for /f "usebackq tokens=*" %%i in (`dir /b /s /a:d Intermediate`) do (
  rmdir /q /s "%%i"
  rem rd /s /q "%%i"
)