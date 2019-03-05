if [[ $# -eq 0 ]]
then while [[ $choix != 6 ]]
do
read choix
clear
echo 
"
Entrez votre choix pour continuer
1) Lister les utilisateurs simples:
2) Modifier le mot de passe d'un utilisateur:
3) Décrypter /etc/shadow et afficher le mot de passe d'un utilisateur:
4) Sauvgarder les mots de passe cryptés dans password.txt:
5) help
6) pour quitter
"
read choix


case $choix in

1) 
	getent passwd {1000..60000} ;;
2)
	echo "User name :"
	read us
	passwd $us ;;
3) 	
	echo "User name :" 
	read user
	cat /etc/passwd | grep $user
	cat /etc/shadow | grep $user 
	unshadow /etc/passwd /etc/shadow >password.txt
	john pass --show;;
6) 
	echo "on quitte le programme" ;;
5)
	echo "help" 
"
	-l:Lister les utilisateurs simples
	-p:Modifier le mot de passe d'un utilisateur
	-d/-decrypter:Décrypter /etc/shadow et afficher le mot de passe d'un utilisateur
	-s: Sauvgarder les mots de passe cryptés dans password.txt";;
4)
        cat /etc/shadow > pass.txt ;;
*)
	echo "mauvais choix" ;;

esac
done
elif [[ $1 = "-l" ]]
	then getent passwd {1000..60000}
elif [[ $1 = "-p" ]]
	then echo "User name :"
	read us
	passwd $us 
elif [ $1 = "-decrypter" ] || [ $1 = "-d" ]
	then 
	echo "user" 
	read user
	cat /etc/passwd | grep $user
	cat /etc/shadow | grep $user 
	unshadow /etc/passwd /etc/shadow >password.txt
	john pass --show
elif [[ $1 = "-s" ]]
	then cat /etc/shadow > pass.txt
elif [[ $1 = "-h" ]]
	then echo "help" 
"
	-l:Lister les utilisateurs simples
	-p:Modifier le mot de passe d'un utilisateur
	-d/-decrypter:Décrypter /etc/shadow et afficher le mot de passe d'un utilisateur
	-s: Sauvgarder les mots de passe cryptés dans password.txt"

else echo "mauvais choix"
fi
