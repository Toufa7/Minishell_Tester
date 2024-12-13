# Minishell_Tester

## NB: Works on macOS only, not Ubuntu. I'll work on it later, or you are welcome to contribute as well :)

A simple Minishell tester, it checks your output and your exit status are similar to the bash or not also it checks it compare your return errors else it returns where's your wrong see :

    ./tester.sh --help


$$\textcolor{Green}{\text{[OK]  }}{\text{Means that your output and the exit status are similar to the bash}}\textcolor{yellow}{\text{}}$$

$$\textcolor{Red}{\text{[KO]  }}{\text{Means one of your output or the exit status or both are wrong to the bash}}\textcolor{yellow}{\text{}}$$


How To Use a Minishell_Tester : 

:one: Put your path in here:

<img src="Ress/path.png" width="1000"/>


:two: Go to your Makefile and make sure to not insert any flags for readline only -lreadline :

<img src="Ress/readline_flags.png" width="1000"/>


:three: Check if there's any rl_replace_line and make sure to comment it :

<img src="Ress/rl_on.png" width="1000"/>

:four: If you print any of thoses please comment them and that's it:

<img src="Ress/exit.png" width="1000"/>




# Install :

```
git clone https://github.com/Toufa7/Minishell_Tester.git
cd Minishell_Tester
chmod +x tester.sh
./tester.sh -options
```

# Synopsis :

./tester.sh  [-h|--help|a|E|e|p|u|x]

* The following options are available:

    * h or --help    Help      
    * a              All       
    * c              Cd       
    * E              Echo       
    * e              Export      
    * p              Pipes       
    * u              Unset      
    * x              Exit


# A quick demonstration of how it works

<img src="Ress/demonstration.gif" width="600" height="700" />

🤝 Feel free to use it, contribute and add your crazy tests 



# Random

TODO: ✅❓
	--> execution
	[✅] expanding in herdoc
	[✅] cntrl_c in herdoc
	[✅] var without value should not displayed in env cmd
	[✅] error not displayed when error when giving dir as cmd
	[✅] update exit status
	[✅] Reset Exit status to 0 on success
	[✅] pwd in a removed dir and unseted path
	[✅] cat | ls : Try to press ok or redirections: Solution => Stop when the user hit enter: Solution simply Try Another Terminal
	[✅] Empty cmd should not display cmd not found
	[✅] do not add PWD and OLDPWD in mcd() Function
	[✅] All s_redirections in one array
	[✅] echo hello > file You should write the output in the file
	[✅] export > file.txt  == SEGV 
	[✅] cat Makefile > outfile.txt < input > outfile_error.txt no such file called input so you should stop a the error file : Solution => Exit in Child Process (if you found an error)
	[✅] < Makdbvbefile << ss cat : You should stop at the error : Solution => Exit in Child Process
	[✅] ambiguous redirect when the file redercs in NULL
	[❓] cat << ss --> Ctrl + C --> exit 130
	[❓] ctr \ -> quit --> exit 131 and CTRL+C retur status it's 1 not 0
	[❓] cd = Bad Address
	[❓] unset PATH && cmd : Expected = error msg and exit child process
	[❓] echo test > b | << lim | << lim2 creates b before finishing all heredocs: Expected = wait until all heredocs finished
	[❓] echo test > $"" : expected i will say it again please stop at the error the next time I will destroy your father's home iskawatcha
	[❓] non exist command : check the exit_status : it should be 127 not 126
	[❓] exit -1 || exit +1 should exit cleanly without any errors
	[❓] exit without args ==> you should return the last exit_status
	[❓] ignore cntr C in childs
	[❓]	$ export a : export a+=Sultan : env : you should assign 

	---> Parser
	[✅] if the delimiter has quotes don't expand
	[✅] $fghjm << ls --> cmd should be NUll and ls | "" --> cmd should be empty string : Solution => Simply check if the upcoming input length is 0
	[✅] $NOTEXIT ls --> it should run ls 
	[✅] cat << "'"
	[✅] echo ''"'"
	[✅] Using get_var_index to get variables from our env 
	[❓] $NONEXIT cmd 
	[❓] When the variables in case of > >> < 
	[❓] $NONEXIT	return it $UGD => $UGD 
	[✅] Mixing tabs with spaces: Done but check : 
	[❓]	export a="ls -la" 
	[❓]	echo $123
	[✅]	echo "$USER ' '  'imad ok"
	[❓] echo "$" =  expected = $
	[❓] echo $"test"$ : Expected = test$
	[❓] echo '$' : Expected = $
	[❓] env ls => not required
	[❓] pipes: check syntax errors
	*/
