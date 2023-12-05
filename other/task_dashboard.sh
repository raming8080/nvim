!/bin/bash

# create alias for tl command
alias tl='task -WOC -WOV list'

taskPriH() {
    while true; do
        clear
        task priority:H list 
        echo 'High Priority Projects'
        sleep 10
    done    
}

taskPriM() {
    while true; do
        clear
        task priority:M list 
        echo 'Medium Priority Projects'
        sleep 10
    done    
}
taskBurn() {
    while true; do
        clear
        task burndown.daily
        sleep 10
    done    
}

taskSum() {
    while true; do
        clear
        task summary
        echo 'Task Summary'
        sleep 10
    done
}

timeSum() {
    while true; do
        clear
        timew summary
        echo 'TimeW Summary'
        sleep 10
    done
}

timeW() {
    while true; do
        clear
        timew
        echo 'timew'
        sleep 5
    done
}

timeWSumWkId() {
    clear
    timew summary :week :ids
    echo 'Time Summary with IDs'
}

taskTL() {
    while true; do
        clear
        tl
        echo 'Task list -WOC -WOV'
        sleep 10
    done
}

taskWOV() {
    while true; do
        clear
        task +WOV list 
        echo 'Waiting on Vendor'
        sleep 5
    done
}

taskWOC() {
    while true; do
        clear
        task +WOC list 
        echo 'waiting on cutstomer'
        sleep 5
    done
}
help() {
    echo "Available Commands:"
    echo "-------------------"

    # Loop through all functions in the script
    for func in $(declare -F | cut -d i ' ' -f 3); do
        echo "$func"
    done
}

# Check if a function name is passed as a parameter
if [ $# -eq 1 ]; then
    case $1 in
        taskPriH) taskPriH;;
        taskPriM) taskPriM;;
        taskBurn) taskBurn;;
        taskSum) taskSum ;;
        timeSum) timeSum ;;
        timeWSumWkId) timeWSumWkId ;;
        timeW) timeW;;
        taskWOV) taskWOV ;;
        taskWOC) taskWOC ;;
        taskTL) taskTL;;
        help) help;;
        *) echo "Invalid function name" ;;
    esac
fi

#In this updated script, you define the `taskSum` and `timeSum` functions as per your requirements. The script then checks for a command-line parameter, and based on that parameter, it calls the corresponding function.

#For example, running `./taskDash.sh taskSum` will execute the `taskSum` function, and executing `./taskDash.sh timeSum` will execute the `timeSum` function.
