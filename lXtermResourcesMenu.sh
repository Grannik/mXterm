#!/bin/bash
sleep 0.1;echo "
┌────────────────────────────────────────────────────────────────────────────────┐"
sleep 0.1;echo -e "
\e[1;36m Menu Resources \e[0m\e[36m Ресурсы меню\e[0m
"
echo " Ресурсы, которые могут быть указаны для различных меню, описаны в документации
 к виджету Athena SimpleMenu. Ниже перечислены имена и классы записей в каждом из
 меню. Ресурсы с именем «lineN», где N — число, являются разделителями
 класса SmeLine.
 Как и во всех виджетах, основанных на ресурсах X, упомянутые метки являются
 обычными значениями по умолчанию для приложения.
 В главном меню опций (название виджета mainMenu) есть следующие пункты:
"
echo -e "\e[32m toolbar\e[0m (class SmeBSB) Эта запись вызывает действие set-toolbar(toggle).
"
echo -e "\e[32m securekbd\e[0m (class SmeBSB) Эта запись вызывает действие secure().
"
echo -e "\e[32m allowsends\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-send-events(toggle).
"
echo -e "\e[32m redraw\e[0m (class SmeBSB) Эта запись вызывает действие redraw().
"
echo -e "\e[32m logging\e[0m (class SmeBSB) Эта запись вызывает действие logging(toggle).
"
echo -e "\e[32m print-immediate\e[0m (class SmeBSB)
 Эта запись вызывает действие print-immediate().
"
echo -e "\e[32m print-on-error\e[0m (class SmeBSB)
 Эта запись вызывает действие печати при print-on-error()
"
echo -e "\e[32m print\e[0m (class SmeBSB) Эта запись вызывает действие print()
"
echo -e "\e[32m print-redir\e[0m (class SmeBSB) Эта запись вызывает действие print-redir().
"
echo -e "\e[32m dump-html\e[0m (class SmeBSB) Эта запись вызывает действие dump-html().
"
echo -e "\e[32m dump-svg\e[0m (class SmeBSB) Эта запись вызывает действие dump-svg().
"
echo -e "\e[32m 8-bit-control\e[0m (class SmeBSB)
 Эта запись вызывает действие set-8-bit-control(toggle).
"
echo -e "\e[32m backarrow key\e[0m (class SmeBSB) Эта запись вызывает действие set-backarrow(toggle).
"
echo -e "\e[32m num-lock\e[0m (class SmeBSB) Эта запись вызывает действие set-num-lock(toggle).
"
echo -e "\e[32m alt-esc\e[0m (class SmeBSB) Эта запись вызывает действие alt-sends-escape(toggle).
"
echo -e "\e[32m meta-esc\e[0m (class SmeBSB) Эта запись вызывает действие meta-sends-escape(toggle).
"
echo -e "\e[32m delete-is-del\e[0m (class SmeBSB)
 Эта запись вызывает действие delete-is-del(toggle)
"
echo -e "\e[32m oldFunctionKeys\e[0m (class SmeBSB)
 Эта запись вызывает действие set-old-function-keys(toggle)
"
echo -e "\e[32m hpFunctionKeys\e[0m (class SmeBSB)
 Эта запись вызывает действие set-hp-function-keys(toggle)
"
echo -e "\e[32m scoFunctionKeys\e[0m (class SmeBSB)
 Эта запись вызывает действие set-sco-function-keys(toggle)
"
echo -e "\e[32m sunFunctionKeys\e[0m (class SmeBSB)
 Эта запись вызывает действие set-sun-function-keys(toggle)
"
echo -e "\e[32m sunKeyboard\e[0m (class SmeBSB) Эта запись вызывает действие sunKeyboard(toggle)
"
echo -e "\e[32m suspend\e[0m (class SmeBSB)
 Эта запись вызывает действие send-signal(tstp) в системах,
 поддерживающих управление заданиями.
"
echo -e "\e[32m continue\e[0m (class SmeBSB)
 Эта запись вызывает действие send-signal(cont) в системах,
 поддерживающих управление заданиями.
"
echo -e "\e[32m interrupt\e[0m (class SmeBSB) Эта запись вызывает действие send-signal(int)
"
echo -e "\e[32m hangup\e[0m (class SmeBSB) Эта запись вызывает действие send-signal(hup)
"
echo -e "\e[32m terminate\e[0m (class SmeBSB) Эта запись вызывает действие send-signal(term)
"
echo -e "\e[32m kill\e[0m (class SmeBSB) Эта запись вызывает действие send-signal(kill)
"
echo -e "\e[32m quit\e[0m (class SmeBSB) Эта запись вызывает действие quit()
"
echo -e "\e[36m Меню опций VT (название виджета vtMenu) содержит следующие записи:\e[0m
"
echo -e "\e[32m scrollbar\e[0m (class SmeBSB) Эта запись вызывает действие set-scrollbar(toggle)
"
echo -e "\e[32m jumpscroll\e[0m (class SmeBSB) Эта запись вызывает действие set-jumpscroll(toggle)
"
echo -e "\e[32m reversevideo\e[0m (class SmeBSB)
 Эта запись вызывает действие set-reverse-video(toggle)
"
echo -e "\e[32m autowrap\e[0m (class SmeBSB) Эта запись вызывает действие set-autowrap(toggle)
"
echo -e "\e[32m reversewrap\e[0m (class SmeBSB) Эта запись вызывает действие set-reversewrap(toggle)
"
echo -e "\e[32m autolinefeed\e[0m (class SmeBSB) Эта запись вызывает действие set-autolinefeed(toggle)
"
echo -e "\e[32m appcursor\e[0m (class SmeBSB) Эта запись вызывает действие set-appcursor(toggle)
"
echo -e "\e[32m appkeypad\e[0m (class SmeBSB) Эта запись вызывает действие set-appkeypad(toggle)
"
echo -e "\e[32m scrollkey\e[0m (class SmeBSB) Эта запись вызывает действие set-scroll-on-key(toggle)
"
echo -e "\e[32m scrollttyoutput\e[0m (class SmeBSB)
 Эта запись вызывает действие set-scroll-on-tty-output(toggle)
"
echo -e "\e[32m allow132\e[0m (class SmeBSB) Эта запись вызывает действие set-allow132(toggle)
"
echo -e "\e[32m cursesemul\e[0m (class SmeBSB) Эта запись вызывает действие set-cursemul(toggle)
"
echo -e "\e[32m keepSelection\e[0m (class SmeBSB)
 Эта запись вызывает действие set-keep-selection(toggle)
"
echo -e "\e[32m selectToClipboard\e[0m (class SmeBSB)
 Эта запись вызывает действие set-keep-clipboard(toggle)
"
echo -e "\e[32m visualbell\e[0m (class SmeBSB) Эта запись вызывает действие set-visual-bell(toggle)
"
echo -e "\e[32m bellIsUrgent\e[0m (class SmeBSB) Эта запись вызывает действие set-bellIsUrgent(toggle)
"
echo -e "\e[32m poponbell\e[0m (class SmeBSB) Эта запись вызывает действие set-pop-on-bell(toggle)
"
echo -e "\e[32m cursorblink\e[0m (class SmeBSB) Эта запись вызывает действие set-cursorblink(toggle)
"
echo -e "\e[32m titeInhibit\e[0m (class SmeBSB) Эта запись вызывает действие set-titeInhibit(toggle)
"
echo -e "\e[32m activeicon\e[0m (class SmeBSB) Эта запись включает и выключает активные значки,
 если эта функция была скомпилирована в xterm. Он включается только в том случае,
 если xterm был запущен с параметром командной строки +ai
 или для ресурса activeIcon установлено значение «true».
"
echo -e "\e[32m softreset\e[0m (class SmeBSB) Эта запись вызывает действие soft-reset()
"
echo -e "\e[32m hardreset\e[0m (class SmeBSB) Эта запись вызывает действие hard-reset()
"
echo -e "\e[32m clearsavedlines\e[0m (class SmeBSB) Эта запись вызывает действие clear-saved-lines()
"
echo -e "\e[32m tekshow\e[0m (class SmeBSB) Эта запись вызывает действие set-visibility(tek,toggle)
"
echo -e "\e[32m tekmode\e[0m (class SmeBSB) Эта запись вызывает действие set-terminal-type(tek)
"
echo -e "\e[32m vthide\e[0m (class SmeBSB) Эта запись вызывает действие set-visibility(vt,off)
"
echo -e "\e[32m altscreen\e[0m (class SmeBSB) Эта запись вызывает действие set-altscreen(toggle)
"
echo -e "\e[32m sixelScrolling\e[0m (class SmeBSB)
 Эта запись вызывает действие set-sixel-scrolling(toggle)
"
echo -e "\e[32m privateColorRegisters\e[0m (class SmeBSB)
 Эта запись вызывает действие set-private-colors(toggle)
"
echo -e "\e[36m В меню VT Fonts (название виджета fontMenu) есть следующие записи:\e[0m
"
echo -e "\e[32m fontdefault\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(d),
 устанавливающее шрифт с использованием ресурса шрифта (по умолчанию),
 например, «По умолчанию» в меню.
"
echo -e "\e[32m font1\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(1),
 устанавливающее шрифт с использованием ресурса font1,
 например, «Unreadable» в меню.
"
echo -e "\e[32m font2\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(2),
 устанавливающее шрифт с использованием ресурса font2, например, «Tiny» в меню.
"
echo -e "\e[32m font3\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(3),
 устанавливающее шрифт с использованием ресурса font3, например, «Small» в меню.
"
echo -e "\e[32m font4\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(4),
 позволяя шрифту использовать ресурс font4, например, “Medium” in the menu.
"
echo -e "\e[32m font5\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(5),
 позволяя шрифту использовать ресурс font5, например, “Large” in the menu.
"
echo -e "\e[32m font6\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(6),
 позволяя шрифту использовать ресурс font6, например, “Huge” in the menu.
"
echo -e "\e[32m font7\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(7),
 позволяя шрифту использовать ресурс font7, например, “Enormous” in the menu.
"
echo -e "\e[32m fontescape\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(e)
"
echo -e "\e[32m fontsel\e[0m (class SmeBSB) Эта запись вызывает действие set-vt-font(s)
"
echo -e "\e[32m allow-bold-fonts\e[0m (class SmeBSB)
 Эта запись вызывает действие «allow-bold-fonts(toggle)»
"
echo -e "\e[32m font-linedrawing\e[0m (class SmeBSB)
 Эта запись вызывает действие set-font-linedrawing(s)
"
echo -e "\e[32m font-packed\e[0m (class SmeBSB) Эта запись вызывает действие set-font-packed(s)
"
echo -e "\e[32m font-doublesize\e[0m (class SmeBSB) Эта запись вызывает действие set-font-doublesize(s)
"
echo -e "\e[32m render-font\e[0m (class SmeBSB) Эта запись вызывает действие set-render-font(s)
"
echo -e "\e[32m utf8-fonts\e[0m (class SmeBSB) Эта запись вызывает действие set-utf8-fonts(s)
"
echo -e "\e[32m utf8-mode\e[0m (class SmeBSB) Эта запись вызывает действие set-utf8-mode(s)
"
echo -e "\e[32m utf8-title\e[0m (class SmeBSB) Эта запись вызывает действие set-utf8-title(s)
"
echo -e "\e[32m allow-color-ops\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-color-ops(toggle)
"
echo -e "\e[32m allow-font-ops\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-fonts-ops(toggle)
"
echo -e "\e[32m allow-tcap-ops\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-tcap-ops(toggle)
"
echo -e "\e[32m allow-title-ops\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-title-ops(toggle)
"
echo -e "\e[32m allow-window-ops\e[0m (class SmeBSB)
 Эта запись вызывает действие allow-window-ops(toggle)
"
echo -e "\e[36m В меню Tek Options (название виджета tekMenu) есть следующие записи:\e[0m
"
echo -e "\e[32m tektextlarge\e[0m (class SmeBSB) Эта запись вызывает действие set-tek-text(large)
"
echo -e "\e[32m tektext2\e[0m (class SmeBSB) Эта запись вызывает действие set-tek-text(2)
"
echo -e "\e[32m tektext3\e[0m (class SmeBSB) Эта запись вызывает действие set-tek-text(3)
"
echo -e "\e[32m tektextsmall\e[0m (class SmeBSB) Эта запись вызывает действие set-tek-text(small)
"
echo -e "\e[32m tekpage\e[0m (class SmeBSB) Эта запись вызывает действие tek-page()
"
echo -e "\e[32m tekreset\e[0m (class SmeBSB) Эта запись вызывает действие tek-reset()
"
echo -e "\e[32m tekcopy\e[0m (class SmeBSB) Эта запись вызывает действие tek-copy()
"
echo -e "\e[32m vtshow\e[0m (class SmeBSB) Эта запись вызывает действие set-visibility(vt,toggle)
"
echo -e "\e[32m vtmode\e[0m (class SmeBSB) Эта запись вызывает действие set-terminal-type(vt)
"
echo -e "\e[32m tekhide\e[0m (class SmeBSB) Эта запись вызывает действие set-visibility(tek,toggle)
"
echo "
└────────────────────────────────────────────────────────────────────────────────┘
"
