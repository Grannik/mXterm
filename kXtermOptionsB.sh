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
      TPUT  2 1;$E "\e[90m├─ \e[1;36m Options \e[0m\e[36m Опции \e[0m\e[90m ─────────────────────────────────────────────────────────────┤\e[0m";
      TPUT  3 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 36 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 39 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  4 3; $e "Сбросьте ресурс cjkWidth                                         \e[32m +cjk_width \e[0m";}
  M1(){ TPUT  5 3; $e "Этот параметр позволяет переопределить класс ресурсов xterm   \e[32m -class string \e[0m";}
  M2(){ TPUT  6 3; $e "Oтключает распознавание управляющих последовательностей цвета ANSI      \e[32m -cm \e[0m";}
  M3(){ TPUT  7 3; $e "Bключает распознавание escape-последовательностей изменения цвета ANSI  \e[32m +cm \e[0m";}
  M4(){ TPUT  8 3; $e "Cимволы новой строки не должны быть обрезаны                            \e[32m -cn \e[0m";}
  M5(){ TPUT  9 3; $e "Cимволы новой строки должны быть обрезаны при выборе построчного режима \e[32m +cn \e[0m";}
  M6(){ TPUT 10 3; $e "Этот параметр указывает цвет, используемый для текстового курсора \e[32m -cr color \e[0m";}
  M7(){ TPUT 11 3; $e "Xterm должен устранить ошибку в программе more                          \e[32m -cu \e[0m";}
  M8(){ TPUT 12 3; $e "Этот параметр указывает, что xterm не должен работать с ошибкой more    \e[32m +cu \e[0m";}
  M9(){ TPUT 13 3; $e "Oтключает escape-последовательность для изменения динамических цветов   \e[32m -dc \e[0m";}
 M10(){ TPUT 14 3; $e "Escape-последовательности изменять динамические цвета                   \e[32m +dc \e[0m";}
 M11(){ TPUT 15 3; $e "Эта опция указывает программу                  \e[32m -e program [ arguments ... ] \e[0m";}
 M12(){ TPUT 16 3; $e "Этот параметр определяет кодировку, в которой работает xterm   \e[32m -en encoding \e[0m";}
 M13(){ TPUT 17 3; $e "Этот параметр устанавливает шаблон для шрифтов                  \e[32m -fa pattern \e[0m";}
 M14(){ TPUT 18 3; $e "Этот параметр определяет шрифт                                     \e[32m -fb font \e[0m";}
 M15(){ TPUT 19 3; $e "Xterm должен сравнивать ограничивающие рамки                           \e[32m -fbb \e[0m";}
 M16(){ TPUT 20 3; $e "Hе должен ограничивающие рамки обычного и полужирного шрифтов          \e[32m +fbb \e[0m";}
 M17(){ TPUT 21 3; $e "Oбычные и полужирные шрифты содержат символы рисования линий VT100     \e[32m -fbx \e[0m";}
 M18(){ TPUT 22 3; $e "Oбычные и полужирные шрифты содержат символы рисования линий VT100     \e[32m +fbx \e[0m";}
 M19(){ TPUT 23 3; $e "Укажите исходный шрифт, выбранный в меню шрифтов             \e[32m -fc fontchoice \e[0m";}
 M20(){ TPUT 24 3; $e "Этот параметр устанавливает шаблон для шрифтов двойной ширины   \e[32m -fd pattern \e[0m";}
 M21(){ TPUT 25 3; $e "Этот параметр устанавливает шрифт для активных значков             \e[32m -fi font \e[0m";}
 M22(){ TPUT 26 3; $e "Устанавливает размер шрифта для шрифтов, из библиотеки FreeType    \e[32m -fs size \e[0m";}
 M23(){ TPUT 27 3; $e "Запросить разрешение на использование полноэкранного режима     \e[32m -fullscreen \e[0m";}
 M24(){ TPUT 28 3; $e "Не запросить разрешение на использование полноэкранного режима  \e[32m +fullscreen \e[0m";}
 M25(){ TPUT 29 3; $e "Шрифт, который будет использоваться для отображения широкого текста\e[32m -fw font \e[0m";}
 M26(){ TPUT 30 3; $e "Oпределяет шрифт, для отображения полужирного широкого текста     \e[32m -fwb font \e[0m";}
 M27(){ TPUT 31 3; $e "Указывает шрифт, для отображения строки редактирования             \e[32m -fx font \e[0m";}
 M28(){ TPUT 32 3; $e "Смотри -selbg                                                     \e[32m -hc color \e[0m";}
 M29(){ TPUT 33 3; $e "Для функциональных клавиш должны быть сгенерированы escape-коды         \e[32m -hf \e[0m";}
 M30(){ TPUT 34 3; $e "Escape-коды функциональных клавиш HP не должны  генерироваться          \e[32m +hf \e[0m";}
 M31(){ TPUT 35 3; $e "Переопределить перевернутые цвета переднего плана/фона в фрагменте      \e[32m -hm \e[0m";}
