# ** #

# ** #
VERSION="0.06.2020"
tempfile=~/.helper.tmpfile
update_file=~/.helper.distr.update
DATE=`date`
config_file=~/.helper.config_file
show_welcome=welcome			#Стартовый экран
ru=russian
ua=ukrainian
ui=strt
tmpfile=~/.helper.cnf.tmpfile
# ** #

# Если файл есть -- выводим соответствующее сообщение.
# Если файла нет -- создаём и пишем в него значения
# переменных $show_help_graphix и $auto_update -- они
# отвечают за графический режим отображения справки и
# автоматическое обновление после старта программы.
if test -f "$config_file"; then
	echo "Файл с настройками успешно загружен"
else
	touch $config_file
	echo "$ui" > $config_file
fi

# А это процедура чтения конфига.
if grep $show_welcome $config_file; then
	shw="ON"
else
	shw="off"
fi

if grep $ui $config_file; then
	up="ON"
else
	up="off"
fi

if grep $ru $config_file; then
	shw1="ON"
else
	shw1="off"
fi

if grep $ua $config_file; then
	shw2="ON"
else
	shw2="off"
fi

menu_inf="Выберите нужный пункт и нажмите [Enter]:"
menu_1="Настройки Helper"
# ** #
# Старт Hlp-DialogUI
start_st(){
settings=$(dialog --backtitle "Helper $VERSION -- $menu_1. Дата: $DATE" --title "Настройки" \
	--menu "$menu_inf" 16 58 15 \
		"lng" "Язык программы" \
		"appear" "Внешний вид программы" \
		"ext" "Выход в главное меню")
echo $settings > $tmpfile
}

start_st

if grep 'lng' $tmpfile; then
	settings_lng=$(dialog --backtitle "Helper $VERSION -- $menu_1" --title " $menu_1 " \
		--radiolist "$menu_inf" 16 58 15 \
			"$ru" "Русский язык" $shw1 \
			"$ua" "Украинский" $shw2 2> $tempfile)
	start_st
fi

if grep 'appear' $tmpfile; then
	settings_appear=$(dialog --backtitle "Helper $VERSION -- $menu_1" --title "Настройки внешнего вида" \
		--checklist "$menu_inf" 16 58 15 \
			"$show_welcome" "Отображение меню приветствия" $shw)
	start_st
fi

echo "Language = [$settings_lng]
Appear = [$settings_appear]" > $config_file

if grep 'ext' $tmpfile; then
	helper
fi