#!/bin/bash
source "sXterm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;30m";}
#
 HEAD()
{
 for (( a=2; a<=21; a++ ))
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
      TPUT  4 3;$E "\e[36mDefault Key Bindings\e[0m Привязки клавиш по умолчанию";
      TPUT  5 3;$E "\e[36mПривязки по умолчанию в окне VTxxx используют токен SELECT";
      TPUT  6 3;$E "\e[36mкоторый задается ресурсом selectToClipboard.";
      TPUT  7 1;$E "\e[90m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
      TPUT 20 1;$E "\e[90m├─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────┤\e[0m";
      TPUT 22 1;$E "\e[90m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
 UNMARK;
}
#
  M0(){ TPUT  8 3; $e "Это для виджета                                                       \e[32m vt100 \e[0m";}
  M1(){ TPUT  9 3; $e "Это для виджета                                                     \e[32m tek4014 \e[0m";}
  M2(){ TPUT 10 3; $e "Пользовательские привязки клавиш                        \e[32m Custom Key Bindings \e[0m";}
  M3(){ TPUT 11 3; $e "В примере используется имя класса                                     \e[32m VT100 \e[0m";}
  M4(){ TPUT 12 3; $e "к клавишам Home и End:                                                     \e[32m  \e[0m";}
  M5(){ TPUT 13 3; $e "shift-Home и shift-End будут недоступны для приложений                     \e[32m  \e[0m";}
  M6(){ TPUT 14 3; $e "Вы по-прежнему будете использовать левую и правую кнопки мыши              \e[32m  \e[0m";}
  M7(){ TPUT 15 3; $e "Функция раскладки клавиатуры позволяет переключаться меж наборами переводов\e[32m  \e[0m";}
  M8(){ TPUT 16 3; $e "Привязки полосы прокрутки по умолчанию                                     \e[32m  \e[0m";}
  M9(){ TPUT 17 3; $e "События, которые виджет полосы прокрутки вообще не распознает              \e[32m  \e[0m";}
 M10(){ TPUT 18 3; $e "Выделить/Вставить                                     \e[32m Ctrl Shift <KeyPress> \e[0m";}
#
 M11(){ TPUT 21 3; $e "Выход                                                                  \e[32m Exit \e[0m";}
LM=11
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
                     Shift <KeyPress> Prior:scroll-back(1,halfpage) \n\
                      Shift <KeyPress> Next:scroll-forw(1,halfpage) \n\
                    Shift <KeyPress> Select:select-cursor-start() \
                                            select-cursor-end(SELECT, CUT_BUFFER0) \n\
                    Shift <KeyPress> Insert:insert-selection(SELECT, CUT_BUFFER0) \n\
                            Alt <Key>Return:fullscreen() \n\
                   <KeyRelease> Scroll_Lock:scroll-lock() \n\
               Shift~Ctrl <KeyPress> KP_Add:larger-vt-font() \n\
               Shift Ctrl <KeyPress> KP_Add:smaller-vt-font() \n\
               Shift <KeyPress> KP_Subtract:smaller-vt-font() \n\
                           ~Meta <KeyPress>:insert-seven-bit() \n\
                            Meta <KeyPress>:insert-eight-bit() \n\
                           !Ctrl <Btn1Down>:popup-menu(mainMenu) \n\
                      !Lock Ctrl <Btn1Down>:popup-menu(mainMenu) \n\
            !Lock Ctrl @Num_Lock <Btn1Down>:popup-menu(mainMenu) \n\
                ! @Num_Lock Ctrl <Btn1Down>:popup-menu(mainMenu) \n\
                           ~Meta <Btn1Down>:select-start() \n\
                         ~Meta <Btn1Motion>:select-extend() \n\
                           !Ctrl <Btn2Down>:popup-menu(vtMenu) \n\
                      !Lock Ctrl <Btn2Down>:popup-menu(vtMenu) \n\
            !Lock Ctrl @Num_Lock <Btn2Down>:popup-menu(vtMenu) \n\
                ! @Num_Lock Ctrl <Btn2Down>:popup-menu(vtMenu) \n\
                     ~Ctrl ~Meta <Btn2Down>:ignore() \n\
                            Meta <Btn2Down>:clear-saved-lines() \n\
                       ~Ctrl ~Meta <Btn2Up>:insert-selection(SELECT, CUT_BUFFER0) \n\
                           !Ctrl <Btn3Down>:popup-menu(fontMenu) \n\
                      !Lock Ctrl <Btn3Down>:popup-menu(fontMenu) \n\
            !Lock Ctrl @Num_Lock <Btn3Down>:popup-menu(fontMenu) \n\
                ! @Num_Lock Ctrl <Btn3Down>:popup-menu(fontMenu) \n\
                     ~Ctrl ~Meta <Btn3Down>:start-extend() \n\
                         ~Meta <Btn3Motion>:select-extend() \n\
                            Ctrl <Btn4Down>:scroll-back(1,halfpage,m) \n\
                       Lock Ctrl <Btn4Down>:scroll-back(1,halfpage,m) \n\
             Lock @Num_Lock Ctrl <Btn4Down>:scroll-back(1,halfpage,m) \n\
                  @Num_Lock Ctrl <Btn4Down>:scroll-back(1,halfpage,m) \n\
                                 <Btn4Down>:scroll-back(5,line,m)     \n\
                            Ctrl <Btn5Down>:scroll-forw(1,halfpage,m) \n\
                       Lock Ctrl <Btn5Down>:scroll-forw(1,halfpage,m) \n\
             Lock @Num_Lock Ctrl <Btn5Down>:scroll-forw(1,halfpage,m) \n\
                  @Num_Lock Ctrl <Btn5Down>:scroll-forw(1,halfpage,m) \n\
                                 <Btn5Down>:scroll-forw(5,line,m)     \n\
                                    <BtnUp>:select-end(SELECT, CUT_BUFFER0) \n\
                                <BtnMotion>:pointer-motion() \n\
                                  <BtnDown>:pointer-button() \n\
                                    <BtnUp>:pointer-button() \n\
                                  <BtnDown>:ignore()
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "
 Привязки по умолчанию в окне Tektronix аналогичны,
 но менее обширны. Это для виджета tek4014:
                            ~Meta<KeyPress>: insert-seven-bit() \n\
                             Meta<KeyPress>: insert-eight-bit() \n\
                           !Ctrl <Btn1Down>: popup-menu(mainMenu) \n\
                      !Lock Ctrl <Btn1Down>: popup-menu(mainMenu) \n\
            !Lock Ctrl @Num_Lock <Btn1Down>: popup-menu(mainMenu) \n\
                 !Ctrl @Num_Lock <Btn1Down>: popup-menu(mainMenu) \n\
                           !Ctrl <Btn2Down>: popup-menu(tekMenu) \n\
                      !Lock Ctrl <Btn2Down>: popup-menu(tekMenu) \n\
            !Lock Ctrl @Num_Lock <Btn2Down>: popup-menu(tekMenu) \n\
                 !Ctrl @Num_Lock <Btn2Down>: popup-menu(tekMenu) \n\
                      Shift ~Meta<Btn1Down>: gin-press(L) \n\
                            ~Meta<Btn1Down>: gin-press(l) \n\
                      Shift ~Meta<Btn2Down>: gin-press(M) \n\
                            ~Meta<Btn2Down>: gin-press(m) \n\
                      Shift ~Meta<Btn3Down>: gin-press(R) \n\
                            ~Meta<Btn3Down>: gin-press(r)
