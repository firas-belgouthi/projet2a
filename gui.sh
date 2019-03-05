yad --width 200 --height 300 --title "sujet 15" \
--image="h.jpg"  \
    --button="lister":1\
    --button="modifier":2 \
    --button="decrypte":3 \
    --button="sauvgrder":4 \
	--button="Help":5 \
    --button=gtk-cancel:6 \
    --on-top \
    --center \


#ret=$?
#[[ $ret -eq 5 ]] && exit 0

choix=$?

case $choix in

	 1)
	  ./projet.sh -l
	  ;;
	 2)
	  ./projet.sh -p
	  ;;
	 3)
	  ./projet.sh -d
	  ;;
	4)
	  ./projet.sh -s 
	  ;;
	5)
	  ./projet.sh -h
	  ;;

esac
