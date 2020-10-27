#Helper		: Помощник новичка
#Автор		: Linuxoid85
#Сообщество	: LinuxSovet
#Год		: 2020
#Переменные:
ERR=~/.helper_ERR_log.log
update_file=~/.helper.distr.update
tempfile=~/.helper.tmpfile


#Функции:
exit_pr() {
	if test -f "$ERR"; then		#Если файл $ERR существует, то стереть его во избежание ошибок после повторного старта Helper
		rm $ERR
	fi

	clear
	kdialog --title "$exit_pr_title" --yesno "$ext_pr"
	ext_pr=$?
	if [ $ext_pr != 1 ]; then
		clear
		echo "$exit_cli"
		exit 0
	fi
}

error() {
	#Если неправильно введена комманда
	if grep 'key' $ERR; then
		kdialog --title "$error_print_title" --error "$error_print"
	fi

	#Если ещё ведётся разработка (актуально для предрелизной версии, либо же для недоделок в скрипте)
	if grep 'dev' $ERR; then
		kdialog --title "$error_dev_title" --sorry "$error_dev"
	fi

	#Если файл не найден (целостность установочного пакета всегда проверяется, однако на всякий случай очень хорошо иметь данную функцию для отладки скрипта)
	if grep 'file' $ERR; then
		kdialog --title "$error_file_title" --error "$error_file"
	fi

	#Если не найдена нужная локализация
	if grep 'lc' $ERR; then
		xmessage "Ошибка! Не найдена локализация. \nHelper не может запустится без файла локализации! \n
\nError code: ''lc''
\nВыполните helper --u, чтобы войти в безопастный режим и установить локализации!"
		echo "error code = lc
Отсутствуют локализации в каталоге /usr/share/helper/lc
Невозможно запустить Hlp-DialogUI
Выполните helper -u , чтобы попытаться решить проблему" > $ERR
		kdialog --title "ERROR! LOCALES DOESN'T EXIST!" --textbox $ERR 600 300
	fi
}

text_inf() {
	kdialog --title "$title" --textbox "$text" 550 300
}

pkg_menu() {
	run_pkg=$(kdialog --title "$title_pkg" \
	--menu "$menu_inf" \
	apt "$menu_apt" \
	dpkg "$menu_dpkg" \
	gdebi "$menu_gdebi" \
	pacman "$menu_pacman" \
	yum "$menu_yum" \
	pkg "$menu_pkg" \
	ext "$exit_to_start" \
	exit_prg "$exit_to_cli")
	echo $run_pkg > $tempfile

	if grep 'apt' $tempfile; then
		title="$menu_apt"
		text=/usr/share/helper/pm/apt.hlp
		text_inf
		pkg_menu
	fi

	if grep 'dpkg' $tempfile; then
		title="$menu_dpkg"
		text=/usr/share/helper/pm/dpkg.hlp
		text_inf
		pkg_menu
	fi

	if grep 'gdebi' $tempfile; then
		title="$menu_gdebi"
		text=/usr/share/helper/pm/gdebi.hlp
		text_inf
		pkg_menu
	fi

	if grep 'pacman' $tempfile; then
		title="$menu_pacman"
		text=/usr/share/helper/pm/pacman.hlp
		text_inf
		pkg_menu
	fi

	if grep 'yum' $tempfile; then
		title="$menu_yum"
		text=/usr/share/helper/pm/yum.hlp
		text_inf
		pkg_menu
	fi

	if grep 'pkg' $tempfile; then
		title="$menu_pkg"
		text=/usr/share/helper/pm/pkg.hlp
		text_inf
		pkg_menu
	fi

	if grep 'ext' $tempfile; then
		start_pr
	fi

	if grep 'exit_prg' $tempfile; then
		exit_pr
	fi
}

bsh_menu() {
	LS=/usr/share/helper/sh/ls.sh
	CD=/usr/share/helper/sh/cd.sh
	MKDIR=/usr/share/helper/sh/mkdir.sh
	MV=/usr/share/helper/sh/mv.sh
	BASH=/usr/share/helper/sh/bash.sh

	run_sh=$(kdialog --title "$title_sh" \
	--menu "$menu_inf" \
	1 "Краткий список команд BASH" \
	2 "Инструкция по работе с Ls" \
	3 "Инструкция по работе с Cd" \
	4 "Инструкция по работе с MkDir" \
	5 "Инструкция по работе с MV" \
	6 "Выход в главное меню" \
	7 "Выход из программы")
	echo "run_sh" > $tempfile

	if grep '1' $tempfile; then
		title="Краткий список команд Shell"
		text=/usr/share/helper/sh/bash.sh
		text_inf
		sh_menu
	fi

	if grep '3' $tempfile; then
		title="Инструкция по работе с CD"
		text=/usr/share/helper/sh/cd.sh
		text_inf
		sh_menu
	fi

}

sys_menu() {
	DISTR=/usr/share/helper/sys/distro.sh
	DISTR_FOR_NOOBS=/usr/share/helper/sys/distro_for_noobs.sh
	USRS=/usr/share/helper/sys/usrs.sh
	run=`cat $tempfile`
	dialog --backtitle "Helper -- справка по системам Linux" --title " Выбор нужного подпункта " \
	--menu "Клавишами со стрелками выберите нужный пункт и \nнажмите [Enter]" 16 58 15 \
	"distr" "Немного о популярных дистрибутивах Linux" \
	"distr2" "Лучшие дистрибутивы Linux для новичка" \
	"usr" "Добавление пользователя в систему через терминал" \
	"ram" "Немного об ОЗУ" \
	"pwd" "Где я?" \
	"date" "Дата" \
	"ext" "Выход в главное меню" \
	"exit" "Выход из программы" 2> $tempfile
}

start_pr() {
	start=$(kdialog --title "Главное меню" \
	--menu "Клавишами со стрелками выберите нужный пункт и
нажмите Ok" \
	pkg "Пакетные менеджеры" \
	bsh "BASH и всё с ним связанное" \
	sys "Операционные системы" \
	helper "О Helper" \
	exit "Выход")

	case $start in
		pkg)
			pkg_menu
		;;

		bsh)
			bsh_menu
		;;

		sys)
			sys_menu
		;;

		helper)
			hlp_menu
		;;

		exit)
			exit_pr
		;;

		*)
			echo "key" > $ERR && error
		;;
	esac
}

config_file=~/.helper.config_file	#Файл с настройками

if grep 'ua' $config_file; then
	if test -f "/usr/share/helper/lc/ua.hlplc"; then
		source /usr/share/helper/lc/ua.hlplc
		echo "Украинская локализация загружена"
	else
		echo "lc" > $ERR && error
	fi
else
	if test -f "/usr/share/helper/lc/ua.hlplc"; then
		source /usr/share/helper/lc/ua.hlplc
		echo "Русская локализация загружена"
	else
		echo "lc" > $ERR && error
	fi
fi

while true; do
	start_pr
done