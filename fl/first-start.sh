DIALOG=${DIALOG=dialog}
VERSION="0.06.2020"
DATE=`date`
clear
$DIALOG --backtitle "Helper $VERSION -- добро пожаловать! Дата: $DATE" --title " Начало " --clear \
	--yesno " Добро пожаловать в Helper $VERSION, линуксоид! В
новой версии (Helper $VERSION) много нового!

  Helper - помощник новичка, написанный с нуля на BASH. В нём описаны несколько утилит - 
APT, DPKG, GDEBI и EOPKG, но в будущем планируется добавить и другие. 
  Это более понятный и краткий аналог легендарных манов с некоторыми 
ненужными фичами.

-----------------------------------------------------------------
 Краткий список терминов и сокращений, используемых
в Helper.

 ПМ - пакетный менеджер. Используется в стартовом меню программы

 Пакетный менеджер -- программа для установки нужного ПО и драйверов

 BASH - командный интерпретатор, который используется в большинстве
дистрибутивов Linux. Для него пишут скрипты. К примеру, Helper -- 
скрипт на BASH.

 DPKG -- пакетный менеджер в Debian Linux. Самый обычный, не умеет качать
зависимости, а ставит только локальный файл, но он более функционален,
чем более дружелюбный к пользователю ПМ APT

 APT -- пакетный менеджер в Debian Linux. В отличии от DPKG, описанного
выше, Apt (Advanced Package Tool) помимо установки нужного пакета,
качает все его зависимости из репозиториев (репозиторий -- сервер, на
котором хранятся пакеты программ, драйвера, образы ОС, иными словами,
репозитории -- сетевые источники)

 YUM -- пакетный менеджер в RHEL, Cent OS.

 PACMAN -- пакетный менеджер в Arch Linux, Manjari Linux

 EOPKG -- пакетный менеджер в Solus. Самый крупный велосипед (как ПМ,
так и сама операционка) за всю историю Linux

 '' -- кавычки.


-------------------- Ссылки на другие проекты -------------------
1. www.vk.com/club_image_linux		- внешний вид Linux
2. www.vk.com/linuxparadise		- новости и игры
3. www.vk.com/nixscript			- терминал Linux
4. www.vk.com/linuxsovet		- наша группа

-----------------------------------------------------------------
(C) @linuxoid85 специально для ''Советы по Linux/GNU Linux'', 2020" 30 80