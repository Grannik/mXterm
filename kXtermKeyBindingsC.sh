#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;30m";}
#
 HEAD()
{
 for (( a=2; a<=38; a++ ))
  do
   TPUT $a 1
        $E "\e[90m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
}
 FOOT()
{
 MARK;
      TPUT  1 1;$E "\e[90m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
      TPUT  2 3;$E "\e[1;36mKey Bindings \e[0m\e[36m Привязки клавиш\e[0m";
      TPUT  3 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT  4 3;$E "\e[36m- 3 -\e[0m";
      TPUT 36 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 39 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  5 3; $e "Это действие похоже на select-start                   \e[32m select-cursor-start() \e[0m";}
  M1(){ TPUT  6 3; $e "Помещает выделенный текст во все выделения     \e[32m select-end(destname [, ...]) \e[0m";}
  M2(){ TPUT  7 3; $e "Это действие отслеживает указатель и расширяет выделение    \e[32m select-extend() \e[0m";}
  M3(){ TPUT  8 3; $e "Это действие сохраняет текст                                   \e[32m select-set() \e[0m";}
  M4(){ TPUT  9 3; $e "Выделение текста в текущем местоположении указателя          \e[32m select-start() \e[0m";}
  M5(){ TPUT 10 3; $e "Отправляет сигнал с именем signname в подпроцесс xterm \e[32m send-signal(signame) \e[0m";}
  M6(){ TPUT 11 3; $e "Сбрасывает/переключает ресурс восьмибитового управления \e[32m set-8-bit-control() \e[0m";}
  M7(){ TPUT 12 3; $e "Устанавливает/отключает/переключает ресурс c132 \e[32m set-allow132(on/off/toggle) \e[0m";}
  M8(){ TPUT 13 3; $e "Устанавливает между альтернативным и текущим экранами       \e[32m set-altscreen() \e[0m";}
  M9(){ TPUT 14 3; $e "Устанавливает режим обработки клавиши курсора приложения    \e[32m set-appcursor() \e[0m";}
 M10(){ TPUT 15 3; $e "Устанавливает обработку режима клавиатуры приложения        \e[32m set-appkeypad() \e[0m";}
 M11(){ TPUT 16 3; $e "Устанавливает автоматическую вставку перевода строки     \e[32m set-autolinefeed() \e[0m";}
 M12(){ TPUT 17 3; $e "Автоматический перенос длинных строк            \e[32m set-autowrap(on/off/toggle) \e[0m";}
 M13(){ TPUT 18 3; $e "Устанавливает/сбрасывает/переключает ресурс backarrowKey    \e[32m set-backarrow() \e[0m";}
 M14(){ TPUT 19 3; $e "Устанавливает/отключает/переключает ресурс bellIsUrgent  \e[32m set-bellIsUrgent() \e[0m";}
 M15(){ TPUT 20 3; $e "Устанавливает/отключает/переключает ресурс curses \e[32m          set-cursesemul() \e[0m";}
 M16(){ TPUT 21 3; $e "Устанавливает/сбрасывает/переключает ресурс cursorBlink   \e[32m set-cursorblink() \e[0m";}
 M17(){ TPUT 22 3; $e "Устанавливает/отключает/переключает fontDoublesize    \e[32m set-font-doublesize() \e[0m";}
 M18(){ TPUT 23 3; $e "Устанавливает/сбрасывает/переключает состояние xterm \e[32m set-font-linedrawing() \e[0m";}
 M19(){ TPUT 24 3; $e "Устанавливает/сбрасывает/переключает forcePackedFont      \e[32m set-font-packed() \e[0m";}
 M20(){ TPUT 25 3; $e "Устанавливает/отключает/переключает hpFunctionKeys   \e[32m set-hp-function-keys() \e[0m";}
 M21(){ TPUT 26 3; $e "Устанавливает ресурс прыжковой прокрутки                   \e[32m set-jumpscroll() \e[0m";}
 M22(){ TPUT 27 3; $e "Устанавливает/отключает/переключает ресурс             \e[32m set-keep-clipboard() \e[0m";}
 M23(){ TPUT 28 3; $e "Устанавливает/сбрасывает/переключает keepSelection     \e[32m set-keep-selection() \e[0m";}
 M24(){ TPUT 29 3; $e "Устанавливает/отменяет/ состояние параметра ведения журнала   \e[32m set-logging() \e[0m";}
 M25(){ TPUT 30 3; $e "Устанавливает, отключает или переключает ресурс marginBell \e[32m set-marginbell() \e[0m";}
 M26(){ TPUT 31 3; $e "Действие переключает состояние ресурса numLock  \e[32m set-num-lock(on/off/toggle) \e[0m";}
 M27(){ TPUT 32 3; $e "Устанавливает/сбрасывает состояние устаревших клавиш\e[32m set-old-function-keys() \e[0m";}
 M28(){ TPUT 33 3; $e "Устанавливает, отключает или переключает ресурс popOnBell \e[32m set-pop-on-bell() \e[0m";}
 M29(){ TPUT 34 3; $e "Устанавливает/сбрасывает         privateColorRegisters \e[32m set-private-colors() \e[0m";}
 M30(){ TPUT 35 3; $e "Устанавливает/отключает/переключает ресурс renderFont     \e[32m set-render-font() \e[0m";}
#
 M31(){ TPUT 37 3; $e "Далее                                                                  \e[32m Next \e[0m";}
 M32(){ TPUT 38 3; $e "Выход                                                                  \e[32m Exit \e[0m";}
LM=32
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
 Это действие похоже на select-start, за исключением того,
 что оно начинает выделение с текущей позиции текстового курсора.
