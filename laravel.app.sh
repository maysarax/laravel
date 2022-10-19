#!/bin/bash
# this is a goog step by step tutorial on how to run laravel command in ubuntu:
# https://www.technhit.in/setup-laravel-on-ubuntu-with-apache/
# Script Created by https://www.webune.com
clear
APPNAME_DEFAULT="api"
read -p "Enter The App you want to Create: [$APPNAME_DEFAULT] " APPNAME
if [[ $APPNAME == "" ]]
then
    APPNAME=$APPNAME_DEFAULT
    set -e
fi
#https://stackoverflow.com/questions/59838/how-can-i-check-if-a-directory-exists-in-a-bash-shell-script
# check if directory exists
if [ -d "$APPNAME" ]; then
  ORVERIDE_DEFAULT="no"
  read -p "This app already exists, do you want to overide it? yes/no [$ORVERIDE_DEFAULT] " ORVERIDE
  if [[ $ORVERIDE == "yes" ]]; then
    rm -rf $APPNAME
    set -e
    echo "Rebuilding App $APPNAME"      
  else
        echo "$APPNAME was not removed."
        exit
        set -e
  fi
else 
    echo "[OK] APP DOES NOT EXIST. WILL CREATE NOW."
fi
echo "Creating APP: $APPNAME"
laravel new $APPNAME
set -e
cd $APPNAME
set -e
git init
set -e
git add .
set -e
git commit -m "Auto Initial"
set -e
echo "GIT commit created"
code .
echo "Opening in Code and browser with localhost:8000"
xdg-open http://localhost:8000
set -e
# ALWAYS PUT THIS AT THE END OF THE SCRIPT
php artisan serve
set -e
