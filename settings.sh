VERSION="0.06.2020"
DIALOG=${DIALOG=dialog}
DATE=`date`
config_file=~/.helper.config_file	#Файл с настройками
show_help_graphix=show_help_graphic	#Псевдографический режим
show_welcome=show_welcome_screen	#Стартовый экран
ui=yad

# Если файл есть -- выводим соответствующее сообщение.
# Если файла нет -- создаём и пишем в него значения
# переменных $show_help_graphix и $auto_update -- они
# отвечают за графический режим отображения справки и
# автоматическое обновление после старта программы.
if test -f "$config_file"; then
	echo "Файл с настройками успешно загружен"
else
	touch $config_file
	echo "$show_help_graphix" > $config_file
fi


# А сейчас пойдёт дебилизм, ибо я не знаю, как
# по-другому. FIXME !!! Далее Dialog получает
# данные из конфига, куда ставить галочки. С одной
# стороны, просто, но на самом деле -- нифига.

if grep $show_welcome $config_file; then
	if grep $ui $config_file; then
		$DIALOG --backtitle "Helper $VERSION -- настройки программы. Дата: $DATE" --title " Настройки " --clear \
		--checklist "Выберите нужный пункт [Space] и нажмите [Enter]:" 21 55 12 \
			"$show_welcome" "Отображение меню приветствия" ON \
			"$ui" "Графический GTK-интерфейс" ON 2> $config_file
	else
		$DIALOG --backtitle "Helper $VERSION -- настройки программы. Дата: $DATE" --title " Настройки " --clear \
		--checklist "Выберите нужный пункт [Space] и нажмите [Enter]:" 21 55 12 \
			"$show_welcome" "Отображение меню приветствия" ON \
			"$ui" "Графический GTK-интерфейс" off 2> $config_file
	fi
else
	if grep $ui $config_file; then
		$DIALOG --backtitle "Helper $VERSION -- настройка программы. Дата: $DATE" --title " Настройки " --clear \
		--checklist "Выберите нужный пункт [Space] и нажмите [Enter]:" 21 55 12 \
			"$show_welcome" "Отображение меню приветствия" off \
			"$ui" "Графичееский GTK-интерфейс" ON 2> $config_file
	else
		$DIALOG --backtitle "Helper $VERSION -- настройка программы. Дата: $DATE" --title " Настройки " --clear \
		--checklist "Выберите нужный пункт [Space] и нажмите [Enter]:" 21 55 12 \
			"$show_welcome" "Отображение меню приветствия" off \
			"$ui" "Графический GTK-интерфейс" off 2> $config_file
	fi
fi

