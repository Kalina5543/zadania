@echo off
echo Czy utworzyc folder
echo jezeli tak wybierz 1
echo jezeli nie wybierz 2
set/p "wybor=>>>"
if %wybor%==1 goto 1
if %wybor%==2 goto 2
:1
cls
md = nowy folder
echo folder zostal utworzony!!!
pause
cls
echo czy zmienic nazwe folderu?
echo jezeli tak wybierz 3
echo jezeli nie wynierz 2
set/p "wybor=>>"
if %wybor%==3 goto3
if %wybor%==2 goto2
:2
echo dziekuje za uwage
pause
exit
:3
cls
echo wprowadz nazwe folderu 
set/p "nazwa=>>"
ren Nowy_folder %nazwa%
echo nazwa zostala zmieniona
pause
cls
echo czy przeniesc folder?
echo jezeli tak wybierz 4
echo jezeli nie wybierz 2
set/p "wybor=>>"
if %wybor%==4 goto4
if %wybor%==2 goto2
:4
cls
echo wpisz lokalizacja dolecowa
set/p "opcja=>>"
move %nazwa% %opcja%
echo dziekuje na uwage
pause