#!/bin/sh
###################################################################
#Script Name	: Minishell Tester                                #
#Author       	: POMS 			                                  #
#Email         	: otoufah@student.1337.ma                         #
###################################################################


# Put your Minishell's path down here without the last slash '/'
MINISHELL_PATH=".."


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



function	help()
{
	echo '\033[1mNAME\033[0m'
	echo "\033[1;37m	Minishell Tester" "${NORMAL} -- A Simple Minishell tester Good Luck 🤞 "
	echo ""
	echo '\033[1mSYNOPSIS\033[0m'
	echo "\033[1;37m	./tester.sh  [-h|--help|a|E|e|p|u|x]"
	echo "${NORMAL}"
	echo '\033[1mDESCRIPTION\033[0m\n'
	echo "	${GREEN}[OK]${RESET} Means that your output and the exist_status are similar to the bash
	${RED}[KO]${RESET} Means one of your output or the exist_status or both are wrong to the bash\n"
	echo "${NORMAL} The following options are available:"
	echo "\033[1;37m	-h or --help	${NORMAL}Help"
	echo "\033[1;37m	-a		${NORMAL}All"
	echo "\033[1;37m	-c		${NORMAL}Cd"
	echo "\033[1;37m	-E		${NORMAL}Echo"
	echo "\033[1;37m	-e		${NORMAL}Export"
	echo "\033[1;37m	-p		${NORMAL}Pipes"
	echo "\033[1;37m	-u		${NORMAL}Unset"
	echo "\033[1;37m	-x		${NORMAL}Exit\n"
	# echo "\033[1;37m	-y		${NORMAL}Checklist (Page Correction)"
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
	# Based on the subject your program name is minishell
	# Simply checking if you have an executable file called minishell
	test -x $MINISHELL_PATH/minishell
	# Compiling
	if [ $? != 0 ];
	then
	{
		cd $MINISHELL_PATH ; make ; cd $OLDPWD
		i=1
		end=10
		for idx in $(seq ${i} ${end})
		do
			sleep 0.1
			ProgressBar ${idx} ${end}
		done
		echo "\n"
	}
	fi

	# Saving Minishell's ouput in a variable
	MINISHELL=$(echo $1	| $MINISHELL_PATH/minishell 2>&-)
	# Saving Minishell's exit status the sane for the reference our bash
	MINISHELL_EXIT_STATUS=$?
	BASH=$(echo $1 | bash 2>&-)
	BASH_EXIT_STATUS=$?

	# If your output and the exit status is similar to the bash so your good [OK]
	if [ "$MINISHELL" == "$BASH" ] && [ "$MINISHELL_EXIT_STATUS" == "$BASH_EXIT_STATUS" ];
    then
	{
		let 	"i++"
		printf	"$GREEN%s""\033[1m[OK]\033[0m	${NORMAL}"$RESET
		if [[ -n $2 ]];
		then
			printf 	"$CYAN   $2 $RESET	&&	$CYAN $1	 $RESET"
		else
			printf 	"$CYAN   $1	 $RESET"
		fi

		# echo "\n"
		# printf	$RESET"	Minishell output  	: $MINISHELL	$RESET\n"
		# printf	$RESET"	Bash output       	: $BASH		$RESET\n"
		# echo "\n"

	}
	# Else I'm telling you where the error was in the output or the exit status [KO]
	else
	{
		printf "$RED%s""\033[1m[KO]\033[0m	${NORMAL}"$RESET
		if [[ -n $2 ]];
		then
			printf 	"$CYAN   $2	 $RESET"
		else
			printf 	"$CYAN   $1	 $RESET"
		fi
	}
	fi
	if [ "$MINISHELL" != "$BASH" ];
    then
    {
		echo 	"\n"
		echo 	$RED$SEPARATOR$RESET
		printf	$RED"	Minishell output  	: $MINISHELL	$RESET\n"
		printf	$GREEN"	Bash output       	: $BASH		$RESET\n"
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

# At the end of each test, I'm grading your results based on the total tests 
function grade()
{
	total_test=$1
	percent=100
	j=$i
	final_graade=$((j * percent))
	grade=$((final_graade / total_test))
	if [ $grade -eq 100 ]
	then
		echo
		printf	"$GREEN%s""\033[1m		Outstanding move => [$grade/100]\033[0m${NORMAL}"$RESET
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


function checking_errors()
{
	MINISHELL=$(echo $1	| $MINISHELL_PATH/minishell 2>&1)
	MINISHELL_EXIT_STATUS=$?
	BASH=$(echo $1 | bash 2>&1)
	BASH_EXIT_STATUS=$?

	error=$2
	if [[ "$MINISHELL" == *"$error"* ]] && [[ "$BASH" == *"$error"* ]] && [[ "$MINISHELL_EXIT_STATUS" == "$BASH_EXIT_STATUS" ]] ;
		then
		{
			let 	"i++"
			printf	"$GREEN%s""\033[1m[OK]\033[0m	${NORMAL}"$RESET
			printf 	"$CYAN   $1	 $RESET"
		}
	else
		{
			printf "$RED%s""\033[1m[KO]\033[0m	${NORMAL}"$RESET
			printf 	"$CYAN   $1	 $RESET"
		}
		fi
		if [[ ! $MINISHELL =~ $error ]];
    	then
    	{
			echo 	"\n"
			echo 	$RED$SEPARATOR$RESET
			printf	$RED"	Minishell output  	: $MINISHELL	$RESET\n"
			printf	$GREEN"	Bash output       	: $BASH		$RESET\n"
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

if [[ $1 = "-h" ]] || [[ $1 == "--help" ]] || [[ $# -eq 0 ]];
then
{
	# Usage
	help 
}
fi

if  [[ $1 = "-E" ]]; then
{
	printf "%s$ECHO\n"

	testing "echo '$'"
	testing "echo $	"
	testing "echo $\"$\"$ '$'$'$'"
	testing "echo ''$''"
	testing "echo \$abc$"
	testing "eChO \"\"$\"\"	"
	testing "echo \"\$_\"" # As long as you return the last command your good to go
	testing "echo	ls"
	testing "echo '\$1337' "
	testing "echo \"\$1337\""
	testing "echo \"\$0\""
	testing "'e'\"c\"'h'o	\"POMS\""
	testing "echo echo"
	testing "echo \"\t a\""
	testing "eCHO ''	"
	testing "echo	"
	testing "echo '\$USER'''"
	testing "echo '\$USER'"
	testing "echo \"\$USER|'\$USER'\""
	testing "echo مرحبا بالعالم	"
	testing "echo \"Salam Alikoum\"		"
	testing "echo Salam Alikoum		"
	testing "echo 'Salam Alikoum'		"
	testing "echo -n Salam Alikoum		"
	testing "echo -nn Salam Alikoum	"
	testing "echo -n -n -n Salam Alikoum"
	testing "echo \"-n\" Salam Alikoum	"
	testing "echo -n \"-n\" Salam Alikoum	"
	testing "echo \"-nnnn\" Salam Alikoum"
	testing "echo \"-nnnn\" -n Salam Alikoum"
	testing "echo \"-n -n -n\"-n Salam Alikoum		"
	testing "echo \"-n '-n'\" Salam Alikoum"
	testing "echo \$string\" | sed -e \"s/^\$prefix//\" -e \"s/\$suffix$//"
	testing "echo \$USER"
	testing "echo \"\$USER\"		"
	testing "echo \"'\$USER'\"		"
	testing "echo \" '\$USER' \"	"
	testing "echo text\"\$USER\"	"
	testing "echo text\"'\$USER'\" ' \$USER '"
	testing "echo \"Bensouda\"   \"\$USER\"    \"\$USER\""
	testing "echo '              \$USER          '		"
	testing "echo               Bensouda \"\$USER\"            \"\$USER\"Rja F Allah	"
	testing "echo ''''''''''\$USER.ME''''''''''	"
	testing "echo \"\"\"\"\"\"\"\"\$USER\"\"\"\"\"\"\"\"		"
	testing "echo \$USER'\$USER'Once a gunner always a gunner \$USER COYG      \$USER ''	"
	testing "echo \$USER '' \$USER \$USER '' \$USER '' \$USER -n \$USER	"
	testing "echo \"\$USER\"\"\$USER\"\"\$USER\"		"
	testing "echo	guess whos back \"\$USER\""
	testing "echo '"'$USER'"'"
	testing "echo \$USER \" \"		"
	testing "echo \"\$USER\"\"Users/\$USER/file\"\"'\$USER'\"'\$USER'"
	testing "echo \"\$USER\$USER\$USER\""
	testing "echo '\$USER'\"\$USER\"'\$USER'		"
	testing "echo '\"\$USER\"''\$USER'\"\"\"\$USER\"	"
	testing "echo \" \$USER  \"'\$PWD'"
	testing "echo \" \$USER  \$ \"'\$PWD'		"
	testing "echo \$USER=4		"
	testing "echo \"\$NOT_EXIT POMS\"		"
	testing "echo \"\$USER POMS\"		"
	testing "echo \"\$USER\"		"
	testing "echo \$USER=POMS "
	testing "echo \$USER"
	testing "echo \$?	"
	testing "echo \$PWD/file		"
	testing "echo \"\$PWD/file\"	"
	testing "echo \"Nothing\" \"Nothing\$USER_ANA\" ... \"\$USER.ANA\""
	testing "echo \"Nothing\" \"Nothing\$USER9WHO\" ... \"\$USER-9\""
	testing "echo \$PWD\$PWD_FIL\$PWD.HERE"
	testing "echo \$\"USER\""
	testing "echo \$\"\""
	grade 70
}  
fi

if  [[ $1 = "-p" ]];
then
{
	printf \"$PIPES\"
	testing "\t ls\t-a"
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
	testing "whoami | grep \$USER"
	testing "whoami | grep \$USER > tmp/file"
	testing "whoami | cat -e | cat -e > tmp/file		"
	testing "cat Makefile | grep \"FLAGS\"	"
	testing "cat Makefile | cat -e | cat -e"
	testing "cat Makefile | grep \"FLAGS\" | grep \"FLAGS\" | cat -e	"
	testing "export TEST=123 | cat -e | cat -e		"
	testing "unset TEST | cat -e	"
	testing "echo test | cat -e | cat -e | cat -e	"
	testing "whereis ls | cat -e | cat -e > test		"
	testing "echo test | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e"
	testing "ls -la | grep ".""
	testing "whereis grep > tmp/check"
	testing "whereis grep > /tmp/check"
	testing "ls -la > tmp/check"
	grade 27
}
fi

if  [[ $1 = "-x" ]]; then
{
	printf "%s$EXIT\n"

	testing "exit 1337 1337"
	testing "exit -1337 -24"
	testing "exit 1337"
	testing "exit 1337 53 68"
	testing "exit 259"
	testing "exit -12030"
	testing "exit --1239312"
	testing "exit ++++1203020103"
	testing "exit +0"
	testing "exit ++++++0"
	testing "exit -----0"
	testing "exit azerty"
	testing "exit Benguerir"
	testing "exit a"
	testing "exit z"
	testing "exit \"1\""
	testing "exit \"2\""
	testing "exit \"+102\""
	testing "exit \"1230\""
	testing "exit \"+++1230\""
	testing "exit \"1\"23"
	testing "exit \"2\"32\"32\""
	testing "exit "'1337'""
	testing "exit '1337'\"1337\"1337"
	testing "exit +'1337'\"1337\"1337"
	testing "exit -'1337'\"1337\"1337"
	testing "exit 922337203685477"
	testing "exit 922337203685477"
	testing "exit -4"
	testing "exit 1"
	testing "exit -1"
	testing "exit 1337"
	testing "exit 0"
	testing "exit --000"
	testing "exit +++++++000"
	testing "exit ++++3193912939"
	testing "exit ---31232103012"
	testing "exit \"Oh Darling\""
	testing "exit echo"
	testing "exit cd .."
	testing "exit 0 0"
	testing "exit 1337 1337 1337 1337 1337"
	testing "exit echo Bensouda"cp
	testing "exit exit exit exit exit exit"

	grade 45
}
fi 

if [[ $1 = "-e" ]]; then
{
	printf "%s$EXPORT\n"

	export variable=randomtext
	testing "export | grep variable" "export variable=randomtext"


	export var_=0 var_=1 var_=2 var_=3
	testing "export | grep var_" "export var_=0 var_=1 var_=2 var_=3"

	export value=1 export value+=2 export value+=3 
	testing "export | grep value" "export value=1 export value+=2 export value+=3"

	testing "export | grep \"SHLVL"\"

	testing "export | grep \"PWD"\"

	export bensouda=
	testing "export | grep bensouda" "export bensouda="

	export Nothing
	testing "export | grep Nothing" "export Nothing"

	export export
	testing "export | grep export" "export export"

	export _____=abc
	testing "export | grep _____" "export _____=abc"

	export __ben_souda_=Herewego
	testing "export | grep __ben_souda_" "export __ben_souda_=Herewego"

	export Nothing=0=""
	testing "export | grep Nothing" "export Nothing=0="""

	export exitstatus$?=true
	testing "export | grep exitstatus" "export exitstatus\$\?=true"

	export val\ue=100
	testing "export | grep val\ue" "export val\\\lue=100"

	echo "Checking if you return the error as the bash does"

	checking_errors "export --TEST=123" "invalid option"

	checking_errors "export ""=""" "not a valid identifier"

	checking_errors "export ''=''		" "not a valid identifier"

	checking_errors "export "="="="		" "not a valid identifier"

	checking_errors "export '='='='		" "not a valid identifier"

	checking_errors "export TE-ST=100	" "not a valid identifier"

	checking_errors "export TEST-=100	" "not a valid identifier"

	checking_errors "export -TEST=100	" "invalid option"

	checking_errors "export ==========abc	" "not a valid identifier"

	checking_errors "export 1TEST=		" "not a valid identifier"

	checking_errors "export TE+S=T=""" "not a valid identifier"

	checking_errors "export me!me=123" "not a valid identifier"

	checking_errors "export TES.T=123" "not a valid identifier"

	checking_errors "export TES}T=123" "not a valid identifier"

	checking_errors "export TES-T=123" "not a valid identifier"

	checking_errors "export TE*ST=123" "not a valid identifier"

	checking_errors "export TES#T=123" "not a valid identifier"

	checking_errors "export TES@T=123" "not a valid identifier"

	checking_errors "export +++++++=123" "not a valid identifier"

	grade 32
}
fi

if [[ $1 = "-u" ]]; then
{
	printf "%s$UNSET\n"
	
	testing "export doesntexist=test \n unset doesntexist \n export | grep doesntexist"
	testing "unset PWD \n export | grep PWD"
	testing "unset PWD \n export | grep PWD"
	testing "unset OLDPWD \N export | grep OLDPWD"
	testing "unset PATH \n export | grep PATH"
	testing "unset PATH \n export | grep PATH"
	testing "unset PATH \n export | grep PATH"
	testing "export TES\\\\T=test \n unset TES\\\\T \n export | grep TEST\\\\T"
	testing "export _TEST=\"=\\| >> << | '' < > && ||\" \n unset _TEST \n export | grep _TEST"
	testing "export TES_T=test \n unset TES_T \n export | grep TES_T"
	testing "export TEST_=test \n unset TEST_ \n export | grep TEST_"
	testing "export ______=test unset ______ \n export | grep ______"
	testing "unset TERM_PROGRAM TERM SHELL TMPDIR Apple_PubSub_Socket_Render COLORFGBG TERM_PROGRAM_VERSION ZDOTDIR ORIGINAL_XDG_CURRENT_DESKTOP MallocNanoZone ITERM_PROFILE ITERM_SESSION_ID LC_TERMINAL  LC_TERMINAL_VERSION NVM_BIN NVM_CD_FLAGS NVM_DIR NVM_INC TERM_SESSION_ID ZSH USER COMMAND_MODE SSH_AUTH_SOCK __CF_USER_TEXT_ENCODING PAGER LSCOLORS PATH PWD LANG VSCODE_GIT_ASKPASS_EXTRA_ARGS XPC_FLAGS XPC_SERVICE_NAME VSCODE_INJECTION SHLVL HOME VSCODE_GIT_ASKPASS_MAIN LESS LOGNAME HOME_BREW VSCODE_GIT_IPC_HANDLE VSCODE_GIT_ASKPASS_NODE GIT_ASKPASS SECURITYSESSIONID COLORTERM \n unset USER \n export"
	testing "export TES\$?T \n unset TES\$?T \n export | grep TES\$?T"
	checking_errors "unset TES.T" "not a valid identifier"
	checking_errors "unset TES+T" "not a valid identifier"
	checking_errors "unset TES=T" "not a valid identifier"
	checking_errors "unset TES}T" "not a valid identifier"
	checking_errors "unset TES{T" "not a valid identifier"
	checking_errors "unset TES-T" "not a valid identifier"
	checking_errors "unset TE*ST" "not a valid identifier"
	checking_errors "unset TES#T" "not a valid identifier"
	checking_errors "unset TES@T" "not a valid identifier"
	checking_errors "unset -TEST" "not a valid identifier"
	checking_errors "unset ============" "not a valid identifier"
	checking_errors "unset +++++++" "not a valid identifier"
	checking_errors "unset TES^T" "not a valid identifier"
	checking_errors "unset TES!T" "not a valid identifier"
	checking_errors "unset TES\~T" "not a valid identifier"

	grade 29
}
fi

if [[ $1 = "-c" ]]; then
{
	printf "%s$CD\n"

	testing "cd ~ \n pwd"
	testing "cd .. \n pwd "
	testing "cd . \n pwd"
	testing "cd /Users 	\n pwd"
	testing "cd // 	\n pwd"
	testing "cd '//' \n pwd"
	testing "cd ////// \n pwd"
	testing "cd ./././ \n pwd"
	testing "cd / \n pwd"
	testing "cd '/etc' \n pwd"
	testing "cd '/var' \n pwd"
	testing "cd ../../.. \n pwd"
	testing "cd .. \n pwd"
	testing "cd .. \n pwd"
	testing "cd '/' \n pwd"
	testing "cd \"doesntexist\" 2>/dev/null \n pwd"
	checking_errors "cd \"\$PWD/prompt\"" "No such file or directory"
	checking_errors "cd \"doesntexist\"" "No such file or directory"
	checking_errors "cd ?" "No such file or directory"
	checking_errors "cd +" "No such file or directory"
	checking_errors "cd _" "No such file or directory"
	checking_errors "cd bark bark" "No such file or directory"
	checking_errors "cd \$PWD/file_tests" "No such file or directory"
	checking_errors "cd ../\$NONEXIT/Builtins" "No such file or directory"
	checking_errors "cd ../\$NONEXIT/Builtins" "No such file or directory"
	checking_errors "unset HOME \n cd" "HOME not set"
 
	grade 24
}
fi

if [[ $1 = "-a" ]]; then
{
	printf "%s$ECHO\n"

	testing "echo '$'"
	testing "echo $	"
	testing "echo $\"$\"$ '$'$'$'"
	testing "echo ''$''"
	testing "echo \$abc$"
	testing "eChO \"\"$\"\"	"
	testing "echo \"\$_\"" # As long as you return the last command your good to go
	testing "echo	ls"
	testing "echo '\$1337' "
	testing "echo \"\$1337\""
	testing "echo \"\$0\""
	testing "'e'\"c\"'h'o	\"POMS\""
	testing "echo echo"
	testing "echo \"\t a\""
	testing "eCHO ''	"
	testing "echo	"
	testing "echo '\$USER'''"
	testing "echo '\$USER'"
	testing "echo \"\$USER|'\$USER'\""
	testing "echo مرحبا بالعالم	"
	testing "echo \"Salam Alikoum\"		"
	testing "echo Salam Alikoum		"
	testing "echo 'Salam Alikoum'		"
	testing "echo -n Salam Alikoum		"
	testing "echo -nn Salam Alikoum	"
	testing "echo -n -n -n Salam Alikoum"
	testing "echo \"-n\" Salam Alikoum	"
	testing "echo -n \"-n\" Salam Alikoum	"
	testing "echo \"-nnnn\" Salam Alikoum"
	testing "echo \"-nnnn\" -n Salam Alikoum"
	testing "echo \"-n -n -n\"-n Salam Alikoum		"
	testing "echo \"-n '-n'\" Salam Alikoum"
	testing "echo \$string\" | sed -e \"s/^\$prefix//\" -e \"s/\$suffix$//"
	testing "echo \$USER"
	testing "echo \"\$USER\"		"
	testing "echo \"'\$USER'\"		"
	testing "echo \" '\$USER' \"	"
	testing "echo text\"\$USER\"	"
	testing "echo text\"'\$USER'\" ' \$USER '"
	testing "echo \"Bensouda\"   \"\$USER\"    \"\$USER\""
	testing "echo '              \$USER          '		"
	testing "echo               Bensouda \"\$USER\"            \"\$USER\"Rja F Allah	"
	testing "echo ''''''''''\$USER.ME''''''''''	"
	testing "echo \"\"\"\"\"\"\"\"\$USER\"\"\"\"\"\"\"\"		"
	testing "echo \$USER'\$USER'Once a gunner always a gunner \$USER COYG      \$USER ''	"
	testing "echo \$USER '' \$USER \$USER '' \$USER '' \$USER -n \$USER	"
	testing "echo \"\$USER\"\"\$USER\"\"\$USER\"		"
	testing "echo	guess whos back \"\$USER\""
	testing "echo '"'$USER'"'"
	testing "echo \$USER \" \"		"
	testing "echo \"\$USER\"\"Users/\$USER/file\"\"'\$USER'\"'\$USER'"
	testing "echo \"\$USER\$USER\$USER\""
	testing "echo '\$USER'\"\$USER\"'\$USER'		"
	testing "echo '\"\$USER\"''\$USER'\"\"\"\$USER\"	"
	testing "echo \" \$USER  \"'\$PWD'"
	testing "echo \" \$USER  \$ \"'\$PWD'		"
	testing "echo \$USER=4		"
	testing "echo \"\$NOT_EXIT POMS\"		"
	testing "echo \"\$USER POMS\"		"
	testing "echo \"\$USER\"		"
	testing "echo \$USER=POMS "
	testing "echo \$USER"
	testing "echo \$?	"
	testing "echo \$PWD/file		"
	testing "echo \"\$PWD/file\"	"
	testing "echo \"Nothing\" \"Nothing\$USER_ANA\" ... \"\$USER.ANA\""
	testing "echo \"Nothing\" \"Nothing\$USER9WHO\" ... \"\$USER-9\""
	testing "echo \$PWD\$PWD_FIL\$PWD.HERE"
	testing "echo \$\"USER\""
	testing "echo \$\"\""


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

	testing "exit 1337 1337"
	testing "exit -1337 -24"
	testing "exit 1337"
	testing "exit 1337 53 68"
	testing "exit 259"
	testing "exit -12030"
	testing "exit --1239312"
	testing "exit ++++1203020103"
	testing "exit +0"
	testing "exit ++++++0"
	testing "exit -----0"
	testing "exit azerty"
	testing "exit Benguerir"
	testing "exit a"
	testing "exit z"
	testing "exit \"1\""
	testing "exit \"2\""
	testing "exit \"+102\""
	testing "exit \"1230\""
	testing "exit \"+++1230\""
	testing "exit \"1\"23"
	testing "exit \"2\"32\"32\""
	testing "exit "'1337'""
	testing "exit '1337'\"1337\"1337"
	testing "exit +'1337'\"1337\"1337"
	testing "exit -'1337'\"1337\"1337"
	testing "exit 922337203685477"
	testing "exit 922337203685477"
	testing "exit -4"
	testing "exit 1"
	testing "exit -1"
	testing "exit 1337"
	testing "exit 0"
	testing "exit --000"
	testing "exit +++++++000"
	testing "exit ++++3193912939"
	testing "exit ---31232103012"
	testing "exit \"Oh Darling\""
	testing "exit echo"
	testing "exit cd .."
	testing "exit 0 0"
	testing "exit 1337 1337 1337 1337 1337"
	testing "exit echo Bensouda"
	testing "exit exit exit exit exit exit"

		printf "%s$EXPORT\n"

	export variable=randomtext
	testing "export | grep variable" "export variable=randomtext"


	export var_=0 var_=1 var_=2 var_=3
	testing "export | grep var_" "export var_=0 var_=1 var_=2 var_=3"

	export value=1 export value+=2 export value+=3 
	testing "export | grep value" "export value=1 export value+=2 export value+=3"

	testing "export | grep \"SHLVL"\"

	testing "export | grep \"PWD"\"

	export bensouda=
	testing "export | grep bensouda" "export bensouda="

	export Nothing
	testing "export | grep Nothing" "export Nothing"

	export export
	testing "export | grep export" "export export"

	export _____=abc
	testing "export | grep _____" "export _____=abc"

	export __ben_souda_=Herewego
	testing "export | grep __ben_souda_" "export __ben_souda_=Herewego"

	export Nothing=0=""
	testing "export | grep Nothing" "export Nothing=0="""

	export exitstatus$?=true
	testing "export | grep exitstatus" "export exitstatus\$\?=true"

	export val\ue=100
	testing "export | grep val\ue" "export val\\\lue=100"

	echo "Checking if you return the error as the bash does"

	checking_errors "export --TEST=123" "invalid option"

	checking_errors "export ""=""" "not a valid identifier"

	checking_errors "export ''=''		" "not a valid identifier"

	checking_errors "export "="="="		" "not a valid identifier"

	checking_errors "export '='='='		" "not a valid identifier"

	checking_errors "export TE-ST=100	" "not a valid identifier"

	checking_errors "export TEST-=100	" "not a valid identifier"

	checking_errors "export -TEST=100	" "invalid option"

	checking_errors "export ==========abc	" "not a valid identifier"

	checking_errors "export 1TEST=		" "not a valid identifier"

	checking_errors "export TE+S=T=""" "not a valid identifier"

	checking_errors "export me!me=123" "not a valid identifier"

	checking_errors "export TES.T=123" "not a valid identifier"

	checking_errors "export TES}T=123" "not a valid identifier"

	checking_errors "export TES-T=123" "not a valid identifier"

	checking_errors "export TE*ST=123" "not a valid identifier"

	checking_errors "export TES#T=123" "not a valid identifier"

	checking_errors "export TES@T=123" "not a valid identifier"

	checking_errors "export +++++++=123" "not a valid identifier"

	printf "%s$UNSET\n"

	testing "export doesntexist=test \n unset doesntexist \n export | grep doesntexist"
	testing "unset PWD \n export | grep PWD"
	testing "unset PWD \n export | grep PWD"
	testing "unset OLDPWD \N export | grep OLDPWD"
	testing "unset PATH \n export | grep PATH"
	testing "unset PATH \n export | grep PATH"
	testing "unset PATH \n export | grep PATH"
	testing "export TES\\\\T=test \n unset TES\\\\T \n export | grep TEST\\\\T"
	testing "export _TEST=\"=\\| >> << | '' < > && ||\" \n unset _TEST \n export | grep _TEST"
	testing "export TES_T=test \n unset TES_T \n export | grep TES_T"
	testing "export TEST_=test \n unset TEST_ \n export | grep TEST_"
	testing "export ______=test unset ______ \n export | grep ______"
	testing "unset TERM_PROGRAM TERM SHELL TMPDIR Apple_PubSub_Socket_Render COLORFGBG TERM_PROGRAM_VERSION ZDOTDIR ORIGINAL_XDG_CURRENT_DESKTOP MallocNanoZone ITERM_PROFILE ITERM_SESSION_ID LC_TERMINAL  LC_TERMINAL_VERSION NVM_BIN NVM_CD_FLAGS NVM_DIR NVM_INC TERM_SESSION_ID ZSH USER COMMAND_MODE SSH_AUTH_SOCK __CF_USER_TEXT_ENCODING PAGER LSCOLORS PATH PWD LANG VSCODE_GIT_ASKPASS_EXTRA_ARGS XPC_FLAGS XPC_SERVICE_NAME VSCODE_INJECTION SHLVL HOME VSCODE_GIT_ASKPASS_MAIN LESS LOGNAME HOME_BREW VSCODE_GIT_IPC_HANDLE VSCODE_GIT_ASKPASS_NODE GIT_ASKPASS SECURITYSESSIONID COLORTERM \n unset USER \n export"
	testing "export TES\$?T \n unset TES\$?T \n export | grep TES\$?T"
	checking_errors "unset TES.T" "not a valid identifier"
	checking_errors "unset TES+T" "not a valid identifier"
	checking_errors "unset TES=T" "not a valid identifier"
	checking_errors "unset TES}T" "not a valid identifier"
	checking_errors "unset TES{T" "not a valid identifier"
	checking_errors "unset TES-T" "not a valid identifier"
	checking_errors "unset TE*ST" "not a valid identifier"
	checking_errors "unset TES#T" "not a valid identifier"
	checking_errors "unset TES@T" "not a valid identifier"
	checking_errors "unset -TEST" "not a valid identifier"
	checking_errors "unset ============" "not a valid identifier"
	checking_errors "unset +++++++" "not a valid identifier"
	checking_errors "unset TES^T" "not a valid identifier"
	checking_errors "unset TES!T" "not a valid identifier"
	checking_errors "unset TES\~T" "not a valid identifier"


	printf "%s$CD\n"

	testing "cd ~ \n pwd"
	testing "cd .. \n pwd "
	testing "cd . \n pwd"
	testing "cd /Users 	\n pwd"
	testing "cd // 	\n pwd"
	testing "cd '//' \n pwd"
	testing "cd ////// \n pwd"
	testing "cd ./././ \n pwd"
	testing "cd / \n pwd"
	testing "cd '/etc' \n pwd"
	testing "cd '/var' \n pwd"
	testing "cd ../../.. \n pwd"
	testing "cd .. \n pwd"
	testing "cd .. \n pwd"
	testing "cd '/' \n pwd"
	testing "cd \"doesntexist\" 2>/dev/null \n pwd"
	checking_errors "cd \"\$PWD/prompt\"" "No such file or directory"
	checking_errors "cd \"doesntexist\"" "No such file or directory"
	checking_errors "cd ?" "No such file or directory"
	checking_errors "cd +" "No such file or directory"
	checking_errors "cd _" "No such file or directory"
	checking_errors "cd bark bark" "No such file or directory"
	checking_errors "cd \$PWD/file_tests" "No such file or directory"
	checking_errors "cd ../\$NONEXIT/Builtins" "No such file or directory"
	checking_errors "cd ../\$NONEXIT/Builtins" "No such file or directory"
	checking_errors "unset HOME \n cd" "HOME not set"

	grade 257
}
fi


if [[ $1 = "-y" ]]; then
{
	printf	"%s""\033[1mSimple Command\033[0m${NORMAL}\n\n"$RESET

	testing /bin/ls
	testing /usr/sbin/ac
	testing /usr/bin/ssh

	printf	"\n %s""\033[1mArguments\033[0m${NORMAL}\n\n"$RESET

	testing \"\"
	testing "                                                                                 l"
	testing echo "\t Poms"

	printf	"\n %s""\033[1mEcho\033[0m${NORMAL}\n\n"$RESET
	
	testing echo -nnnnn -nnnnn -nnnnn -nnnnn -nnnnn -nnnnn -nnnnn -nnnnn -nnnnn Salam Alikoum -nnnnn
	testing echo -n Salam Alikoum	
	testing echo \'\-n\'\  -n -n -n Salam Alikoum		


	printf	"\n %s""\033[1mExit\033[0m${NORMAL}\n\n"$RESET

	testing exit 1337 42
	testing exit -1-3-3-7
	testing exit exit exit +21 exit

	printf	"\n %s""\033[1mReturn value of a process\033[0m${NORMAL}\n\n"$RESET
	
	testing echo '>'
	testing expr $? + $?
	testing /bin/ls filethatdoesntexist

	printf	"\n %s""\033[1mDouble Quotes\033[0m${NORMAL}\n\n"$RESET

	testing echo '"cat     lol.c | cat > lol.c"' 
	testing echo '"cat     $FILE | cat > $USER"' 


	printf	"\n %s""\033[1mSingle Quotes\033[0m${NORMAL}\n\n"$RESET

	testing echo '"cat     lol.c | cat > lol.c"' 
	testing echo "\'\$USER\'"


	printf	"\n %s""\033[1mEnv\033[0m${NORMAL}\n\n"$RESET

	testing echo "env"
	testing echo "env" "|" "grep" \'"$NONEXIT"\'


	printf	"\n %s""\033[1mExport\033[0m${NORMAL}\n\n"$RESET


	printf	"\n %s""\033[1mUnset\033[0m${NORMAL}\n\n"$RESET


	printf	"\n %s""\033[1mCd\033[0m${NORMAL}\n\n"$RESET


	printf	"\n %s""\033[1mPwd\033[0m${NORMAL}\n\n"$RESET

}
fi
