@echo off
echo to program kalkulator
echo podaj x
set/p "x=>>"
echo podaj y
set/p "y=>>"
echo zmienna x wynosi %x%
echo zmienna y wynosi %y%

echo wybierz dzialanie
echo 1 dodawanie
echo 2 odejmowanie
echo 3 mnozenie
echo 4 dzielenie
 
set/p "o=>>"
if %o%==1 (
	echo wybrales dodawanie
	set/a "wynik=%x%+%y%"
) else if %o%==2 (
	echo wybrales odejmowanie
	set/a "wynik=%x%-%y%"
) else if %o%==3 (
	echo wybrales mnozenie
	set/a "wynik=%x% * %y%"
) else if %o%==4 (
	echo wybrales dzielenie
	set/a "wynik=%x% / %y%"
) else (
	echo nieznana operacja
	pause
	exit 1
)

echo wynik: %wynik%


pause
