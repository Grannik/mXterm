#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;100m";}
#
 HEAD()
{
 for (( a=2; a<=34; a++ ))
          do
      TPUT $a 1
                $E "\e[100;30m│\e[0m                                                                                \e[100;30m│\e[0m";
          done
}
 FOOT()
{
 MARK;
      TPUT  1 1;$E "\e[0m\e[100;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
      TPUT  3 3;$E "\e[0m\e[1;36m *** xterm ***\e[0m                                Terminal emulator for X";
      TPUT  4 1;$E "\e[0m\e[100;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[100;30m┤\e[0m";
      TPUT 12 1;$E "\e[0m\e[100;30m├\e[0m\e[1;30m─ Опции ────────────────────────────────────── Options ─────────────────────────\e[0m\e[100;30m┤\e[0m";
      TPUT 16 1;$E "\e[0m\e[100;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[100;30m┤\e[0m";
      TPUT 30 1;$E "\e[0m\e[100;30m├\e[0m\e[1;30m─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────\e[0m\e[100;30m┤\e[0m";
      TPUT 35 1;$E "\e[0m\e[100;30m└────────────────────────────────────────────────────────────────────────────────┘\e[0m";
 UNMARK;
}
#
  M0(){ TPUT  5 3; $e " Установка                                   \e[32m Install                        \e[0m";}
  M1(){ TPUT  6 3; $e " Kраткий обзор                               \e[32m Synopsis                       \e[0m";}
  M2(){ TPUT  7 3; $e " Oписание                                    \e[32m Description                    \e[0m";}
  M3(){ TPUT  8 3; $e " Смотрите также                              \e[36m See Also                       \e[0m";}
  M4(){ TPUT  9 3; $e " Авторы                                      \e[32m Authors                        \e[0m";}
  M5(){ TPUT 10 3; $e " Другие особенности                          \e[32m Other Features                 \e[0m";}
  M6(){ TPUT 11 3; $e " Эмуляции                                    \e[36m Emulations                     \e[0m";}
#
  M7(){ TPUT 13 3; $e " Опции                                       \e[36m Options                        \e[0m";}
  M8(){ TPUT 14 3; $e " Старые опции                                \e[36m Old Options                    \e[0m";}
  M9(){ TPUT 15 3; $e " Опции набора инструментов X                 \e[36m X Toolkit Options              \e[0m";}
#
 M10(){ TPUT 17 3; $e " Ресурсы                                     \e[36m Resources                      \e[0m";}
 M11(){ TPUT 18 3; $e " Использование указателей                    \e[36m Pointer Usage                  \e[0m";}
 M12(){ TPUT 19 3; $e " Выделить/вставить                           \e[36m Select/Paste                   \e[0m";}
 M13(){ TPUT 20 3; $e " Меню                                        \e[36m Menus                          \e[0m";}
 M14(){ TPUT 21 3; $e " Безопасность                                \e[36m Security                       \e[0m";}
 M15(){ TPUT 22 3; $e " Классы персонажей                           \e[36m Character Classes              \e[0m";}
 M16(){ TPUT 23 3; $e " Привязки клавиш                             \e[36m Key Bindings                   \e[0m";}
 M17(){ TPUT 24 3; $e " Последовательности управления и клавиатура  \e[36m Control Sequences and Keyboard \e[0m";}
 M18(){ TPUT 25 3; $e " Окружающая среда                            \e[36m Environment                    \e[0m";}
 M19(){ TPUT 26 3; $e " Оконные свойства                            \e[36m Window Properties              \e[0m";}
 M20(){ TPUT 27 3; $e " Файлы                                       \e[36m Files                          \e[0m";}
 M21(){ TPUT 28 3; $e " Сообщения об ошибках                        \e[36m Error Messages                 \e[0m";}
 M22(){ TPUT 29 3; $e " Баги                                        \e[36m Bags                           \e[0m";}
#
 M23(){ TPUT 31 3; $e " Сайты                                       \e[36m Websites                       \e[0m";}
 M24(){ TPUT 32 3; $e "                                             \e[36m Grannik Git                    \e[0m";}
 M25(){ TPUT 33 3; $e "                                             \e[32m Exit                           \e[0m";}
