#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;30m";}
#
 HEAD()
{
 for (( a=2; a<=27; a++ ))
  do
   TPUT $a 1
        $E "\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
}
 FOOT()
{
 MARK;
      TPUT  1 1;$E "\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
      TPUT  2 3;$E "\e[1;36m Resources \e[0m\e[36m Ресурсы\e[0m";
      TPUT  3 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT  4 2;$E "\e[90m Xterm понимает все имена и классы основных ресурсов X Toolkit. Он также\e[0m";
      TPUT  5 2;$E "\e[90m использует типы ресурсов X Toolkit (такие как логические значения цвета,\e[0m";
      TPUT  6 2;$E "\e[90m шрифты, целые числа и строки) вместе с соответствующими преобразователями.\e[0m";
      TPUT  7 2;$E "\e[90m Этих типов ресурсов не всегда достаточно:\e[0m";
      TPUT  8 2;$E "\e[90m • Значения ресурсов Xterm могут быть списками имен. Типы ресурсов X Toolkit\e[0m";
      TPUT  9 2;$E "\e[90m не включают списки. Xterm использует строку для ресурса и анализирует ее.\e[0m";
      TPUT 10 2;$E "\e[90m В списках имен, разделенных запятыми, регистр не учитывается.\e[0m";
      TPUT 11 2;$E "\e[90m • Xterm может отложить обработку ресурса до тех пор, пока он не понадобится.\e[0m";
      TPUT 12 2;$E "\e[90m Например, шрифты от font2 до font7 загружаются по мере необходимости для более\e[0m";
      TPUT 13 2;$E "\e[90m быстрого запуска. Опять же, фактический тип ресурса\e[0m";
      TPUT 14 2;$E "\e[90m — это строка, анализируемая и используемая при необходимости.\e[0m";
      TPUT 15 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 26 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 28 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT 16 3; $e "Ресурсы приложений                                    \e[32m Application Resources \e[0m";}
  M1(){ TPUT 17 3; $e "Ресурсы виджетов VT100                               \e[32m VT100 Widget Resources \e[0m";}
  M2(){ TPUT 18 3; $e "Ресурсы виджетов Tek4014                           \e[32m Tek4014 Widget Resources \e[0m";}
  M3(){ TPUT 19 3; $e "Ресурсы меню                                                 \e[32m Menu Resources \e[0m";}
  M4(){ TPUT 20 3; $e "Ресурсы полосы прокрутки                                \e[32m Scrollbar Resources \e[0m";}
  M5(){ TPUT 21 3; $e "\e[32m \e[0m";}
  M6(){ TPUT 22 3; $e "\e[32m \e[0m";}
  M7(){ TPUT 23 3; $e "\e[32m \e[0m";}
  M8(){ TPUT 24 3; $e "                                                                      \e[32m vt340 \e[0m";}
#
  M9(){ TPUT 27 3; $e "Exit                                                                         ";}
LM=9
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
# Функция возвращения в меню
     ES(){ MARK;$e " ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
  0) S=M0;SC; if [[ $cur == enter ]];then R;./lXtermResourcesApplication.sh;ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;./nXtermResourcesVT100WidgetA.sh;ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;./lXtermResourcesTek4014Widget.sh;ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;./lXtermResourcesMenu.sh;ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;./nXtermResourcesScrollbar.sh;ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m xterm*decTerminalID : vt340\e[0m
\e[32m xterm*ti: vt340\e[0m
";ES;fi;;
#
  9) S=M9;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
