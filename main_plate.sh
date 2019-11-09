# MY BASH SHELL PROGRAMMING BOILER TEMPLATE WITH VARIABLE OPTIONS
#COMMENTS CONTAINING BARE-METAL NOTES ON SUGGESTED LAYOUT
#USES: comments, functions, variables, arguements, command substitution, 
#USES: 
#USAGE: functions should create script layout into feature usage of commands.
#USAGE: list of powerful and wildly used commands should be in a legend.

   # Redirect All New Script Output To SysLog For Debugging With logger cmd
   exec 1> > (logger -s -t $(basename$0)) 2>&1



# BASH SCRIPT SELECT STARTUP 

   symlink ln script ./bashful/script-name



# SCRIPT VARIABLES CREATION


###.                 date command in a human readable var
    current_date=$(date)



###.                 concantinging variables in pattern 
      wh_domain='http://www.whitehouse.gov'
      wh_path='/briefing-room/press-briefings?page='
       wh_base_url="$wh_domain$wh_path"
  curl -so 10.html "$wh_base_url=10"
  curl -so 20.html "$wh_base_url=20"
  curl -so 30.html "$wh_base_url=30"

###.                   command execute from variable
COMMAND=(/usr/bin/exiftool "$PATH_NAME")
"${COMMAND[@]}"



# COMMAND COMPLETION
  complete -w 
  ./etc/bash_completion



# SCRIPT STORAGE 
* Yourself only - $HOME/bin 
* You and other local users - /usr/local/bin
* root only - /usr/local/sbin



# MENU CREATION WITH SELECT COMMAND

    createmenu () {
    select selected_option; do # in "$@" is the default
        if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $(($#)) ]; then
            break;
        else
            echo "Please make a vaild selection (1-$#)."
        fi
    done
}

declare -a drives=();
# Load Menu by Line of Returned Command
mapfile -t drives < <(lsblk --nodeps -o name,serial,size | grep "sd");
# Display Menu and Prompt for Input
echo "Available Drives (Please select one):";
createmenu "${drives[@]}"
# Split Selected Option into Array and Display
drive=($(echo "${selected_option}"));
echo "Drive Id: ${drive[0]}";
echo "Serial Number: ${drive[1]}";



    echo “do you want to create?” select=y/n



# ALIAS CREATION USAGE AND CHAINING

##    alias longCmd=‘long command string one liners goes here’


# TEXT MANIPULATION MAGIC


# FUNCTION CREATION AND DECISION MAKING


# DYNAMIC SCRIPT HOOKS - SYMLINK CREATION 


# RUN A SCRIPT AS AN INIT DEAMON OR SERVICE


# REVERSE ENGINEERING BASH SCRIPTS FOR USES


# SCRIPT LOGGING FOR DEBUGGING SCRIPT ERRORS



##############################################################


          ## COMMAND LIST USAGE
echo read for while do loop done if else command compare combine xargs exec alias logr logger 

          ## FEATURES LIST
command completion, command suggestion, script startup select, command chaining, dynamic logging, text manipulation, 

          ## LOGICAL OPERATORS
# $ & && | || * ++ == ; 

##############################################################

## RULESETS OF SCRIPT CREATION AND COMPLETION
# Define everything as an executable program script using sh bash or universally env
#!/bin/{ sh, bash, env, }

      #       This function creates feature one of the program

feature1() {
     # feature command 1 
  }

       #      This function shows a comment example
comment() {

}

       #      This function shows a variable example
variable() {

}

arguements() (

}

text-manipulation() {

}

command_sub() {
   echo “Today’s date is ($date)”
}

       #.   This function is meant to show for loop examples
for_loops() {
    for P in {1..3} ; do wget -q http://exemple.com/page${P}.php ; done
    for P in {1..3); do curl http://example.com$(P}.php; done
    for I in $USER do mkdir fordir; done
    for I in $VARS; echo
}

while_loops() {
   #.          example
    while [ condition ]
do
    commands
done

}

logging() {
  If [-d $logfile]; then
  touch /var/log/$logfile
  logger 2>&1 | tee $logfile
  logr 
}

############ START SCRIPT WRITING DYNAMIC UASGE##########
### Use: Functions


>> logging
EXIT
