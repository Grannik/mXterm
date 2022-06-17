#!/bin/bash
sleep 0.1;echo "
┌────────────────────────────────────────────────────────────────────────────────┐"
sleep 0.1;echo -e "
\e[1;36m Window Properties \e[0m\e[36m Оконные свойства\e[0m
 В выводе xprop(1) есть несколько свойств.
"
sleep 0.1;echo -e "\e[36m Properties set by X Toolkit\e[0m Свойства, установленные X Toolkit
"
sleep 0.1;echo -e "\e[32m WM_CLASS\e[0m
 Это показывает имя экземпляра и класс ресурсов X,
 переданный в X Toolkit во время инициализации xterm, например,
 WM_CLASS(STRING) = \"xterm\", \"UXTerm\"
"
sleep 0.1;echo -e "\e[32m WM_CLIENT_LEADER\e[0m
 Это показывает идентификатор окна,
 который xterm предоставляет с переменной среды (WINDOWID), например,
 WM_CLIENT_LEADER(WINDOW): window id # 0x800023
"
sleep 0.1;echo -e "\e[32m WM_COMMAND\e[0m
 Это показывает аргументы командной строки для xterm,
 которые передаются в X Toolkit во время инициализации, например,
 WM_COMMAND(STRING) = {xterm, -class, UXTerm, -title, uxterm, -u8}
"
sleep 0.1;echo -e "\e[32m WM_ICON_NAME\e[0m Он содержит заголовок значка,
 который разные оконные менеджеры обрабатывают по-разному.
 Он устанавливается через ресурс iconName.
 Приложения могут изменить это с помощью управляющих последовательностей.
"
sleep 0.1;echo -e "\e[32m WM_LOCALE_NAME\e[0m
 Это показывает результат функции setlocale(3) для категории LC_CTYPE, например,
 WM_LOCALE_NAME(STRING) = \"en_US.UTF-8\"
"
sleep 0.1;echo -e "\e[32m WM_NAME\e[0m
 Он содержит заголовок окна, обычно в верхней части окна xterm.
 Он устанавливается через ресурс заголовка.
 Приложения могут изменить его с помощью управляющих последовательностей.
"
sleep 0.1;echo -e "\e[36m Properties set by Xterm\e[0m Свойства, установленные Xterm
 X Toolkit не управляет свойствами EWMH. Xterm делает это напрямую.
"
sleep 0.1;echo -e "\e[32m _NET_WM_ICON_NAME\e[0m сохраняет имя значка.
"
sleep 0.1;echo -e "\e[32m _NET_WM_NAME\e[0m хранит строку заголовка.
"
sleep 0.1;echo -e "\e[32m _NET_WM_PID\e[0m хранит идентификатор процесса для отображения xterm.
"
sleep 0.1;echo -e "\e[36m Properties used by Xterm\e[0m Свойства, используемые Xterm
"
sleep 0.1;echo -e "\e[32m _NET_SUPPORTED\e[0m
 Xterm проверяет это свойство в поддерживающем окне, чтобы решить, поддерживает ли
 оконный менеджер определенные стили максимизации.
 Это может включать другие подсказки оконного менеджера;
 xterm использует вызовы библиотеки X для управления ими.
"
sleep 0.1;echo -e "\e[32m _NET_SUPPORTING_WM_CHECK\e[0m
 Xterm проверяет это, чтобы гарантировать, что он будет обновлять свойства EWMH
 только для оконного менеджера, который заявляет о соответствии EWMH.
"
sleep 0.1;echo -e "\e[32m _NET_WM_STATE\e[0m
 Это сообщает xterm, было ли окно максимизировано оконным менеджером, и если да,
 то какой тип максимизации:
"
sleep 0.1;echo -e "\e[32m _NET_WM_STATE_FULLSCREEN\e[0m"
sleep 0.1;echo -e "\e[32m _NET_WM_STATE_MAXIMIZED_HORZ\e[0m"
sleep 0.1;echo -e "\e[32m _NET_WM_STATE_MAXIMIZED_VERT\e[0m"
sleep 0.1;echo "
└────────────────────────────────────────────────────────────────────────────────┘
"
