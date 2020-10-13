DIALOG=${DIALOG=dialog}
VERSION="0.06.2020"
DATE=`date`
clear
$DIALOG --backtitle "Helper $VERSION -- немного о популярных дистрибутивах Linux. Дата: $DATE" --title " Дистрибутивы " --clear --scrollbar \
	--yesno " В этой статье речь пойдёт о самых популярных дистрибутивах Linux для новичка.
 1. Debian. Это один из самых старейших дистрибутивов Linux, в которым можно регулировать степень красноглазия в довольно широких пределах. Минимум три ветки: Stable -- очень стабильна, однако можно обнаружить, что версии софта довольно старые, Testing и Sid брать не буду. Они не очень стабильны, хотя софт в них поновеее. 
Имеет 100500 вариантов установки: Live-вариант, когда вы во время установки системы можете смотреть фильмы, слушать музыку, сидеть в интернете, смотреть порно и много чего ещё. Есть только установочный образ. Помимо этого, установку можно проводить через интернет, т.е. вам будет доступна только базовая система, а нужные пакеты будут скачиваться с репозитория. У него есть тысяча сборок (Devuan Linux) и говносборок (Ubuntu Linux).

 2. Rosa Linux. Русский дистрибутив, форк Mandriva Linux. Имеет полурабочие киллер-фичи прямиком из 2012 года, такие как:
 - кривой виджет стековых папок (фирменный KDE-шный виджет намного лучше)
 - полурабочий Time Frame, который сто лет как заброшен
 - ну и самое вкусное -- всё это работает на... KDE 4! А пятые кеды так никто и не хочет облагородить...
Ну а также имеет свои репозитории, где пакеты старше, чем в стабильной ветке Debian, ''отличнейшую'' поддержку,... И всё! На дистрибутив, похоже, положили болт. То офсайт у них взломан, то вышла новая версия Rosa R11.1, а на этом офсайте древняя, как мой первый телефон, версия R11, которая ещё пока поддерживается, но после установки прилетает 100500 обновлений ))))).

 4. Ubuntu Linux. Самый худший дистрибутив Linux за всю его историю. Магазин приложений закатан в Snap, сам Snap лагает безбожно, система медленная, нестабильная, ненадёжная. Если вы мазохист, Ubuntu -- самое то для вас! Именно разработчики убунты сделали принципиально новый формат самодостаточных пакетов -- Snap, от которого все умные люди плюются. По понятным причинам. Работа Helper на Ubuntu Linux невозможна (стоит проверка на дистрибутив, Ubuntu в чёрном списке).

 3. Linux Mint. Единственная нормальная сборка на основе Ubuntu Linux. Работает намного лучше африканского поделия. Именно с Минта и начинают новички изучение Linux. И очень зря. Надо уходить со всех сборок, говносборок, форков Ubuntu.

 4. Mx Linux -- образовался от двух дистрибутивов -- Mepis Linux и AntiX Linux (поэтому и называется -- MX). Эдакий Debian для новичка. Раньше предоставлялся только с рабочим окружением Xfce, однако с недавнего времени доступна сборка с KDE Plasma. МХ сочетает в себе лаконичность AntiX Linux и надёжность Debian. Система инициализации не SystemD, а классическая SysVInit. Среди предустановленного ПО есть очень много полезных утилит, таких как настройка GRUB, Conky Manager и многое другое. Разрабатывался специально для слабого железа.

 5. Если МХ Linux тяжеловат для вас, то, может быть, стоит попробовать родительский дистрибутив? AntiX Linux -- некая колибри в мире Линукс. По умолчанию предоставляется с оконным менеджером IceWM. Хотя есть сборки вообще без него (редакции Netinstall и Core).

 6. Manjaro Linux -- Arch для новичков. Для совсем новичков. Поставляется с большим числом рабочих окружений или оконных менеджеров по умолчанию. Имеет все прелести Arch Linux -- это AUR, гибкость и стабильность. Плюс простота. Что ещё надо для новичка?)))

 7. Exe Linux. Сборка на основе Devuan Linux. Наследует все его классные фишки, а именно:
- свои репозитории для некоторых пакетов (отвязанных от SystemD)
- использование классической системы инициализации SystemVInit вместо SystemD
Самое вкусное то, что получилась очень хорошая сборка, её в пору относить к ДОБРОСБОРКАМ, что разработчик Helper и сделал. Использует рабочее окружение Trinity Desktop Environment. А это значит, что Exe будет отлично работать на железе двадцатилетней давности. Найти бы легковесные программы ещё! Хотя это же Linux, там есть всё.

(C) @linuxoid85 специально для ''Советы по Linux/GNU Linux'', 2020
" 30 80