\e[32m select-cursor-start()\e[0m
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие помещает выделенный в данный момент текст во все выделения или
 вырезаемые буферы, указанные в параметре destname.
 Он также отправляет положение мыши и обновляет внутреннее состояние выбора,
 чтобы отразить окончание процесса выбора.
\e[32m select-end(destname [, ...])\e[0m
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие отслеживает указатель и расширяет выделение.
 Он должен быть привязан только к событиям движения.
\e[32m select-extend()\e[0m
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие сохраняет текст,
 соответствующий текущему выбору, не влияя на режим выбора.
\e[32m select-set()\e[0m
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие начинает выделение текста в текущем местоположении указателя.
 См. раздел «ИСПОЛЬЗОВАНИЕ УКАЗАНИЯ» для получения информации о выборе.
\e[32m select-start()\e[0m
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие отправляет сигнал с именем signname в подпроцесс xterm (оболочку
 или программу, указанную с параметром командной строки -e).
 Он также вызывается приостановкой, продолжением, прерыванием, зависанием,
 завершением и уничтожением записей в mainMenu.
 suspend, continue, interrupt, hangup, terminate, and kill entries in mainMenu
 Допустимые имена сигналов (регистр не имеет значения):
 tstp (если поддерживается операционной системой),
 suspend (то же, что и tstp),
 cont (если поддерживается операционной системой),
 int, hup, term, quit, alrm, alarm ( то же, что и alrm) и kill.
\e[32m send-signal(signame)\e[0m
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс восьмибитового
 управления. Он также вызывается из записи 8-битного управления в vtMenu.
\e[32m set-8-bit-control(on/off/toggle)\e[0m
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс c132.
 Он также вызывается из записи allow132 в vtMenu.
\e[32m set-allow132(on/off/toggle)\e[0m
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает,
 отключает или переключает между альтернативным и текущим экранами.
\e[32m set-altscreen(on/off/toggle)\e[0m
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает режим обработки клавиши
 курсора приложения, а также вызывается записью appcursor в vtMenu.
\e[32m set-appcursor(on/off/toggle)\e[0m
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает обработку режима клавиатуры
 приложения, а также вызывается записью appkeypad в vtMenu.
\e[32m set-appkeypad(on/off/toggle)\e[0m
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или включает автоматическую вставку
 перевода строки. Он также вызывается записью autolinefeed в vtMenu.
\e[32m set-autolinefeed(on/off/toggle)\e[0m
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или включает автоматический перенос длинных
 строк. Он также вызывается записью autowrap в vtMenu.
\e[32m set-autowrap(on/off/toggle)\e[0m
";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс backarrowKey.
 Он также вызывается с помощью клавиши со стрелкой назад в vtMenu.
\e[32m set-backarrow(on/off/toggle)\e[0m
";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс bellIsUrgent.
 Он также вызывается записью bellIsUrgent в vtMenu.
\e[32m set-bellIsUrgent(on/off/toggle)\e[0m
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс curses.
 Он также вызывается из записи cursemul в vtMenu.
\e[32m set-cursesemul(on/off/toggle)\e[0m
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс cursorBlink.
 Он также вызывается из записи cursorblink в vtMenu.
\e[32m set-cursorblink(on/off/toggle)\e[0m
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс fontDoublesize.
 Он также вызывается записью font-doublesize в fontMenu.
\e[32m set-font-doublesize(on/off/toggle)\e[0m
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает состояние xterm в
 зависимости от того, имеет ли текущий шрифт символы рисования линий и должен ли
 он рисовать их напрямую. Это также вызывается записью font-linedrawing в fontMenu.
\e[32m set-font-linedrawing(on/off/toggle)\e[0m
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс forcePackedFont,
 который управляет использованием минимальной или максимальной ширины глифа
 шрифта. Это действие также вызывается записью font-packed в fontMenu.
\e[32m set-font-packed(on/off/toggle)\e[0m
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс hpFunctionKeys.
 Он также вызывается записью hpFunctionKeys в mainMenu.
\e[32m set-hp-function-keys(on/off/toggle)\e[0m
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс прыжковой прокрутки.
 Он также вызывается записью jumpscroll в vtMenu.
\e[32m set-jumpscroll(on/off/toggle)\e[0m
";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс keepClipboard.
\e[32m set-keep-clipboard(on/off/toggle)\e[0m
";ES;fi;;
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс keepSelection.
 Он также вызывается записью keepSelection в vtMenu.
\e[32m set-keep-selection(on/off/toggle)\e[0m
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает,
 отменяет или переключает состояние параметра ведения журнала.
\e[32m set-logging(on/off/toggle)\e[0m
";ES;fi;;
 25) S=M25;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс marginBell
\e[32m set-marginbell(on/off/toggle)\e[0m
";ES;fi;;
 26) S=M26;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие переключает состояние ресурса numLock.
\e[32m set-num-lock(on/off/toggle)\e[0m
";ES;fi;;
 27) S=M27;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает состояние устаревших
 функциональных клавиш. Он также вызывается записью oldFunctionKeys в mainMenu.
\e[32m set-old-function-keys(on/off/toggle)\e[0m
";ES;fi;;
 28) S=M28;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс popOnBell.
 Он также вызывается записью poponbell в vtMenu.
\e[32m set-pop-on-bell(on/off/toggle)\e[0m
";ES;fi;;
 29) S=M29;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает,
 сбрасывает или переключает ресурс privateColorRegisters
\e[32m set-private-colors(on/off/toggle)\e[0m
";ES;fi;;
 30) S=M30;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс renderFont.
 Он также вызывается записью render-font в fontMenu.
\e[32m set-render-font(on/off/toggle)\e[0m
";ES;fi;;
#
 31) S=M31;SC;if [[ $cur == enter ]];then R;./kXtermKeyBindingsD.sh;ES;fi;;
 32) S=M32;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
