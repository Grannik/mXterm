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
      TPUT  4 3;$E "\e[36m- 4 -\e[0m";
      TPUT 36 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 39 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  5 3; $e "Останавливает/отключает/переключает ресурс reverseVideo \e[32m set-reverse-video() \e[0m";}
  M1(){ TPUT  6 3; $e "устанавливает/отключает или переключает ресурс reverseWrap\e[32m set-reversewrap() \e[0m";}
  M2(){ TPUT  7 3; $e "устанавливает/отключает/переключает scoFunctionKeys \e[32m set-sco-function-keys() \e[0m";}
  M3(){ TPUT  8 3; $e "устанавливает/сбрасывает/переключает ресурс scrollKey   \e[32m set-scroll-on-key() \e[0m";}
  M4(){ TPUT  9 3; $e "устанавливает/сбрасывает          scrollTtyOutput\e[32m set-scroll-on-tty-output() \e[0m";}
  M5(){ TPUT 10 3; $e "устанавливает/отключает/переключает ресурс полосы прокрутки \e[32m set-scrollbar() \e[0m";}
  M6(){ TPUT 11 3; $e "устанавливает/отключает/переключает ресурс selectToClipboard   \e[32m set-select() \e[0m";}
  M7(){ TPUT 12 3; $e "переключает встроенным/абсолютным позиционированием   \e[32m set-sixel-scrolling() \e[0m";}
  M8(){ TPUT 13 3; $e "устанавливает/отключает/переключает sunFunctionKeys \e[32m set-sun-function-keys() \e[0m";}
  M9(){ TPUT 14 3; $e "устанавливает/отключает/переключает ресурс sunKeyboard   \e[32m set-sun-keyboard() \e[0m";}
 M10(){ TPUT 15 3; $e "действие задает для шрифта, используемого в окне Tektronix   \e[32m set-tek-text() \e[0m";}
 M11(){ TPUT 16 3; $e "направляет вывод либо в окно vt                     \e[32m set-terminal-type(type) \e[0m";}
 M12(){ TPUT 17 3; $e "устанавливает, сбрасывает или переключает titeInhibit     \e[32m set-titeInhibit() \e[0m";}
 M13(){ TPUT 18 3; $e "устанавливает/отключает/переключает панели инструментов       \e[32m set-toolbar() \e[0m";}
 M14(){ TPUT 19 3; $e "устанавливает, отключает или переключает ресурс utf8Fonts  \e[32m set-utf8-fonts() \e[0m";}
 M15(){ TPUT 20 3; $e "устанавливает, отключает или переключает ресурс utf8        \e[32m set-utf8-mode() \e[0m";}
 M16(){ TPUT 21 3; $e "устанавливает, отключает или переключает ресурс utf8Title  \e[32m set-utf8-title() \e[0m";}
 M17(){ TPUT 22 3; $e "устанавливает/сбрасывает/переключает видимость окон vt, tek\e[32m set-visibility() \e[0m";}
 M18(){ TPUT 23 3; $e "устанавливает/отключает или переключает ресурс visualBell \e[32m set-visual-bell() \e[0m";}
 M19(){ TPUT 24 3; $e "устанавливает шрифты\e[32m set-vt-font(d/1/2/3/4/5/6/7/e/s[normalfont [boldfont]]) \e[0m";}
 M20(){ TPUT 25 3; $e "Установите шрифт на следующий меньший, исходя из размеров \e[32m smaller-vt-font() \e[0m";}
 M21(){ TPUT 26 3; $e "Это действие сбрасывает область прокрутки                      \e[32m soft-reset() \e[0m";}
 M22(){ TPUT 27 3; $e "Создайте новый процесс xterm                     \e[32m spawn-new-terminal(params) \e[0m";}
 M23(){ TPUT 28 3; $e "действие аналогично выбору-расширению                 \e[32m start-cursor-extend() \e[0m";}
 M24(){ TPUT 29 3; $e "Это действие похоже на select-start                          \e[32m start-extend() \e[0m";}
 M25(){ TPUT 30 3; $e "действие вставляет указанную текстовую строку                \e[32m string(string) \e[0m";}
 M26(){ TPUT 31 3; $e "действие копирует управляющие коды                               \e[32m tek-copy() \e[0m";}
 M27(){ TPUT 32 3; $e "действие очищает окно Tektronix                                  \e[32m tek-page() \e[0m";}
 M28(){ TPUT 33 3; $e "Это действие сбрасывает окно Tektronix                          \e[32m tek-reset() \e[0m";}
 M29(){ TPUT 34 3; $e "Обрабатывает событие кнопки (кроме нажатия и отпускания)        \e[32m vi-button() \e[0m";}
 M30(){ TPUT 35 3; $e "Это действие быстро мигает окном                              \e[32m visual-bell() \e[0m";}
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
 Это действие устанавливает, отключает или переключает ресурс reverseVideo.
 Он также вызывается записью reversevideo в vtMenu.
