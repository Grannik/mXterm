#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;30m";}
#
 HEAD()
{
 for (( a=2; a<=25; a++ ))
  do
   TPUT $a 1
        $E "\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
}
 FOOT()
{
 MARK;
      TPUT  1 1;$E "\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
      TPUT  2 3;$E "\e[90m\e[1;36m Files \e[0m\e[36m Файлы\e[0m";
      TPUT  3 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT  4 3;$E "\e[90mВ вашей системе фактические пути могут отличаться.\e[0m";
      TPUT  5 3;$E "\e[90m! любой текс после данного знака читается как комментарий\e[0m";
      TPUT  6 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT  8 1;$E "\e[90m├ Файлы системного журнала ──────────────────────────────────────────────────────┤\e[0m";
      TPUT 11 1;$E "\e[90m├ Ресурсы приложения xterm ──────────────────────────────────────────────────────┤\e[0m";
      TPUT 14 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 17 1;$E "\e[90m├ Настройка xterm происходит путём правки файла ~/.Xresources ───────────────────┤\e[0m";
      TPUT 21 1;$E "\e[90m├ Все настройки находятся в файлах: .bash_profile и .bashrc домашнего каталога ──┤\e[0m";
      TPUT 24 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 26 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  7 3; $e "список допустимых программ оболочки                              \e[32m/etc/shells \e[0m";}
#
  M1(){ TPUT  9 3; $e "входы пользователей в систему                                     \e[32m /etc/utmp \e[0m";}
  M2(){ TPUT 10 3; $e "входы и выходы пользователей                                      \e[32m /etc/wtmp \e[0m";}
#
  M3(){ TPUT 12 3; $e "По умолчанию                             \e[32m /usr/share/X11/app-defaults//XTerm \e[0m";}
  M4(){ TPUT 13 3; $e "Color                              \e[32m /usr/share/X11/app-defaults//XTerm-color \e[0m";}
#
  M5(){ TPUT 15 3; $e "автоматически использовать этот файл                             \e[32m .Xdefaults \e[0m";}
  M6(){ TPUT 16 3; $e "каталог, файлы растровых изображений                     \e[32m /usr/share/pixmaps \e[0m";}
#
  M7(){ TPUT 18 3; $e "Отредактировать файл                                          \e[32m ~/.Xresources \e[0m";}
  M8(){ TPUT 19 3; $e "Чтобы изменения в файле вступили в силу                       \e[32m ~/.Xresources \e[0m";}
  M9(){ TPUT 20 3; $e "Посмотреть какие настройки используются                       \e[32m ~/.Xresources \e[0m";}
#
 M10(){ TPUT 22 3; $e "                                                              \e[32m .bash_profile \e[0m";}
 M11(){ TPUT 23 3; $e "                                                                    \e[32m .bashrc \e[0m";}
#
 M12(){ TPUT 25 3; $e "Exit                                                                         ";}
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
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /etc/shells\e[0m
 содержит список допустимых программ оболочки, используемых xterm, чтобы решить,
 следует ли устанавливать переменную среды «SHELL» для процесса, запущенного xterm.
 В системах, в которых есть функция getusershell, xterm будет использовать эту
 функцию, а не напрямую читать файл, поскольку файл может отсутствовать,
 если система использует настройки по умолчанию.
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /etc/utmp\e[0m
 файл системного журнала, в котором записываются входы пользователей в систему.
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /etc/wtmp\e[0m
 файл системного журнала, в котором записываются входы и выходы пользователей.
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /usr/share/X11/app-defaults//XTerm\e[0m
 ресурсы приложения xterm по умолчанию.
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /usr/share/X11/app-defaults//XTerm-color\e[0m
 ресурсы приложения xterm color.
 Если ваш дисплей поддерживает цвет, используйте этот
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m *customization: -color\e[0m
 в вашем файле .Xdefaults, чтобы автоматически использовать этот файл ресурсов,
 а не /usr/share/X11/app-defaults//XTerm.
 Если вы этого не сделаете,
 xterm использует скомпилированные настройки ресурсов по умолчанию для цветов.
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m /usr/share/pixmaps\e[0m
 каталог, в котором установлены файлы растровых изображений xterm.
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Отредактировать файл\e[32m nano ~/.Xresources\e[0m
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Чтобы изменения в файле вступили в силу, необходимо перечитать его командой:
\e[32m xrdb ~/.Xresources\e[0m

 или загрузить заново:
\e[32m xrdb -load ~/.Xresources\e[0m
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m xrdb -query -all\e[0m
";ES;fi;;
 10) S=M10;SC; if [[ $cur == enter ]];then R;echo -e " ";ES;fi;;
 11) S=M11;SC; if [[ $cur == enter ]];then R;echo -e " ";ES;fi;;
#
 12) S=M12;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
