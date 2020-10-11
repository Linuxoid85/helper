DIALOG=${DIALOG=dialog}
VERSION="0.06.2020"
DATE=`date`
clear
$DIALOG --backtitle "Helper $VERSION -- справка по EOPKG. Дата: $DATE" --title " Справка по EOPKG " --clear \
		--yesno "  Синтаксис:
    sudo eopkg <действие> <пакет\ы>
--------------------------- Обновление ОС ----------------------------
  Обновление всей ОС:
    sudo eopkg upgrade

  Обновление определённого пакета/ов:
    sudo eopkg upgrade имя-нужного-пакета

Или (названия пакетов пишутся через пробел):
    sudo eopkg upgrade имя-нужного-пакета имя-нужного-пакета имя-нужного-пакета


------------------------- Установка пакетов --------------------------
  Установка одного пакета/ов:
    sudo eopkg install имя-нужного-пакета

  Установка нескольких пакетов (названия пакетов пишутся через пробел):
    sudo eopkg install имя-нужного-пакета

  Переустановка пакета/ов:
    sudo eopkg install --reinstall имя-нужного-пакета


-------------------------- Удаление пакетов --------------------------
    sudo eopkg remove имя-нужного-пакета


------------------------ Информация о пакетах ------------------------
  Узнать информацию о пакете:
    sudo eopkg info имя-нужного-пакета

  Найти нужный пакет:
    sudo eopkg search имя-нужного-пакета


-------- Смотрите также --------
man eopkg в консоли

(C) @linuxoid85 специально для ''Советы по Linux/GNU Linux'', 2020" 30 80