\e[32m set-reverse-video(on/off/toggle)\e[0m
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс reverseWrap.
 Он также вызывается записью reversewrap в vtMenu.
\e[32m set-reversewrap(on/off/toggle)\e[0m
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс scoFunctionKeys.
 Он также вызывается записью scoFunctionKeys в mainMenu.
\e[32m set-sco-function-keys(on/off/toggle)\e[0m
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс scrollKey.
 Он также вызывается из записи клавиши прокрутки в vtMenu.
\e[32m set-scroll-on-key(on/off/toggle)\e[0m
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс scrollTtyOutput.
 Он также вызывается из записи scrollttyoutput в vtMenu.
\e[32m set-scroll-on-tty-output(on/off/toggle)\e[0m
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс полосы прокрутки.
 Он также вызывается записью полосы прокрутки в vtMenu.
\e[32m set-scrollbar(on/off/toggle)\e[0m
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс selectToClipboard.
 Он также вызывается записью selectToClipboard в vtMenu.
\e[32m set-select(on/off/toggle)\e[0m
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие переключает между встроенным (шесть прокрутки) и абсолютным
 позиционированием. Им также можно управлять через приватный режим DEC 80 (DECSDM)
 или из записи sixelScrolling в btMenu.
\e[32m set-sixel-scrolling(on/off/toggle)\e[0m
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс sunFunctionKeys.
 Он также вызывается записью sunFunctionKeys в mainMenu.
\e[32m set-sun-function-keys(on/off/toggle)\e[0m
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс sunKeyboard.
 Он также вызывается записью sunKeyboard в mainMenu.
\e[32m set-sun-keyboard(on/off/toggle)\e[0m
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m set-tek-text(large/2/3/small)\e[0m
 Это действие задает для шрифта, используемого в окне Tektronix, значение
 выбранного ресурса в соответствии с аргументом. Аргумент может быть либо
 ключевое слово или однобуквенный псевдоним, как показано в скобках:
\e[32m large (l)\e[0m большой (л)
 Используйте ресурс fontLarge, такой же, как и пункт меню tektextlarge.
\e[32m two   (2)\e[0m два (2)
 Используйте ресурс font2, такой же, как пункт меню tektext2.
\e[32m three (3)\e[0m три (3)
 Используйте ресурс font3, так же, как пункт меню tektext3.
\e[32m small (s)\e[0m маленький (с)
 Используйте ресурс fontSmall, такой же, как и пункт меню tektextsmall.
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие направляет вывод либо в окно vt,
 либо в окно tek, в зависимости от строки типа.
 Он также вызывается записью tekmode в vtMenu и записью vtmode в tekMenu.
\e[32m set-terminal-type(type)\e[0m
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает ресурс titeInhibit,
 который управляет переключением между альтернативным и текущим экранами.
\e[32m set-titeInhibit(on/off/toggle)\e[0m
";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает, переключает функцию панели инструментов
 Он также вызывается записью панели инструментов в mainMenu.
\e[32m set-toolbar(on/off/toggle)\e[0m
";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс utf8Fonts.
 Он также вызывается записью utf8-fonts в fontMenu.
\e[32m set-utf8-fonts(on/off/toggle)\e[0m
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс utf8.
 Он также вызывается записью режима utf8 в fontMenu.
\e[32m set-utf8-mode(on/off/toggle)\e[0m
 ";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс utf8Title.
 Он также вызывается записью utf8-title в fontMenu.
\e[32m set-utf8-title(on/off/toggle)\e[0m
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, сбрасывает или переключает видимость окон vt или tek.
 Он также вызывается из записей tekshow и vthide в vtMenu
 и записей vtshow и tekhide в tekMenu.
\e[32m set-visibility(vt/tek,on/off/toggle)\e[0m
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает, отключает или переключает ресурс visualBell.
 Он также вызывается записью визуального звонка в vtMenu.
\e[32m set-visual-bell(on/off/toggle)\e[0m
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие устанавливает шрифт или шрифты, используемые в настоящее время в
 окне VTxxx. Первый аргумент — это одиночный символ, указывающий используемый шрифт:
  d или D указывают шрифт по умолчанию
  (шрифт, изначально использовавшийся при запуске xterm),
  с 1 по 7 указывают шрифты, указанные ресурсами от font1 до font7,
  e или E обозначают обычный и полужирный шрифты, которые были установлены
  с помощью escape-кодов (или указаны в качестве второго и третьего аргументов
  действия соответственно), и
  s или S указывают на выбор шрифта (сделанный такими программами, как xfontsel(1)),
  указанный вторым аргументом действия.
  Если xterm настроен на поддержку широких символов, для аргумента e распознаются
 два дополнительных необязательных параметра:
 широкий шрифт и широкий полужирный шрифт.
\e[32m set-vt-font(d/1/2/3/4/5/6/7/e/s [,normalfont [, boldfont]])\e[0m
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
 Установите шрифт на следующий меньший, исходя из размеров шрифта.
\e[32m smaller-vt-font()\e[0m
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие сбрасывает область прокрутки. Он также вызывается из записи
 softreset в vtMenu.
 Эффект идентичен управляющей последовательности мягкого сброса (DECSTR).
\e[32m soft-reset()\e[0m
";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo -e "
 Создайте новый процесс xterm. Это доступно в системах с современной версией
 файловой системы процесса, например, «/proc», которую может прочитать xterm.
 Используйте запись процесса «cwd», например, /proc/12345/cwd,
 чтобы получить рабочий каталог процесса, запущенного в текущем xterm.
 В системах с записью процесса «exe», например, /proc/12345/exe,
 используйте ее для получения фактического исполняемого файла.
 В противном случае используйте переменную \$PATH, чтобы найти xterm.
 Если в действии указаны параметры, передайте их новому процессу xterm.
\e[32m spawn-new-terminal(params)\e[0m
";ES;fi;;
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие аналогично выбору-расширению, за исключением того,
 что выделение расширяется до текущей позиции текстового курсора.
\e[32m start-cursor-extend()\e[0m
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие похоже на select-start, за исключением того,
 что выделение распространяется на текущее положение указателя.
\e[32m start-extend()\e[0m
";ES;fi;;
 25) S=M25;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие вставляет указанную текстовую строку, как если бы она была напечатана.
 Кавычки необходимы, если строка содержит пробелы или не буквенно-цифровые символы.
 Если строковый аргумент начинается с символов «0x»,
 он интерпретируется как шестнадцатеричная символьная константа.
\e[32m string(string)\e[0m
";ES;fi;;
 26) S=M26;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие копирует управляющие коды, используемые для создания содержимого
 текущего окна, в файл в текущем каталоге, имя которого начинается с COPY.
 Он также вызывается из записи tekcopy в tekMenu.
\e[32m tek-copy()\e[0m
";ES;fi;;
 27) S=M27;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие очищает окно Tektronix.
 Он также вызывается записью tekpage в tekMenu.
\e[32m tek-page()\e[0m
";ES;fi;;
 28) S=M28;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие сбрасывает окно Tektronix.
 Он также вызывается записью tekreset в tekMenu.
\e[32m tek-reset()\e[0m
";ES;fi;;
 29) S=M29;SC;if [[ $cur == enter ]];then R;echo -e "
 Обрабатывает событие кнопки (кроме нажатия и отпускания), повторяя управляющую
 последовательность
, вычисленную из номера строки события на экране относительно текущей строки:
 \e[32m ESC ^P\e[0m
or
 \e[32m ESC ^N\e[0m
 в зависимости от того, произошло ли событие до или после текущей строки
 соответственно. ^N (или ^P) повторяется один раз для каждой строки, в которой
 событие отличается от текущей строки. Последовательность управления вообще
 опускается, если событие кнопки находится в текущей строке.
\e[32m vi-button()\e[0m
";ES;fi;;
 30) S=M30;SC;if [[ $cur == enter ]];then R;echo -e "
 Это действие быстро мигает окном.
 В окне Tektronix также есть следующие действия:
 gin-press(l/L/m/M/r/R)
 Это действие отправляет указанный код графического ввода.
\e[32m visual-bell()\e[0m
";ES;fi;;
#
 31) S=M31;SC;if [[ $cur == enter ]];then R;./kXtermKeyBindingsE.sh;ES;fi;;
 32) S=M32;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
