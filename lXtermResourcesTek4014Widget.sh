#!/bin/bash
sleep 0.1;echo "┌────────────────────────────────────────────────────────────────────────────────┐"
sleep 0.1;echo -e "
\e[1;36m   Tek4014 Widget Resources \e[0m\e[36m Ресурсы виджетов Tek4014\e[0m
"
sleep 0.1;echo -e "   Следующие ресурсы указаны как часть виджета tek4014 (класс Tek4014).
   Они определяются шаблонами, такими как «XTerm.tek4014.NAME»:
"
sleep 0.1;echo -e "\e[32m font2         (class Font)\e[0m
 Задает шрифт номер 2 для использования в окне Tektronix.
"
sleep 0.1;echo -e "\e[32m font3         (class Font)\e[0m
 Задает шрифт номер 3 для использования в окне Tektronix.
"
sleep 0.1;echo -e "\e[32m fontLarge     (class Font)\e[0m
 Задает крупный шрифт для использования в окне Tektronix.
"
sleep 0.1;echo -e "\e[32m fontSmall     (class Font)\e[0m
 Задает мелкий шрифт для использования в окне Tektronix.
"
sleep 0.1;echo -e "\e[32m ginTerminator (class GinTerminator)\e[0m
 Указывает, какие символы должны следовать за отчетом GIN или отчетом о состоянии.
 Возможные варианты:
    «none»,   что не отправляет завершающих символов,
    «CRonly», который отправляет CR,
    «CR\&EOT», который отправляет как CR, так и EOT. По умолчанию «нет».
"
sleep 0.1;echo -e "\e[32m height        (class Height)\e[0m
 Задает высоту окна Tektronix в пикселях.
"
sleep 0.1;echo -e "\e[32m initialFont   (class InitialFont)\e[0m
 Указывает, какой из четырех шрифтов Tektronix следует использовать изначально.
 Значения те же, что и для действия set-tek-text. По умолчанию «большой».
"
sleep 0.1;echo -e "\e[32m width         (class Width)\e[0m
 Задает ширину окна Tektronix в пикселях.
"
sleep 0.1;echo "└────────────────────────────────────────────────────────────────────────────────┘
"