#
 M32(){ TPUT 37 3; $e "Далее                                                         \e[32m Next          \e[0m";}
 M33(){ TPUT 38 3; $e "Exit                                                                         ";}
LM=33
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
\e[32m +cjk_width\e[0m
 Сбросьте ресурс cjkWidth
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -class string\e[0m
   Этот параметр позволяет переопределить класс ресурсов xterm.
 Обычно это «XTerm», но можно установить другой класс, например «UXTerm»,
 для переопределения выбранных ресурсов.
   X Toolkit устанавливает свойство WM_CLASS,
 используя имя экземпляра и значение этого класса.
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -cm\e[0m
 Этот параметр отключает распознавание управляющих последовательностей изменения
 цвета ANSI. Он устанавливает для ресурса colorMode значение «false».
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m +cm\e[0m
 Эта опция включает распознавание escape-последовательностей изменения цвета ANSI.
 Это то же самое, что и colorMode ресурса vt100.
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -cn\e[0m
 Этот параметр указывает, что символы новой строки не должны быть обрезаны при
 выборе построчного режима.
 Он устанавливает для ресурса cutNewline значение «false».
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m +cn\e[0m
 Этот параметр указывает, что символы новой строки должны быть обрезаны при
 выборе построчного режима.
 Он устанавливает для ресурса cutNewline значение «true».
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -cr color\e[0m
 Этот параметр указывает цвет, используемый для текстового курсора.
 По умолчанию используется тот же цвет переднего плана, что и для текста.
 Он устанавливает ресурс cursorColor в соответствии с параметром.
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -cu\e[0m
 Эта опция указывает, что xterm должен устранить ошибку в программе more,
 из-за которой она неправильно отображает строки, которые точно соответствуют
 ширине окна и за которыми следует строка, начинающаяся с табуляции (начальные
 табуляции не отображаются). Эта опция названа так потому,
 что изначально считалась ошибкой в пакете движения курсора curses(3x).
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m +cu \e[0m
 Этот параметр указывает, что xterm не должен работать с ошибкой more,
 упомянутой выше.
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m -dc\e[0m
 Этот параметр отключает escape-последовательность для изменения динамических
 цветов:
 цвета переднего плана и фона vt100,
 цвет его текстового курсора,
 цвета переднего плана
 и фона курсора указателя,
 цвета переднего плана
 и фона эмулятора Tektronix,
 цвет его текстового курсора
 и цвет выделения.
 Опция устанавливает для параметра dynamicColors значение «false».
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m +dc\e[0m
 Этот параметр позволяет escape-последовательности изменять динамические цвета.
 Опция устанавливает для параметра dynamicColors значение «true».
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -e program [ arguments ... ]\e[0m
 Эта опция указывает программу (и ее аргументы командной строки),
 которую нужно запустить в окне xterm.
 Он также устанавливает заголовок окна и имя значка в качестве базового имени
 выполняемой программы, если в командной строке не указаны ни -T, ни -n.
 ПРИМЕЧАНИЕ. Это должен быть последний параметр в командной строке.
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -en encoding\e[0m
 Этот параметр определяет кодировку, в которой работает xterm.
 Он устанавливает ресурс локали. Кодировки, отличные от UTF-8, поддерживаются
 с помощью luit.
 Параметр -lc следует использовать вместо -en для систем с поддержкой локали.
";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fa pattern\e[0m
 Этот параметр устанавливает шаблон для шрифтов, выбранных из библиотеки FreeType,
 если поддержка этой библиотеки была скомпилирована в xterm.
 Это соответствует ресурсу faceName
 Если вы укажете и -fa, и параметр X Toolkit -fn,
 то параметр -fa переопределит последний.
 См. также ресурс renderFont,
 который в сочетании с этим определяет, активны ли изначально шрифты FreeType.
";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fb font\e[0m
 Этот параметр определяет шрифт, который будет использоваться при отображении
 полужирного текста. Он устанавливает ресурс boldFont.
 Этот шрифт должен иметь ту же высоту и ширину, что и обычный шрифт,
 в противном случае он игнорируется.
 Если указан только один из обычных или полужирных шрифтов,
 он будет использоваться как обычный шрифт,
 а полужирный шрифт будет создан путем зачеркивания этого шрифта.
 См. также обсуждение ресурсов boldMode и alwaysBoldMode.
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fbb\e[0m
 Этот параметр указывает, что xterm должен сравнивать ограничивающие рамки
 обычного и полужирного шрифтов, чтобы убедиться в их совместимости.
 Он устанавливает для ресурса freeBoldBox значение «false».
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m +fbb\e[0m
 Этот параметр указывает, что xterm не должен сравнивать ограничивающие рамки
 обычного и полужирного шрифтов, чтобы убедиться в их совместимости.
 Он устанавливает для ресурса freeBoldBox значение «true».
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fbx\e[0m
 Этот параметр указывает, что xterm не должен предполагать,
 что обычные и полужирные шрифты содержат символы рисования линий VT100.
 Если какие-либо отсутствуют, xterm нарисует символы напрямую.
 Он устанавливает для ресурса forceBoxChars значение «false».
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m +fbx \e[0m
 Этот параметр указывает, что xterm должен предполагать,
 что обычные и полужирные шрифты содержат символы рисования линий VT100.
 Он устанавливает для ресурса forceBoxChars значение «true».
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fc fontchoice\e[0m
 Укажите исходный шрифт, выбранный в меню шрифтов.
 Значение параметра соответствует ресурсу initialFont.
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fd pattern\e[0m
 Этот параметр устанавливает шаблон для шрифтов двойной ширины,
 выбранных из библиотеки FreeType,
 если поддержка этой библиотеки была скомпилирована в xterm.
 Это соответствует ресурсу faceNameDoublesize.
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fi font\e[0m
 Этот параметр устанавливает шрифт для активных значков,
 если эта функция была скомпилирована в xterm.
 См. также обсуждение ресурса iconFont.
";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m -fs size\e[0m
 Этот параметр устанавливает размер шрифта для шрифтов,
 выбранных из библиотеки FreeType,
 если поддержка этой библиотеки была скомпилирована в xterm.
 Это соответствует ресурсу faceSize.
";ES;fi;;
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fullscreen\e[0m
 Эта опция указывает, что xterm должен запросить у оконного менеджера разрешение
 на использование полноэкранного режима для отображения, например,
 без оформления окна. Он устанавливает для полноэкранного ресурса значение «true»
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m +fullscreen\e[0m
 Этот параметр указывает, что xterm не должен запрашивать у оконного менеджера
 разрешение на использование полноэкранного режима для отображения.
 Он устанавливает для полноэкранного ресурса значение «false».
";ES;fi;;
 25) S=M25;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fw font\e[0m
 Этот параметр указывает шрифт, который будет использоваться для отображения
 широкого текста. По умолчанию он попытается использовать шрифт в два раза шире,
 чем шрифт, который будет использоваться для рисования обычного текста.
 Если шрифт двойной ширины не найден, он будет импровизировать,
 растягивая обычный шрифт. Это соответствует ресурсу wideFont.
";ES;fi;;
 26) S=M26;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fwb font\e[0m
 Этот параметр определяет шрифт, который будет использоваться для отображения
 полужирного широкого текста.
 По умолчанию он попытается использовать шрифт в два раза шире, чем шрифт,
 который будет использоваться для рисования жирным шрифтом.
 Если шрифт двойной ширины не найден, он будет импровизировать, растягивая
 полужирный шрифт. Это соответствует ресурсу wideBoldFont.
";ES;fi;;
 27) S=M27;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -fx font\e[0m
 Этот параметр указывает шрифт, который будет использоваться для отображения
 строки предварительного редактирования в методе ввода «OverTheSpot».
 См. также обсуждение ресурса ximFont.
";ES;fi;;
 28) S=M28;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -hc color\e[0m
 Смотри -selbg
";ES;fi;;
 29) S=M29;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -hf\e[0m
 Этот параметр указывает, что для функциональных клавиш должны быть сгенерированы
 escape-коды функциональных клавиш HP.
 Он устанавливает для ресурса hpFunctionKeys значение «true».
";ES;fi;;
 30) S=M30;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m +hf\e[0m
 Этот параметр указывает, что escape-коды функциональных клавиш HP не должны
 генерироваться для функциональных клавиш.
 Он устанавливает для ресурса hpFunctionKeys значение «false».
";ES;fi;;
 31) S=M31;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m -hm \e[0m
 Сообщает xterm использовать highlightTextColor и highlightColor,
 чтобы переопределить перевернутые цвета переднего плана/фона
 в выделенном фрагменте.
 Он устанавливает для ресурса highlightColorMode значение «true».
";ES;fi;;
#
 32) S=M32;SC;if [[ $cur == enter ]];then R;./lXtermOptions.sh;ES;fi;;
 33) S=M33;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done