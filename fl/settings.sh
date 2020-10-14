VERSION="0.06.2020"
DIALOG=${DIALOG=dialog}
DATE=`date`
config_file=~/.helper.config_file	#Файл с настройками
show_welcome=welcome			#Стартовый экран
ui=update

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

$DIALOG --backtitle "Helper $VERSION -- настройки программы. Дата: $DATE" --title " Настройки " --clear \
	--checklist "Выберите нужный пункт [Space] и нажмите [Enter]:" 15 55 15 \
		"$show_welcome" "Отображение меню приветствия" $shw \
		"$ui" "Автообновление" $up 2> $config_file