if [[ $# -eq 0 ]]
then while [[ $choix != 5 ]]
do
read x
clear
echo 
"Entrez votre choix pour continuer
1) Lister les utilisateurs simples:
2) Modifier le mot de passe d'un utilisateur:
3) Décrypter /etc/shadow et afficher le mot de passe d'un utilisateur:
4) Sauvgarder les mots de passe cryptés dans password.txt:
5) pour quitter"
read choix


case $choix in

1) 
	echo "Lister:" ;;
2)
	echo "Modifier:" ;;
3) 	
	echo "Decrypter:" ;;
5) 
	echo "on quitte le programme" ;;
4)
        echo "Sauvgarder" ;;
*)
	echo "mauvais choix" ;;

esac
done
elif [[ $1 = "-l" ]]
	then echo "Lister:"
elif [[ $1 = "-p" ]]
	then echo "Modifier:"
elif [ $1 = "-decrypter" ] || [ $1 = "-d" ]
	then echo "Decrypter:"
elif [[ $1 = "-s" ]]
	then echo "Sauvgarder:"
else echo "mauvais choix"
fi
