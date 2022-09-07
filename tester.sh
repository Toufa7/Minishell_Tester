#!/bin/sh
###################################################################
#Script Name	: Minishell Tester                                #
#Author       	: POMS vs BOUCHFA                                 #
#Email         	: otoufah@student.1337.ma                         #
#Email         	: abouchfa@student.42.fr                          #
###################################################################

RESET="\033[0m"
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
SEPARATOR="------------------------------------"
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

ECHO="
███████╗ ██████╗██╗  ██╗ ██████╗ 
██╔════╝██╔════╝██║  ██║██╔═══██╗
█████╗  ██║     ███████║██║   ██║
██╔══╝  ██║     ██╔══██║██║   ██║
███████╗╚██████╗██║  ██║╚██████╔╝
╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝ 
"
EXIT="
███████╗██╗  ██╗██╗████████╗
██╔════╝╚██╗██╔╝██║╚══██╔══╝
█████╗   ╚███╔╝ ██║   ██║   
██╔══╝   ██╔██╗ ██║   ██║   
███████╗██╔╝ ██╗██║   ██║   
╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   
"
EXPORT="
███████╗██╗  ██╗██████╗  ██████╗ ██████╗ ████████╗
██╔════╝╚██╗██╔╝██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝
█████╗   ╚███╔╝ ██████╔╝██║   ██║██████╔╝   ██║   
██╔══╝   ██╔██╗ ██╔═══╝ ██║   ██║██╔══██╗   ██║   
███████╗██╔╝ ██╗██║     ╚██████╔╝██║  ██║   ██║   
╚══════╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
                                                  
"
PIPES="
██████╗ ██╗██████╗ ███████╗███████╗
██╔══██╗██║██╔══██╗██╔════╝██╔════╝
██████╔╝██║██████╔╝█████╗  ███████╗
██╔═══╝ ██║██╔═══╝ ██╔══╝  ╚════██║
██║     ██║██║     ███████╗███████║
╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝
"
CD="
 ██████╗██████╗ 
██╔════╝██╔══██╗
██║     ██║  ██║
██║     ██║  ██║
╚██████╗██████╔╝
 ╚═════╝╚═════╝
"

UNSET="
██╗   ██╗███╗   ██╗███████╗███████╗████████╗
██║   ██║████╗  ██║██╔════╝██╔════╝╚══██╔══╝
██║   ██║██╔██╗ ██║███████╗█████╗     ██║   
██║   ██║██║╚██╗██║╚════██║██╔══╝     ██║   
╚██████╔╝██║ ╚████║███████║███████╗   ██║   
 ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝   ╚═╝   
"

COMMANDS="
 ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
"

ERRORS="
███████╗██████╗ ██████╗  ██████╗ ██████╗ ███████╗
██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██╔════╝
█████╗  ██████╔╝██████╔╝██║   ██║██████╔╝███████╗
██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗╚════██║
███████╗██║  ██║██║  ██║╚██████╔╝██║  ██║███████║
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝                                            
"



function	usage()
{
	echo '\033[1mNAME\033[0m'
	echo "\033[1;37m	Minishell Tester" "${NORMAL} -- A Simple Minishell tester Good Luck 🤞 "
	echo ""
	echo '\033[1mSYNOPSIS\033[0m'
	echo "\033[1;37m	./tester.sh  [-h|E|u|p|x|e]"
	echo "${NORMAL}"
	echo '\033[1mDESCRIPTION\033[0m'
	echo ""
	echo "${NORMAL} The following options are available:"
	echo "\033[1;37m	-h	${NORMAL}Help"
	echo "\033[1;37m	-E	${NORMAL}Echo"
	echo "\033[1;37m	-p	${NORMAL}Pipes"
	echo "\033[1;37m	-x	${NORMAL}Exit"
	echo "\033[1;37m	-u	${NORMAL}Unset"
	echo "\033[1;37m	-e	${NORMAL}Export"
}

function ProgressBar
{
    let progress=(${1}*100/${2}*100)/100
    let done=(${progress}*4)/10
    let left=40-$done
    fill=$(printf "%${done}s")
    empty=$(printf "%${left}s")
    
printf "\rCompiling: [${fill// /#}${empty// /-}] ${progress}%%"

}

