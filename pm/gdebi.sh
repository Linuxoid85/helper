DIALOG=${DIALOG=dialog}
VERSION="0.06.2020"
DATE=`date`
clear
$DIALOG --backtitle "Helper $VERSION -- справка по Gdebi. Дата: $DATE" --title " Справка по GDEBI " --clear \
        --yesno "  Синтаксис:
  gdebi <ключ> <пакет>

------------------------- Работа с пакетами --------------------------
 Запустить неинтерактивно (опасно!):
   gdebi -n

--- Или ---
   gdebi --non-interactive


 Установить опцию конфигурации APT:
   gdebi -o APT_OPTS

--- Или ---
   gdebi --option=APT_OPTS


 Не отображать информацию о ходе выполнения:
   gdebi -q

--- Или ---
   gdebi --quiet     


 Только эмулировать и вывести строку, совместимую с apt-get в stderr:
   gdebi --apt-line


 Использовать альтернативную корневую папку:
   gdebi --root=ROOTDIR


-------- Смотрите также --------
 man gdebi в консоли

--- Или --- 
gdebi -h в консоли


(C) @linuxoid85 специально для ''Советы по Linux/GNU Linux'', 2020

" 30 80