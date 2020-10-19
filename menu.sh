#Переработанное меню для Helper - рыба.

#===========================================================================================#
#Объявление переменных:
tempfile=~/tempfile.helper

#===========================================================================================#
#Функции:

#Первое меню:
menu1()
{
  if [[ $SUB_MENU != "menu1" ]]; then
    SUB_MENU="menu1"
    HIGHLIGHT_SUB=1
  else
    if [[ $HIGHLIGHT_SUB != 8 ]]; then
      HIHGLIGHT_SUB=$(( HIGLIGHT_SUB + 1 ))
    fi
  fi

  dialog --default-item ${HIGHLIGHT_SUB} --backtitle "Helper - menu1" --title " Выбор пункта " \
    --menu "Выберите нужный подпункт и нажмите [Enter]:" 13 58 16 \
      "1" "Подпункт 1" \
      "2" "Подпункт 2" \
      "3" "Выход" 2>${tempfile}
      
  HIGHLIGHT_SUB=$(cat ${tempfile})
  
  #Если прочитано "1" (без кавычек) в выхлопе cat ~/tempfile.helper (читает файл ~/tempfile.helper); значит,... 
  if grep '1' $HIGHLIGHT_SUB; then
    clear && echo "Был выбран пункт номер 1"  # clear - очистить экран && echo - вывести текст на экран
    read  #Ждём нажатие [Enter]
  ;;
  
  if grep '2' $HIGHLIGHT_SUB; then
    clear && echo "Был выбран пункт номер 2"
    read
  ;;
  
  if grep '3' $HIGHLIGHT_SUB; then
    clear && echo "Спасибо за сипользование программы!"
    exit 0  #Выход из программы
  ;;
}  

#Стартовое меню:
start_pr()
{
    if [[ $SUB_MENU != "start_pr" ]]; then
       SUB_MENU="start_pr"
       HIGHLIGHT_SUB=1
    else
       if [[ $HIGHLIGHT_SUB != 8 ]]; then
          HIGHLIGHT_SUB=$(( HIGHLIGHT_SUB + 1 ))
       fi
    fi
    
  dialog --default-item ${HIGHLIGHT_SUB} --backtitle "Helper - главное меню" --title " Выбор пункта " \
    --menu "Выберите нужный пункт и нажмите [Enter]:" 13 58 16 \
      "1" "Пункт 1" \
      "2" "Пункт 2" \
      "3" "Пункт 3" \
      "4" "Выход" 2>${tempfile}
      
  HIGHLIGHT_SUB=$(cat ${tempfile})
      case $(cat ${tempfile}) in
        1)
          echo "Вы выбрали пункт 1, нажмите [Enter]..." && read
          menu1
        ;;
        
        2)
          echo "Вы выбрали пункт 2, нажмите [Enter]..." && read
          menu1
        ;;
        
        3)
          echo "Вы выбрали пункт 3, нажмите [Enter]..." && read
          menu1
        ;;
        
        4)
          echo "Спасибо за сипользование программы!"
          exit 0
        ;;
      esac
}

#===========================================================================================#
#Тело скрипта:
start_pr
