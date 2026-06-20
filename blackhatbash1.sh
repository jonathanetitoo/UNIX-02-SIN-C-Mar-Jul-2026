#! /bin/bash 
set -x 
#bash --version 
env 
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df -human -readable
#all environment variables must be in uppercase.
 #bash -x blackhatbash1.sh
 #Give a lot of informotion 
  #bash -r blackhatbash1.sh
  #create a restricted bash shell
  chmod u+x blackhatbash1.sh 
  #change permissions 
  #./blackhatbash1.sh 
  #execute the scrypt 
  #bash -n blackhatbash1.sh 
  set +x
  #change to depuration mode 