#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;30m";}
#
 HEAD()
{
 for (( a=2; a<=18; a++ ))
  do
   TPUT $a 1
        $E "\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
}
 FOOT()
{
 MARK;
      TPUT  1 1;$E "\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
      TPUT  2 1;$E "\e[90m├─ \e[1;36m See Also \e[0m\e[36m Смотрите также \e[0m\e[90m ───────────────────────────────────────────────────┤\e[0m";
      TPUT  3 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 13 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 17 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 19 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  4 3; $e "                                                       \e[36m resize               \e[0m";}
  M1(){ TPUT  5 3; $e "                                                       \e[36m tty                  \e[0m";}
  M2(){ TPUT  6 3; $e "                                                       \e[36m luit                 \e[0m";}
  M3(){ TPUT  7 3; $e "                                                       \e[36m pty                  \e[0m";}
  M4(){ TPUT  8 3; $e "                                                       \e[36m Xcursor              \e[0m";}
  M5(){ TPUT  9 3; $e "                                                       \e[36m X                    \e[0m";}
  M6(){ TPUT 10 3; $e "                                                       \e[36m uxterm               \e[0m";}
  M7(){ TPUT 11 3; $e "                                                       \e[36m lsix                 \e[0m";}
  M8(){ TPUT 12 3; $e "                                                       \e[36m xlsfonts             \e[0m";}
#
  M9(){ TPUT 14 3; $e "Последовательности управления Xterm                    \e[32m это файл ctlseqs.ms  \e[0m";}
 M10(){ TPUT 15 3; $e "Интерфейс языка C (Xt)                                 \e[32m X Toolkit Intrinsics \e[0m";}
 M11(){ TPUT 16 3; $e "Полезные сайты                                                               ";}
#
 M12(){ TPUT 18 3; $e "Exit                                                                         ";}
LM=12
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
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Программой xlsfonts можно вывести список всех доступных шрифтов:
\e[32m xlsfonts | less\e[0m";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "\e[36m
 https://invisible-island.net/xterm/xterm.html
 https://invisible-island.net/xterm/manpage/xterm.html
 https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
 https://invisible-island.net/xterm/xterm.faq.html
 https://invisible-island.net/xterm/xterm.log.html
\e[0m";ES;fi;;
 10) S=M10;SC; if [[ $cur == enter ]];then R;echo "
 Джоэл МакКормак, Пол Асенте, Ральф Р. Свик (1994), Томас Э. Дики (2019).
  Руководство по соглашениям о межклиентском общении (ICCCM),
 Дэвид Розенталь и Стюарт В. Маркс (версия 2.0, 1994 г.).
  Подсказки расширенного оконного менеджера (EWMH),
 X Desktop Group (версия 1.3, 2005 г.).
  EWMH широко использует UTF8_STRING без его определения, но упоминает ICCCM.
 Версия 2.0 ICCCM не поддерживает UTF-8. Это расширение добавлено в XFree86.
 • Маркус Кун резюмировал это в разделе «Часто задаваемые вопросы по UTF-8
 и Unicode для Unix/Linux» (2001 г.) в разделе «Готов ли X11 к Unicode?»
\e[36m https://www.cl.cam.ac.uk/~mgk25/unicode.html\e[0m
 • Юлиуш Хробочек предложил атом выбора UTF8_STRING в 1999/2000,
 который стал частью ICCCM в XFree86.
\e[36m https://www.irif.fr/~jch/software/UTF8_STRING/\e[0m
   Разработчик Xorg удалил эту часть документации в 2004 году
 при включении другой работы из XFree86 в Xorg.
 Эта функция по-прежнему поддерживается в Xorg,
 хотя и недокументирована по состоянию на 2019 год.
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Просмотр миниатюр изображений в терминале
\e[36m http://rus-linux.net/MyLDP/consol/Thumbnail_Images_In_Terminal.html
\e[0m";ES;fi;;
#
 12) S=M12;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
