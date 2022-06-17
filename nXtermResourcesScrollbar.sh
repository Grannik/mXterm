#!/bin/bash
 a="\e[1;32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
 b="\e[1;32m+-----------------------------------------------+\e[0m"
#c
#d
#e
function menu {
clear
tput cup 0 0; echo -e "$a"
tput cup 1 0
 for (( c=0; c<=15; c++ ))
  do
   echo -e "\e[1;32m|                                               |\e[0m"
  done
#
tput cup  1  1;echo -e "\e[1;36m Scrollbar Resources \e[0m\e[36m Ресурсы полосы прокрутки\e[0m"
tput cup  2  0;echo -e "$b"
tput cup  3  1;echo -e "\e[32m Следующие ресурсы полезны, если они указаны\e[0m"
tput cup  4  1;echo -e "\e[32m для виджета полосы прокрутки Athena:\e[0m"
tput cup  5  1;echo -e "\e[33m [1]\e[0m background (class Background)"
tput cup  6  1;echo -e "\e[33m [2]\e[0m foreground (class Foreground)"
tput cup  7  1;echo -e "\e[33m [3]\e[0m thickness (class Thickness)"
tput cup  8  1;echo -e "\e[33m [4]\e[0m thumb (class Thumb)"
tput cup  9  1;echo -e "\e[33m [5]\e[0m width (class Width)"
tput cup 10  1;echo -e "\e[33m [6]\e[0m Включить/Отключить"
tput cup 11  1;echo -e "\e[33m [7]\e[0m Справа"
tput cup 12  0;echo -e "$b"
#
tput cup 14  0;echo -e "$b"
tput cup 15  1;echo -e "\e[33m [0]\e[0m Exit"
tput cup 16  0;echo -e "$a"
#
tput cup 13  1;echo -e "\e[33m [ ]\e[0m Ожидание ввода команды: "
tput cup 13 30;read -n 1 option
#
}
#menu software
while [ $? -ne 1 ]
do
menu
case $option in
0)
clear
exit 0
;;
1)load;clear;echo -e "
 background (class Background)
 Указывает цвет фона полосы прокрутки.
\e[32m xterm*background:black\e[0m
";;
2)load;clear;echo -e "
 Определяет цвет, (class Foreground)
 который будет использоваться для переднего плана полосы прокрутки.
\e[32m xterm*foreground:white\e[0m
";;
3)load;clear;echo -e "
 thickness (class Thickness)
 Определяет ширину полосы прокрутки в пикселях (по умолчанию: 14)
 Это может быть переопределено ресурсом ширины:
\e[32m xterm*thickness:120\e[0m
";;
4)load;clear;echo -e "
\e[32m thumb (class Thumb)\e[0m
 Пиксмап «большой палец» по умолчанию, используемый для полосы прокрутки,
 представляет собой простой шаблон шахматной доски,
 в котором пиксели чередуются для цвета переднего плана и фона.
";;
5)load;clear;echo -e "
 Задает ширину полосы прокрутки в пикселях (по умолчанию: 0).
 Виджет сначала проверяет ресурс ширины, используя значение толщины,
 если ширина равна нулю.
\e[32m xterm*width:50\e[0m
";;
6)load;clear;echo -e "
 Включить скроллбар:
\e[32m !xterm*scrollBar:true\e[0m

 Отключить скроллбар:
\e[32m !xterm*scrollBar:false\e[0m
";;
7)load;clear;echo -e "
 Включить скроллбар справа:
\e[32m xterm*rightScrollBar:true\e[0m

 Отключить скроллбар справа:
\e[32m xterm*rightScrollBar:false\e[0m
";;
*)
clear
echo -e "\e[33m Неверный ввод данных, пожалуйста повторите ввод \e[0m";;
esac
echo -en "\e[33m Пожалуйста нажмите любую клавишу для продолжения \e[0m"
read -n 1 line
done
clear