function testing()
{
	# Put you Minishell's path down here
	MINISHELL_PATH=".."
	# Based on the subject your program name is minishell
	# Simply Checking if you have an executable file called minishell
	test -x $MINISHELL_PATH/minishell
	if [ $? != 0 ];
	then
	{
		cd $MINISHELL_PATH ; make ; cd $OLDPWD
		start=1
		end=10
		for i in $(seq ${start} ${end})
		do
			sleep 0.1
			ProgressBar ${i} ${end}
		done
		echo "\n"
	}
	fi
	MINISHELL=$(echo $*	| $MINISHELL_PATH/minishell 2>&-)
	MINISHELL_EXIT_STATUS=$?
	BASH=$(echo $* | bash 2>&-)
	BASH_EXIT_STATUS=$?
	if [ "$MINISHELL" == "$BASH" ] && [ "$MINISHELL_EXIT_STATUS" == "$BASH_EXIT_STATUS" ];
    then
	{
		let 	"i++"
		printf	"$GREEN%s""\033[1m[OK]\033[0m	${NORMAL}"$RESET
		printf 	"$CYAN\"$*\"	$RESET"
		sleep 0.3
	}
	else
	{
		printf "$RED%s""\033[1m[KO]\033[0m	${NORMAL}"$RESET
		printf "$CYAN\"$*\"	$RESET"
	}
	fi
	if [ "$MINISHELL" != "$BASH" ];
    then
    {
		echo 	"\n"
		echo 	$RED$SEPARATOR$RESET
		printf	$RED"	Minishell output  	$ $MINISHELL	$RESET\n"
		printf	$GREEN"	Bash output       	$ $BASH		$RESET\n"
		echo	$RED$SEPARATOR$RESET
		sleep 2
    }
	fi
	if [ "$MINISHELL_EXIT_STATUS" != "$BASH_EXIT_STATUS" ];
	then
	{
		echo
		printf	$RED"	Minishell exit status   => $RED$MINISHELL_EXIT_STATUS$RESET"
		echo
		printf	$GREEN"	Bash exit status        => $GREEN$BASH_EXIT_STATUS$RESET\n"
		sleep 2
	}
	fi
	sleep 0.2
	echo
}

function grade()
{
	total_test=$1
	percent=100
	idx=$i
	final_graade=$((idx * percent))
	grade=$((final_graade / total_test))
	if [ $grade -eq 100 ]
	then
		echo
		printf	"$GREEN%s""\033[1m		Outstanding move => [$grade/100\033[0m${NORMAL}"$RESET
		echo "\n"
	elif [ $grade -ge 80 ]
	then
		echo
		printf	"$GREEN%s""\033[1m		Doing well => [$grade/100]\033[0m${NORMAL}"$RESET
		echo "\n"
	else
		echo
		printf	"$RED%s""\033[1m		More efforts should be put into this => [$grade/100]\033[0m${NORMAL}"$RESET
		echo "\n"
	fi
	i=0
}


if  [[ $1 = "-h" ]];
then
{
	usage 
}
fi

