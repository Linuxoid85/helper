DIALOG=${DIALOG=dialog}
VERSION="0.06.2020"
DATE=`date`
clear

$DIALOG --backtitle "Helper $VERSION -- справка по работе с Mv (BASH). Дата: $DATE" --title " Справка по MV " --clear --scrollbar \
		--yesno "  Синтаксис: 
mv <ключ> <файл1> <файл2/куда>

+---------------------------- Ключи ----------------------------+
+ Ключ - Расшифровка -------------------------------------------+
 --backup -- сделать резервную копию файла
 -f, --force -- не предупреждать пользователя о перезаписи
 -i, --interactive -- предупреждать пользователя
 -n, --no-clobber -- не перезаписывать файл
 -t, --target-directory -- переместить все данные в определённую
директорию
 --version -- просмотреть версию mv
 
ПРИМЕЧАНИЯ. Бекапы (резервные копии) в названии имеют тильду (~). На
конце.
	    Утилита mv служит не только для перемещения файла/ов, но и для
переименования такового. Т.е. файл копируется сам в себя, но с другим именем.


------------------------- Использование -------------------------
(примеры, не все, но самые основные)
Перемещение файла ''file1'' в директорию ''/home/vasya/porno/'':
 mv file1 /home/vasya/porno/
 
Переименование файла ''file1'' в ''file'':
 mv file1 file


-------- Смотрите также --------
 man mv в консоли

(C) @linuxoid85 специально для ''Советы по Linux/GNU Linux'', 2020" 30 80