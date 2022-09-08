# Minishell_Tester

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