if  [[ $1 = "-E" ]]; then
{
	printf "%s$ECHO\n"

	testing echo \'$\'
	testing echo $abc$
	testing eChO "\"$"\"	
	testing echo \'\'$\'\'
	testing echo "$_"
	testing echo 					ls
	testing echo '$1337' 
	testing echo "\$1337"
	testing echo "$0"
	testing echo "$0"
	testing 'e'"c"'h'o	"POMS"
	testing echo echo
	testing echo "			a"	
	testing eCHO ''	
	testing echo $	
	testing echo $ $
	testing echo	
	testing echo wow		
	testing echo Hello World	
	testing echo "Salam Alikoum"		
	testing echo Salam Alikoum		
	testing echo 'Salam Alikoum'		
	testing echo -n Salam Alikoum		
	testing echo -nn Salam Alikoum	
	testing echo -n -n -n Salam Alikoum
	testing echo "-n" Salam Alikoum	
	testing echo -n "-n" Salam Alikoum	
	testing echo "-nnnn" Salam Alikoum
	testing echo "-nnnn" -n Salam Alikoum
	testing echo "-n -n -n"-n Salam Alikoum		
	testing echo "-n '-n'" Salam Alikoum
	testing echo $string" | sed -e "s/^$prefix//" -e "s/$suffix$//
	testing echo $USER
	testing echo "$USER"		
	testing echo "'$USER'"		
	testing echo " '$USER' "	
	testing echo text"$USER"	
	testing echo text"'$USER'" ' $USER '	
	testing echo "Bensouda"   "$USER"    "$USER"
	testing echo '              $USER          '		
	testing echo               Bensouda "$USER"            "$USER"Bensouda	
	testing echo ''''''''''$USER''''''''''	
	testing echo """"""""$USER""""""""		
	testing echo $USER'$USER'Once a gunner always a gunner $USER COYG      $USER ''	
	testing echo $USER '' $USER $USER '' $USER '' $USER -n $USER	
	testing echo "$USER""$USER""$USER"		
	testing echo	guess whos back "$USER"
	testing echo '"'$USER'"'
	testing echo $USER " "		
	testing echo "$USER""Users/$USER/file""'$USER'"'$USER'
	testing echo "$USER$USER$USER"
	testing echo '$USER'"$USER"'$USER'		
	testing echo '"$USER"''$USER'"""$USER"	
	testing echo " $USER  "'$PWD'
	testing echo " $USER  \$ "'$PWD'		
	testing echo $USER=4		
	testing echo "${NOT_EXIT} POMS"		
	testing echo "${USER} POMS"		
	testing echo "$USER"		
	testing echo $USER=POMS 
	testing echo $USER
	testing echo $?	
	testing echo $PWD/file		
	testing echo "$PWD/file"	
	testing echo "Nothing" "Nothing$USER_ANA" ... "$USER.ANA"
	testing echo "Nothing" "Nothing$USER9WHO" ... "$USER-9"
	testing echo $PWD
	grade 67
}  
fi                            
if  [[ $1 = "-p" ]];
then
{
	printf "$PIPES"

	testing "ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls"
	testing "env | grep \"_=\""
	testing "env | grep \"SHLVL\""
	testing "echo oui | cat -e"
	testing "echo oui | echo non | echo P0MS | grep oui"
	testing "echo oui | echo non | echo P0MS | grep non"
	testing "echo oui | echo non | echo P0MS | grep P0MS"
	testing "cd .. | echo \"P0MS\""
	testing "cd .. | echo \"P0MS\""
	testing "cd / | echo \"P0MS\""
	testing "cd .. | pwd"
	testing "ifconfig | grep \":\""
	testing "ifconfig | grep nothing"
	testing "whoami | grep $USER"
	testing "whoami | grep $USER > tmp/file"
	testing "whoami | cat -e | cat -e > tmp/file		"
	testing "cat Makefile | grep "FLAGS"	"
	testing "cat Makefile | cat -e | cat -e"
	testing "cat Makefile | grep "FLAGS" | grep "FLAGS" | cat -e	"
	testing "export TEST=123 | cat -e | cat -e		"
	testing "unset TEST | cat -e	"
	testing "echo test | cat -e | cat -e | cat -e	"
	testing "whereis ls | cat -e | cat -e > test		"
	testing "echo test | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e"
	testing "ls -la | grep ".""
	testing "whereis grep > tmp/check" # Seg Fault use fsanitizer
	testing "whereis grep > /tmp/check" # Seg Fault use fsanitizer
	testing "ls -la > tmp/check"
	grade 27
}
fi

if  [[ $1 = "-x" ]]; then
{
	printf "%s$EXIT\n"

	testing exit 1337 1337
	testing exit -1337 -24
	testing exit 1337
	testing exit 1337 53 68
	testing exit 259
	testing exit -12030
	testing exit --1239312
	testing exit ++++1203020103
	testing exit +0
	testing exit ++++++0
	testing exit -----0
	testing exit azerty
	testing exit Benguerir
	testing exit a
	testing exit z
	testing exit "1"
	testing exit "2"
	testing exit "+102"
	testing exit "1230"
	testing exit "+++1230"
	testing exit "1"23
	testing exit "2"32"32"
	testing exit "'1337'"
	testing exit '1337'"1337"1337
	testing exit +'1337'"1337"1337
	testing exit -'1337'"1337"1337
	testing exit 922337203685477
	testing exit 922337203685477
	testing exit -4
	testing exit 1
	testing exit -1
	testing exit 1337
	testing exit 0
	testing exit --000
	testing exit +++++++000
	testing exit ++++3193912939
	testing exit ---31232103012
	testing exit "Oh Darling"
	testing exit echo
	testing exit cd ..
	testing exit 0 0
	testing exit 1337 1337 1337 1337 1337
	testing exit echo Bensouda
	testing exit exit exit exit exit exit
	grade 44
}
fi 

if [[ $1 = "-e" ]]; then
{
	printf "%s$EXPORT\n"

	testing "env | grep \"_="\"
	testing "export | grep \"SHLVL"\""
	testing "export | grep \"OLDPWD"\""
	testing "export | grep \"PWD"\"	
	testing export $?
	testing export TEST
	testing export TEST=		
	testing export TEST=123		
	testing export ___TEST=123	
	testing export --TEST=123	
	testing export ""=""		
	testing export ''=''		
	testing export "="="="		
	testing export '='='='		
	testing export TE\\\ST=100	
	testing export TE-ST=100	
	testing export -TEST=100	
	testing export TEST-=100	
	testing export _TEST=100	
	testing export TEST
	testing export ==========	
	testing export 1TEST=		
	testing export TEST
	testing export ""=""		
	testing export TES=T=""		
	testing export TE+S=T=""	
	testing export TES\\\\T=123
	testing export TES.T=123
	testing export TES\\\$T=123
	testing export TES\\\\T
	testing export TES.T=123
	testing export TES+T=123
	testing export TES=T=123
	testing export TES}T=123
	testing export TES{T=123
	testing export TES-T=123
	testing export -TEST=123
	testing export _TEST=123
	testing export TES_T=123
	testing export TEST_=123
	testing export TE*ST=123
	testing export TES#T=123
	testing export TES@T=123
	testing export TES!T=123
	testing export TES$?T=123
	testing export =============123
	testing export +++++++=123
	testing export ________=123
	testing export export
	testing export echo
	testing export pwd
	testing export cd
	testing export export
	testing export unset
	testing export sudo
	testing export TES^T=123
	testing export TES!T=123
	testing export TES\~T=123
	testing export TEST+=100
	grade 59
}
fi
if [[ $1 = "-u" ]]; then
{
	printf "%s$UNSET\n"

	testing unset doesntexist
	testing unset PWD
	testing unset PWD
	testing unset OLDPWD
	testing unset PATH
	testing unset PATH
	testing unset PATH
	testing unset TES\\\\T
	testing unset TES.T
	testing unset TES+T
	testing unset TES=T
	testing unset TES}T
	testing unset TES{T
	testing unset TES-T
	testing unset -TEST
	testing unset _TEST
	testing unset TES_T
	testing unset TEST_
	testing unset TE*ST
	testing unset TES#T
	testing unset TES@T
	testing unset TES!T
	testing unset TES$?T
	testing unset ============
	testing unset +++++++
	testing unset ________
	testing unset export
	testing unset echo
	testing unset pwd
	testing unset cd
	testing unset unset
	testing unset sudo
	testing unset TES^T
	testing unset TES!T
	testing unset TES\~T

	grade 35
}
fi

if [[ $1 = "-c" ]]; then
{
	printf "%s$CD\n"

	testing cd 							
	testing cd .. 						
	testing cd . 						
	testing cd /Users 					
	testing cd // 						
	testing cd '//' 					
	testing cd ////// 					
	testing cd ./././ 					
	testing cd / 						
	testing cd '/etc' 					
	testing cd '/var' 					
	testing cd "$PWD/prompt"			
	testing cd "doesntexist"			
	testing cd "doesntexist" 2>/dev/null
	testing cd ../../..
	testing cd ..						
	testing cd ..						
	testing cd ?						
	testing cd +						
	testing cd _						
	testing cd bark bark				
	testing cd '/'						
	testing cd $PWD/file_tests			
	testing cd ../$NONEXIT/Builtins

	grade 35
}
fi

if [[ $1 = "-a" ]]; then
{
	printf "%s$ECHO\n"

	testing echo \'$\'
	testing echo $abc$
	testing eChO "\"$"\"	
	testing echo \'\'$\'\'
	testing echo "$_"
	testing echo 					ls
	testing echo '$1337' 
	testing echo "\$1337"
	testing echo "$0"
	testing echo "$0"
	testing 'e'"c"'h'o	"POMS"
	testing echo echo
	testing echo "			a"	
	testing eCHO ''	
	testing echo $	
	testing echo $ $
	testing echo	
	testing echo wow		
	testing echo Hello World	
	testing echo "Salam Alikoum"		
	testing echo Salam Alikoum		
	testing echo 'Salam Alikoum'		
	testing echo -n Salam Alikoum		
	testing echo -nn Salam Alikoum	
	testing echo -n -n -n Salam Alikoum
	testing echo "-n" Salam Alikoum	
	testing echo -n "-n" Salam Alikoum	
	testing echo "-nnnn" Salam Alikoum
	testing echo "-nnnn" -n Salam Alikoum
	testing echo "-n -n -n"-n Salam Alikoum		
	testing echo "-n '-n'" Salam Alikoum
	testing echo $string" | sed -e "s/^$prefix//" -e "s/$suffix$//
	testing echo $USER
	testing echo "$USER"		
	testing echo "'$USER'"		
	testing echo " '$USER' "	
	testing echo text"$USER"	
	testing echo text"'$USER'" ' $USER '	
	testing echo "Bensouda"   "$USER"    "$USER"
	testing echo '              $USER          '		
	testing echo               Bensouda "$USER"            "$USER"Bensouda	
	testing echo ''''''''''$USER''''''''''	
	testing echo """"""""$USER""""""""		
	testing echo $USER'$USER'Once a gunner always a gunner $USER COYG      $USER ''	
	testing echo $USER '' $USER $USER '' $USER '' $USER -n $USER	
	testing echo "$USER""$USER""$USER"		
	testing echo	guess whos back "$USER"
	testing echo '"'$USER'"'
	testing echo $USER " "		
	testing echo "$USER""Users/$USER/file""'$USER'"'$USER'
	testing echo "$USER$USER$USER"
	testing echo '$USER'"$USER"'$USER'		
	testing echo '"$USER"''$USER'"""$USER"	
	testing echo " $USER  "'$PWD'
	testing echo " $USER  \$ "'$PWD'		
	testing echo $USER=4		
	testing echo "${NOT_EXIT} POMS"		
	testing echo "${USER} POMS"		
	testing echo "$USER"		
	testing echo $USER=POMS 
	testing echo $USER
	testing echo $?	
	testing echo $PWD/file		
	testing echo "$PWD/file"	
	testing echo "Nothing" "Nothing$USER_ANA" ... "$USER.ANA"
	testing echo "Nothing" "Nothing$USER9WHO" ... "$USER-9"
	testing echo $PWD


	printf "$PIPES"

	testing "ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls|ls"
	testing "env | grep \"_=\""
	testing "env | grep \"SHLVL\""
	testing "echo oui | cat -e"
	testing "echo oui | echo non | echo P0MS | grep oui"
	testing "echo oui | echo non | echo P0MS | grep non"
	testing "echo oui | echo non | echo P0MS | grep P0MS"
	testing "cd .. | echo \"P0MS\""
	testing "cd .. | echo \"P0MS\""
	testing "cd / | echo \"P0MS\""
	testing "cd .. | pwd"
	testing "ifconfig | grep \":\""
	testing "ifconfig | grep nothing"
	testing "whoami | grep $USER"
	testing "whoami | grep $USER > tmp/file"
	testing "whoami | cat -e | cat -e > tmp/file		"
	testing "cat Makefile | grep "FLAGS"	"
	testing "cat Makefile | cat -e | cat -e"
	testing "cat Makefile | grep "FLAGS" | grep "FLAGS" | cat -e	"
	testing "export TEST=123 | cat -e | cat -e		"
	testing "unset TEST | cat -e	"
	testing "echo test | cat -e | cat -e | cat -e	"
	testing "whereis ls | cat -e | cat -e > test		"
	testing "echo test | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e"
	testing "ls -la | grep ".""
	testing "whereis grep > tmp/check" # Seg Fault use fsanitizer
	testing "whereis grep > /tmp/check" # Seg Fault use fsanitizer
	testing "ls -la > tmp/check"

		printf "%s$EXIT\n"

	testing exit 1337 1337
	testing exit -1337 -24
	testing exit 1337
	testing exit 1337 53 68
	testing exit 259
	testing exit -12030
	testing exit --1239312
	testing exit ++++1203020103
	testing exit +0
	testing exit ++++++0
	testing exit -----0
	testing exit azerty
	testing exit Benguerir
	testing exit a
	testing exit z
	testing exit "1"
	testing exit "2"
	testing exit "+102"
	testing exit "1230"
	testing exit "+++1230"
	testing exit "1"23
	testing exit "2"32"32"
	testing exit "'1337'"
	testing exit '1337'"1337"1337
	testing exit +'1337'"1337"1337
	testing exit -'1337'"1337"1337
	testing exit 922337203685477
	testing exit 922337203685477
	testing exit -4
	testing exit 1
	testing exit -1
	testing exit 1337
	testing exit 0
	testing exit --000
	testing exit +++++++000
	testing exit ++++3193912939
	testing exit ---31232103012
	testing exit "Oh Darling"
	testing exit echo
	testing exit cd ..
	testing exit 0 0
	testing exit 1337 1337 1337 1337 1337
	testing exit echo Bensouda
	testing exit exit exit exit exit exit

		printf "%s$EXPORT\n"

	testing "env | grep \"_="\"
	testing "export | grep \"SHLVL"\""
	testing "export | grep \"OLDPWD"\""
	testing "export | grep \"PWD"\"	
	testing export $?
	testing export TEST
	testing export TEST=		
	testing export TEST=123		
	testing export ___TEST=123	
	testing export --TEST=123	
	testing export ""=""		
	testing export ''=''		
	testing export "="="="		
	testing export '='='='		
	testing export TE\\\ST=100	
	testing export TE-ST=100	
	testing export -TEST=100	
	testing export TEST-=100	
	testing export _TEST=100	
	testing export TEST
	testing export ==========	
	testing export 1TEST=		
	testing export TEST
	testing export ""=""		
	testing export TES=T=""		
	testing export TE+S=T=""	
	testing export TES\\\\T=123
	testing export TES.T=123
	testing export TES\\\$T=123
	testing export TES\\\\T
	testing export TES.T=123
	testing export TES+T=123
	testing export TES=T=123
	testing export TES}T=123
	testing export TES{T=123
	testing export TES-T=123
	testing export -TEST=123
	testing export _TEST=123
	testing export TES_T=123
	testing export TEST_=123
	testing export TE*ST=123
	testing export TES#T=123
	testing export TES@T=123
	testing export TES!T=123
	testing export TES$?T=123
	testing export =============123
	testing export +++++++=123
	testing export ________=123
	testing export export
	testing export echo
	testing export pwd
	testing export cd
	testing export export
	testing export unset
	testing export sudo
	testing export TES^T=123
	testing export TES!T=123
	testing export TES\~T=123
	testing export TEST+=100

	printf "%s$UNSET\n"

	testing unset doesntexist
	testing unset PWD
	testing unset PWD
	testing unset OLDPWD
	testing unset PATH
	testing unset PATH
	testing unset PATH
	testing unset TES\\\\T
	testing unset TES.T
	testing unset TES+T
	testing unset TES=T
	testing unset TES}T
	testing unset TES{T
	testing unset TES-T
	testing unset -TEST
	testing unset _TEST
	testing unset TES_T
	testing unset TEST_
	testing unset TE*ST
	testing unset TES#T
	testing unset TES@T
	testing unset TES!T
	testing unset TES$?T
	testing unset ============
	testing unset +++++++
	testing unset ________
	testing unset export
	testing unset echo
	testing unset pwd
	testing unset cd
	testing unset unset
	testing unset sudo
	testing unset TES^T
	testing unset TES!T
	testing unset TES\~T


	printf "%s$CD\n"

	testing cd 							
	testing cd .. 						
	testing cd . 						
	testing cd /Users 					
	testing cd // 						
	testing cd '//' 					
	testing cd ////// 					
	testing cd ./././ 					
	testing cd / 						
	testing cd '/etc' 					
	testing cd '/var' 					
	testing cd "$PWD/prompt"			
	testing cd "doesntexist"			
	testing cd "doesntexist" 2>/dev/null
	testing cd ../../..
	testing cd ..						
	testing cd ..						
	testing cd ?						
	testing cd +						
	testing cd _						
	testing cd bark bark				
	testing cd '/'						
	testing cd $PWD/file_tests			
	testing cd ../$NONEXIT/Builtins

	grade 257
}
fi