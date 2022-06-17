#!/bin/bash
sleep 0.1;echo "
┌────────────────────────────────────────────────────────────────────────────────┐"
sleep 0.1;echo -e "
\e[1;36m X Toolkit Options\e[0m\e[36m Опции набора инструментов X\e[0m
"
sleep 0.1;echo " Следующие стандартные аргументы командной строки X Toolkit используются с xterm:
"
sleep 0.1;echo -e "\e[32m -bd color\e[0m Этот параметр указывает цвет, используемый для границы окна.
 Соответствующее имя ресурса — borderColor.
 Xterm использует X Toolkit по умолчанию, то есть «XtDefaultForeground».
 Окно Xterm VT100 имеет две границы:
 внутреннюю границу internalBorder
 и внешнюю границу borderWidth, управляемую X Toolkit.
 Обычно xterm заполняет внутреннюю границу, используя цвет фона окна VT100.
 Если ресурс colorInnerBorder включен,
 тогда xterm может заполнять внутреннюю границу, используя ресурс borderColor.
"
sleep 0.1;echo -e "\e[32m -bg color\e[0m Этот параметр определяет цвет фона окна.
 Соответствующее имя ресурса — background.
 По умолчанию используется «XtDefaultBackground».
"
sleep 0.1;echo -e "\e[32m -bw number\e[0m Этот параметр определяет ширину в пикселях границы, окружающей окно.
 Похоже, это наследие старых выпусков X. Он устанавливает ресурс borderWidth
 виджета оболочки и может дать совет вашему оконному менеджеру установить толщину
 оконной рамы. Большинство оконных менеджеров не используют эту информацию.
 См. параметр -b, который управляет внутренней границей окна xterm.
"
sleep 0.1;echo -e "\e[32m -display display\e[0mЭта опция указывает X-сервер для связи; см. Х.
"
sleep 0.1;echo -e "\e[32m -fg color\e[0m Этот параметр определяет цвет, используемый для отображения текста.
 Соответствующее имя ресурса — передний план.
 По умолчанию используется «XtDefaultForeground».
"
sleep 0.1;echo -e "\e[32m -fn font\e[0m Этот параметр определяет шрифт,
 который будет использоваться для отображения обычного текста.
 Соответствующее имя ресурса — шрифт. Значение ресурса по умолчанию фиксировано.
"
sleep 0.1;echo -e "\e[32m -font font\e[0m Это то же самое, что и -fn.
"
sleep 0.1;echo -e "\e[32m -geometry geometry\e[0m
 Эта опция определяет предпочтительный размер и положение окна VTxxx; см. Х(1).
 Спецификация нормальной геометрии может иметь суффикс @, за которым следует
 спецификация экрана Xinerama; это может быть g для глобального экрана
 (по умолчанию), c для текущего экрана или номер экрана.
"
sleep 0.1;echo -e "\e[32m -iconic\e[0m Эта опция указывает, что xterm должен попросить оконный менеджер
 запустить его как значок, а не как обычное окно.
 Соответствующее имя ресурса является значком.
"
sleep 0.1;echo -e "\e[32m -name name\e[0m
 Этот параметр указывает имя приложения, под которым должны быть получены ресурсы,
 а не имя исполняемого файла по умолчанию.
 Имя не должно содержать «.» или символы «*».
"
sleep 0.1;echo -e "\e[32m -rv\e[0m Этот параметр указывает, что обратное видео должно имитироваться путем замены
 цветов переднего плана и фона. Соответствующее имя ресурса — reverseVideo.
"
sleep 0.1;echo -e "\e[32m +rv\e[0m Отключите симуляцию обратного видео,
 поменяв местами цвета переднего плана и фона.
"
sleep 0.1;echo -e "\e[32m -title string\e[0m Этот параметр указывает строку заголовка окна, которая может отображаться
 оконными менеджерами, если пользователь этого выберет.
 Это сокращение для указания ресурса «заголовок».
 Заголовком по умолчанию является командная строка, указанная после параметра -e,
 если он есть, иначе имя приложения.
 X Toolkit устанавливает свойство WM_NAME, используя это значение.
"
sleep 0.1;echo -e "\e[32m -xrm resourcestring\e[0m Этот параметр указывает используемую строку ресурса.
 Это особенно полезно для настройки ресурсов, у которых нет отдельных параметров
 командной строки.
 X Toolkit принимает альтернативные имена для некоторых из этих опций, например,
 • “-background” for “-bg”
 • “-font” for “-fn”
 • “-foreground” for “-fg”
 Также поддерживаются сокращенные варианты, например, «-v» для “-version.”"
sleep 0.1;echo "
└────────────────────────────────────────────────────────────────────────────────┘
"