LM=25
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
\e[32m sudo apt install -y xterm\e[0m
#
\e[32m sudo apt-get install -y xterm\e[0m
#
\e[32m \e[0m
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m xterm [-toolkitoption ...] [-option ...] [shell]\e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo    "
   Программа xterm представляет собой эмулятор терминала для системы X Window.
 Он обеспечивает DEC VT102/VT220 и некоторые функции терминалов более высокого уровня,
 такие как VT320/VT420/VT520 (VTxxx).
 Он также обеспечивает эмуляцию Tektronix 4014 для программ,
 которые не могут напрямую использовать оконную систему.
   Если основная операционная система поддерживает возможности изменения размера
 терминала (например, сигнал SIGWINCH в системах, производных от 4.3BSD),
 xterm будет использовать средства для уведомления программы,
 работающие в окне всякий раз, когда изменяется его размер.
   Каждый терминал VTxxx и Tektronix 4014 имеет собственное окно,
 так что вы можете редактировать текст в одном
 и одновременно просматривать графику в другом.
 Cохраняйте правильное соотношение сторон (высота/ширина),
 графика Tektronix будет ограничена самой большой коробкой с 4014s
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;./kXtermSeeAlso.sh;ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo "
   Слишком много людей.
   В Консорциум X внесли свой вклад:
 Лоретта Гуарино Рид (DEC-UEG-WSL), Джоэл МакКормак (DEC-UEG-WSL), Терри Вайсман (DEC-UEG-WSL),
 Эдвард Мой (Беркли), Ральф Р. Свик (MIT-Athena), Марк Вандевурде (MIT-Athena),
 Боб Макнамара (DEC-MAD), Джим Геттис (MIT-Athena), Боб Шайфлер (MIT X Consortium),
 Дуг Минк (SAO), Стив Питшке (Stellar), Рон Ньюман (MIT-Athena), Джим Фултон (MIT X Consortium),
 Дэйв Сериски (HP), Джонатан Каменс (MIT-Athena).
   Начиная с XFree86, было гораздо больше идентифицируемых участников. Файл THANKS в xterms.
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo "
   Xterm автоматически выделяет текстовый курсор, когда указатель входит в окно (выбрано),
 и снимает его выделение, когда указатель покидает окно (не выбрано).
   Если окно находится в фокусе, то текстовый курсор выделяется независимо от того,
 где находится указатель.
   В режиме VTxxx есть управляющие последовательности для активации и деактивации
 альтернативного экранного буфера, который имеет тот же размер, что и область отображения окна.
   При активации текущий экран сохраняется и заменяется альтернативным экраном.
 Сохранение строк, прокручиваемых за пределы верхней части окна, отключено до тех пор,
 пока не нормальный экран восстанавливается.
 Обычное описание терминала для xterm позволяет визуальному редактору vi
 переключаться на альтернативный экран для редактирования и
 восстановить экран при выходе.
 Пункт всплывающего меню упрощает переключение между обычным
 и альтернативным экранами для вырезания и вставки.
   Как в режиме VTxxx, так и в режиме Tektronix существуют escape-последовательности
 для изменения имени окон. Кроме того, в режиме VTxxx xterm реализует окно
 последовательности управления манипулированием из dtterm,
 такие как изменение размера окна, установка его положения на экране.
   Xterm позволяет приложениям на основе символов получать события мыши
 (в настоящее время события нажатия и отпускания кнопки, а также события движения кнопки)
 в качестве управления клавиатурой последовательности.
 Подробнее см. в разделе Последовательности управления Xterm.
";ES;fi;;
  6)  S=M6;SC;if [[ $cur == enter ]];then R;./lXtermEmulations.sh;ES;fi;;
  7)  S=M7;SC;if [[ $cur == enter ]];then R;./kXtermOptionsA.sh;ES;fi;;
  8)  S=M8;SC;if [[ $cur == enter ]];then R;./lXtermOptionsOld.sh;ES;fi;;
  9)  S=M9;SC;if [[ $cur == enter ]];then R;./lXtermOptionsXToolkit.sh;ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;./kXtermResources.sh;ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;./lXtermPointerUsage.sh;ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;./lXtermSelectPaste.sh;ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;./lXtermMenus.sh;ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;./lXtermSecurity.sh;ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;./lXtermCharacterClasses.sh;ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;./kXtermKeyBindingsA.sh;ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;./lXtermCtrlSequencesKeyboard.sh;ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;./lXtermEnvironment.sh;ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;./lXtermWindowProperties.sh;ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;./kXtermFiles.sh;ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;./lXtermErrorMessages.sh;ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo "
   Большие пасты не работают на некоторых системах.
 Это не ошибка в xterm; это ошибка в драйвере псевдотерминала этих систем.
 Xterm отправляет большие вставки в pty только с той скоростью,
 с которой pty примет данные,
 но некоторые драйверы pty не возвращают достаточно информации,
 чтобы узнать, успешна ли запись.
 При подключении к методу ввода xterm может зависнуть,
 если сервер XIM приостановлен или убит.
 Многие параметры невозможно сбросить после запуска xterm.
 Эту программу еще нужно переписать.
 Он должен быть разделен на очень модульные разделы,
 при этом различные эмуляторы будут совершенно отдельными виджетами,
 которые не знают друг о друге.
 В идеале вы хотели бы иметь возможность выбирать виджеты эмулятора
 и вставлять их в один виджет управления.
 Должно быть диалоговое окно, позволяющее ввести имя файла Tek COPY.
";ES;fi;;
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Настройка Xterm
 https://linuxcookbook.ru/articles/nastroyka-xterm
#
 Wiki Archlinux.org Xterm
 https://wiki.archlinux.org/title/Xterm_(%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9)
#
 Zenway
 https://zenway.ru/forum/viewtopic.php?id=621
#
 Конфиг:Xresources
 http://linuxoid.in/%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B3:Xresources
#
 описание всех команд xterm на сайте:
 http://www.xfree86.org/4.0.1/xterm.1.html
#
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;echo -e "
 Программа mXterm - описание терминала xterm.
 Terminal emulator for X

 Fr 17 Jun 2022
 s - source      file источник
 m - menu        file меню
 n - simple menu file простое меню
 l - bash list   file лист
 t - text        file текстовый файл
 k - next menu   file cледующее меню

 Asciinema:
\e[36m https://asciinema.org/a/lyWZaQq3i0rGFCYlpFMAjWHaW\e[0m

 Codeberg
\e[36m https://codeberg.org/Grannik/mXterm\e[0m

";ES;fi;;
 25) S=M25;SC;if [[ $cur == enter ]];then R;clear;ls -l;exit 0;fi;;
 esac;POS;done
