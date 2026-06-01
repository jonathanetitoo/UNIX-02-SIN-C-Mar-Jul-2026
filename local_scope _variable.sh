#!/bin/bash
 PUBLISHER="No Starch Press"
  print_name(){ 
    local name 
    name="Black Hat Bash" 
    echo "${name} by ${PUBLISHER}"
     } 
     print_name 
     echo "Variable ${name} will not be printed because it is a l ocal variable."

     #Global variables are those available to the entire program. But variables in bash can also be scoped so that they are accessible only from within a certain block of code. 
     #Como invoco la funcion en bash 
     #In Bash, a function is invoked simply by writing its name (optionally followed by arguments), without parentheses.
     #A local variable exists only inside the function or block where it is declared. Outside that scope, the variable does not exist.