";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
  Custom Key Bindings
 Вы можете изменить ресурс переводов, переопределив его части или объединив с ним
 свои ресурсы. Вот пример, который использует выбор/вставку со сдвигом для копирования
 в буфер обмена и выбор/вставку без смещения для основного выбора.
 В каждом случае (другой) буфер вырезания также является целью
 или источником операции выбора/вставки. Однако важно помнить,
 что буферы вырезания хранят данные в кодировке ISO-8859-1,
 тогда как выборки могут хранить данные в различных форматах и кодировках.
 Хотя xterm владеет выбором, он выделяет его.
 Когда он теряет выделение, он удаляет соответствующую подсветку.
 Но вы все равно можете вставить из соответствующего вырезанного буфера.

           *VT100*translations:    #override \n\
              ~Shift~Ctrl<Btn2Up>: insert-selection(PRIMARY, CUT_BUFFER0) \n\
               Shift~Ctrl<Btn2Up>: insert-selection(CLIPBOARD, CUT_BUFFER1) \n\
              ~Shift     <BtnUp> : select-end(PRIMARY, CUT_BUFFER0) \n\
               Shift     <BtnUp> : select-end(CLIPBOARD, CUT_BUFFER1)
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 В примере используется имя класса VT100, а не имя виджета.
 Это разные; имя класса может относиться к более чем одному виджету.
 Ведущий «*» используется, потому что иерархия виджетов выше виджета vt100
 зависит от того, скомпилирована ли поддержка панели инструментов в xterm.
 Большинство предопределенных переводов связаны с мышью,
 а некоторые используют специальные клавиши на клавиатуре.
 Приложения используют специальные клавиши
 (функциональные клавиши, клавиши курсора, клавиши клавиатуры)
 с модификаторами (shift, control, alt).
 Если xterm определяет перевод для данной комбинации специального ключа
 и модификатора, это делает его недоступным для использования приложениями
 в терминале. Например, можно расширить использование клавиш
 Page Up и Page Down, показанных здесь:

               Shift <KeyPress> Prior : scroll-back(1,halfpage) \n\
               Shift <KeyPress> Next  : scroll-forw(1,halfpage) \n\
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
 к клавишам Home и End:
               Shift <KeyPress> Home : scroll-to(begin) \n\
               Shift <KeyPress> End  : scroll-to(end)
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 но тогда shift-Home и shift-End будут недоступны для приложений.
 Не всем удобно пользоваться трехкнопочной мышью.
 В колесной мыши средняя кнопка может быть колесиком.
 В качестве альтернативы вы можете добавить привязку с помощью сдвинутых клавиш:

           *VT100*translations:      #override \n\
               Shift <Key>Home:    copy-selection(SELECT) \n\
               Shift <Key>Insert:  copy-selection(SELECT) \n\
               Ctrl Shift <Key>C:  copy-selection(SELECT) \n\
               Ctrl Shift <Key>V:  insert-selection(SELECT)
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
 Вы по-прежнему будете использовать левую и правую кнопки мыши
 (обычно 1 и 3) для начала и расширения выделения.
 Помимо проблем с мышью, есть и клавиатуры с неудобной раскладкой.
 У некоторых отсутствует цифровая клавиатура, что затрудняет использование
 смещенной клавиатуры плюс и минус для переключения между размерами шрифта.
 Вы можете обойти это, назначив действия более легкодоступным клавишам:
           *VT100*translations:      #override \n\
               Ctrl <Key> +:       larger-vt-font() \n\
               Ctrl <Key> -:       smaller-vt-font()
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
Функция раскладки клавиатуры позволяет переключаться между наборами переводов.
 В приведенном ниже примере показано, как можно использовать действие keymap()
 для добавления специальных клавиш для ввода часто используемых слов:
           *VT100.Translations: #override <Key>F13: keymap(dbx)
           *VT100.dbxKeymap.translations: \
                   <Key>F14:       keymap(None) \n\
                   <Key>F17:       string("next") \n\
                                   string(0x0d) \n\
                   <Key>F18:       string("step") \n\
                                   string(0x0d) \n\
                   <Key>F19:       string("continue") \n\
                                   string(0x0d) \n\
                   <Key>F20:       string("print ") \n\
                                   insert-selection(PRIMARY, CUT_BUFFER0)
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Привязки полосы прокрутки по умолчанию
 Привязки клавиш обычно связаны с виджетами vt100 или tek4014,
 которые действуют как эмуляторы терминала.
 Полоса прокрутки Xterm (и панель инструментов, если она настроена)
 — это отдельные виджеты. Поскольку все они используют X Toolkit,
 у них есть соответствующие ресурсы перевода.
 количество уровней виджетов, которые они могут содержать.
 Виджет полосы прокрутки является потомком виджета vt100.
 Он расположен поверх виджета vt100.
 Включение и выключение полосы прокрутки приводит к изменению размера виджета vt100.
 Привязки по умолчанию для виджета полосы прокрутки используют только события кнопки мыши:
              <Btn5Down>: StartScroll(Forward) \n\
              <Btn1Down>: StartScroll(Forward) \n\
              <Btn2Down>: StartScroll(Continuous) MoveThumb() NotifyThumb() \n\
              <Btn3Down>: StartScroll(Backward) \n\
              <Btn4Down>: StartScroll(Backward) \n\
              <Btn2Motion>: MoveThumb() NotifyThumb() \n\
              <BtnUp>:    NotifyScroll(Proportional) EndScroll()
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 События, которые виджет полосы прокрутки вообще не распознает, теряются.
 Однако при запуске xterm дополняет эти переводы переводами по умолчанию,
 используемыми для виджета vt100, вместе с ресурсными «действиями»,
 которые используют эти переводы. Поскольку виджеты полосы прокрутки
 (или строки меню) не распознают эти действия
 (но поскольку у них есть соответствующий перевод), они передаются виджету vt100.
 Это дополнение к переводам полосы прокрутки имеет несколько ограничений:
 • Xterm знает переводы по умолчанию, но нет подходящего интерфейса библиотеки
 для определения того, какие настройки пользователь мог добавить в виджет vt100.
 Все, что может сделать xterm, — это дополнить виджет полосы прокрутки,
 чтобы дать ему ту же отправную точку для дальнейшей настройки пользователем.
 • События в промежутке между виджетами могут быть потеряны.
 • Последовательности компоновки, начатые в одном виджете,
 не могут быть завершены в другом,
 поскольку методы ввода для каждого виджета не имеют общей контекстной информации.
 Большинство настроек перевода полосы прокрутки не касаются привязок клавиш.
 Скорее, пользователи обычно больше заинтересованы в изменении привязки кнопок мыши.
 Например, некоторые люди предпочитают использовать левую кнопку указателя
 для перетаскивания большого пальца полосы прокрутки.
 Это можно настроить, изменив ресурс перевода, например,
           *VT100.scrollbar.translations:  #override \n\
              <Btn5Down>:     StartScroll(Forward) \n\
              <Btn1Down>:     StartScroll(Continuous) MoveThumb() NotifyThumb() \n\
              <Btn4Down>:     StartScroll(Backward) \n\
              <Btn1Motion>:   MoveThumb() NotifyThumb() \n\
              <BtnUp>:        NotifyScroll(Proportional) EndScroll()
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m
 XTerm*vt100.translations: #override
 Shift Ctrl <Key> C: copy-selection(CLIPBOARD) \\\n\\\ \e[0m
\e[32m Shift Ctrl <Key> V: insert-selection(CLIPBOARD)\e[0m
";ES;fi;;
#
 11) S=M11;SC;if [[ $cur == enter ]];then R;clear;exit 0;fi;;
 esac;POS;done
